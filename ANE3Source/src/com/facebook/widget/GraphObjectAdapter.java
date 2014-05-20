// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.facebook.FacebookException;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageResponse;
import com.facebook.model.GraphObject;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

// Referenced classes of package com.facebook.widget:
//            GraphObjectCursor

class GraphObjectAdapter extends BaseAdapter
    implements SectionIndexer
{
    public static interface DataNeededListener
    {

        public abstract void onDataNeeded();
    }

    static interface Filter
    {

        public abstract boolean includeItem(Object obj);
    }

    private static interface ItemPicture
        extends GraphObject
    {

        public abstract ItemPictureData getData();
    }

    private static interface ItemPictureData
        extends GraphObject
    {

        public abstract String getUrl();
    }

    public static interface OnErrorListener
    {

        public abstract void onError(GraphObjectAdapter graphobjectadapter, FacebookException facebookexception);
    }

    public static class SectionAndItem
    {

        public GraphObject graphObject;
        public String sectionKey;

        public Type getType()
        {
            if (sectionKey == null)
            {
                return Type.ACTIVITY_CIRCLE;
            }
            if (graphObject == null)
            {
                return Type.SECTION_HEADER;
            } else
            {
                return Type.GRAPH_OBJECT;
            }
        }

        public SectionAndItem(String s, GraphObject graphobject)
        {
            sectionKey = s;
            graphObject = graphobject;
        }
    }

    public static final class SectionAndItem.Type extends Enum
    {

        public static final SectionAndItem.Type ACTIVITY_CIRCLE;
        private static final SectionAndItem.Type ENUM$VALUES[];
        public static final SectionAndItem.Type GRAPH_OBJECT;
        public static final SectionAndItem.Type SECTION_HEADER;

        public static SectionAndItem.Type valueOf(String s)
        {
            return (SectionAndItem.Type)Enum.valueOf(com/facebook/widget/GraphObjectAdapter$SectionAndItem$Type, s);
        }

        public static SectionAndItem.Type[] values()
        {
            SectionAndItem.Type atype[] = ENUM$VALUES;
            int i = atype.length;
            SectionAndItem.Type atype1[] = new SectionAndItem.Type[i];
            System.arraycopy(atype, 0, atype1, 0, i);
            return atype1;
        }

        static 
        {
            GRAPH_OBJECT = new SectionAndItem.Type("GRAPH_OBJECT", 0);
            SECTION_HEADER = new SectionAndItem.Type("SECTION_HEADER", 1);
            ACTIVITY_CIRCLE = new SectionAndItem.Type("ACTIVITY_CIRCLE", 2);
            SectionAndItem.Type atype[] = new SectionAndItem.Type[3];
            atype[0] = GRAPH_OBJECT;
            atype[1] = SECTION_HEADER;
            atype[2] = ACTIVITY_CIRCLE;
            ENUM$VALUES = atype;
        }

        private SectionAndItem.Type(String s, int i)
        {
            super(s, i);
        }
    }


    private static int $SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type[];
    static final boolean $assertionsDisabled = false;
    private static final int ACTIVITY_CIRCLE_VIEW_TYPE = 2;
    private static final int DISPLAY_SECTIONS_THRESHOLD = 1;
    private static final int GRAPH_OBJECT_VIEW_TYPE = 1;
    private static final int HEADER_VIEW_TYPE = 0;
    private static final String ID = "id";
    private static final int MAX_PREFETCHED_PICTURES = 20;
    private static final String NAME = "name";
    private static final String PICTURE = "picture";
    private Context context;
    private GraphObjectCursor cursor;
    private DataNeededListener dataNeededListener;
    private boolean displaySections;
    private Filter filter;
    private Map graphObjectsById;
    private Map graphObjectsBySection;
    private String groupByField;
    private final LayoutInflater inflater;
    private OnErrorListener onErrorListener;
    private final Map pendingRequests = new HashMap();
    private Map prefetchedPictureCache;
    private ArrayList prefetchedProfilePictureIds;
    private List sectionKeys;
    private boolean showCheckbox;
    private boolean showPicture;
    private List sortFields;

    static int[] $SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type()
    {
        int ai[] = $SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[SectionAndItem.Type.values().length];
        try
        {
            ai1[SectionAndItem.Type.ACTIVITY_CIRCLE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[SectionAndItem.Type.GRAPH_OBJECT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[SectionAndItem.Type.SECTION_HEADER.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        $SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type = ai1;
        return ai1;
    }

    public GraphObjectAdapter(Context context1)
    {
        sectionKeys = new ArrayList();
        graphObjectsBySection = new HashMap();
        graphObjectsById = new HashMap();
        prefetchedPictureCache = new HashMap();
        prefetchedProfilePictureIds = new ArrayList();
        context = context1;
        inflater = LayoutInflater.from(context1);
    }

    private void callOnErrorListener(Exception exception)
    {
        if (onErrorListener != null)
        {
            if (!(exception instanceof FacebookException))
            {
                exception = new FacebookException(exception);
            }
            onErrorListener.onError(this, (FacebookException)exception);
        }
    }

    private static int compareGraphObjects(GraphObject graphobject, GraphObject graphobject1, Collection collection, Collator collator)
    {
        Iterator iterator = collection.iterator();
        String s1;
        String s2;
label0:
        do
        {
            int i;
            do
            {
                if (!iterator.hasNext())
                {
                    return 0;
                }
                String s = (String)iterator.next();
                s1 = (String)graphobject.getProperty(s);
                s2 = (String)graphobject1.getProperty(s);
                if (s1 == null || s2 == null)
                {
                    continue label0;
                }
                i = collator.compare(s1, s2);
            } while (i == 0);
            return i;
        } while (s1 == null && s2 == null);
        return s1 != null ? 1 : -1;
    }

    private void downloadProfilePicture(final String profileId, URI uri, final ImageView imageView)
    {
        if (uri != null)
        {
            boolean flag;
            if (imageView == null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag || !uri.equals(imageView.getTag()))
            {
                if (!flag)
                {
                    imageView.setTag(profileId);
                    imageView.setImageResource(getDefaultPicture());
                }
                ImageRequest imagerequest = (new com.facebook.internal.ImageRequest.Builder(context.getApplicationContext(), uri)).setCallerTag(this).setCallback(new com.facebook.internal.ImageRequest.Callback() {

                    final GraphObjectAdapter this$0;
                    private final ImageView val$imageView;
                    private final String val$profileId;

                    public void onCompleted(ImageResponse imageresponse)
                    {
                        processImageResponse(imageresponse, profileId, imageView);
                    }

            
            {
                this$0 = GraphObjectAdapter.this;
                profileId = s;
                imageView = imageview;
                super();
            }
                }).build();
                pendingRequests.put(profileId, imagerequest);
                ImageDownloader.downloadAsync(imagerequest);
                return;
            }
        }
    }

    private View getActivityCircleView(View view, ViewGroup viewgroup)
    {
        View view1 = view;
        if (view1 == null)
        {
            view1 = inflater.inflate(com.facebook.android.R.layout.com_facebook_picker_activity_circle_row, null);
        }
        ((ProgressBar)view1.findViewById(com.facebook.android.R.id.com_facebook_picker_row_activity_circle)).setVisibility(0);
        return view1;
    }

    private void processImageResponse(ImageResponse imageresponse, String s, ImageView imageview)
    {
        pendingRequests.remove(s);
        if (imageresponse.getError() != null)
        {
            callOnErrorListener(imageresponse.getError());
        }
        if (imageview == null)
        {
            if (imageresponse.getBitmap() != null)
            {
                if (prefetchedPictureCache.size() >= 20)
                {
                    String s1 = (String)prefetchedProfilePictureIds.remove(0);
                    prefetchedPictureCache.remove(s1);
                }
                prefetchedPictureCache.put(s, imageresponse);
            }
        } else
        if (s.equals(imageview.getTag()))
        {
            Exception exception = imageresponse.getError();
            android.graphics.Bitmap bitmap = imageresponse.getBitmap();
            if (exception == null && bitmap != null)
            {
                imageview.setImageBitmap(bitmap);
                imageview.setTag(imageresponse.getRequest().getImageUri());
                return;
            }
        }
    }

    private void rebuildSections()
    {
        final Collator collator;
        Iterator iterator;
        sectionKeys = new ArrayList();
        graphObjectsBySection = new HashMap();
        graphObjectsById = new HashMap();
        displaySections = false;
        if (cursor == null || cursor.getCount() == 0)
        {
            return;
        }
        int i = 0;
        cursor.moveToFirst();
        do
        {
            GraphObject graphobject = cursor.getGraphObject();
            if (filterIncludesItem(graphobject))
            {
                i++;
                String s = getSectionKeyOfGraphObject(graphobject);
                if (!graphObjectsBySection.containsKey(s))
                {
                    sectionKeys.add(s);
                    graphObjectsBySection.put(s, new ArrayList());
                }
                ((List)graphObjectsBySection.get(s)).add(graphobject);
                graphObjectsById.put(getIdOfGraphObject(graphobject), graphobject);
            }
        } while (cursor.moveToNext());
        if (sortFields == null) goto _L2; else goto _L1
_L1:
        collator = Collator.getInstance();
        iterator = graphObjectsBySection.values().iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        Collections.sort(sectionKeys, Collator.getInstance());
        boolean flag;
        if (sectionKeys.size() > 1 && i > 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        displaySections = flag;
        return;
_L3:
        Collections.sort((List)iterator.next(), new Comparator() {

            final GraphObjectAdapter this$0;
            private final Collator val$collator;

            public int compare(GraphObject graphobject1, GraphObject graphobject2)
            {
                return GraphObjectAdapter.compareGraphObjects(graphobject1, graphobject2, sortFields, collator);
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((GraphObject)obj, (GraphObject)obj1);
            }

            
            {
                this$0 = GraphObjectAdapter.this;
                collator = collator1;
                super();
            }
        });
        if (true) goto _L5; else goto _L4
_L4:
    }

    private boolean shouldShowActivityCircleCell()
    {
        return cursor != null && cursor.areMoreObjectsAvailable() && dataNeededListener != null && !isEmpty();
    }

    public boolean areAllItemsEnabled()
    {
        return displaySections;
    }

    public boolean changeCursor(GraphObjectCursor graphobjectcursor)
    {
        if (cursor == graphobjectcursor)
        {
            return false;
        }
        if (cursor != null)
        {
            cursor.close();
        }
        cursor = graphobjectcursor;
        rebuildAndNotify();
        return true;
    }

    protected View createGraphObjectView(GraphObject graphobject)
    {
        View view = inflater.inflate(getGraphObjectRowLayoutId(graphobject), null);
        ViewStub viewstub = (ViewStub)view.findViewById(com.facebook.android.R.id.com_facebook_picker_checkbox_stub);
        ViewStub viewstub1;
        if (viewstub != null)
        {
            if (!getShowCheckbox())
            {
                viewstub.setVisibility(8);
            } else
            {
                updateCheckboxState((CheckBox)viewstub.inflate(), false);
            }
        }
        viewstub1 = (ViewStub)view.findViewById(com.facebook.android.R.id.com_facebook_picker_profile_pic_stub);
        if (!getShowPicture())
        {
            viewstub1.setVisibility(8);
            return view;
        } else
        {
            ((ImageView)viewstub1.inflate()).setVisibility(0);
            return view;
        }
    }

    boolean filterIncludesItem(GraphObject graphobject)
    {
        return filter == null || filter.includeItem(graphobject);
    }

    public int getCount()
    {
        if (sectionKeys.size() == 0)
        {
            return 0;
        }
        int i;
        Iterator iterator;
        if (displaySections)
        {
            i = sectionKeys.size();
        } else
        {
            i = 0;
        }
        iterator = graphObjectsBySection.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if (shouldShowActivityCircleCell())
                {
                    i++;
                }
                return i;
            }
            i += ((List)iterator.next()).size();
        } while (true);
    }

    public GraphObjectCursor getCursor()
    {
        return cursor;
    }

    public DataNeededListener getDataNeededListener()
    {
        return dataNeededListener;
    }

    protected int getDefaultPicture()
    {
        return com.facebook.android.R.drawable.com_facebook_profile_default_icon;
    }

    Filter getFilter()
    {
        return filter;
    }

    protected int getGraphObjectRowLayoutId(GraphObject graphobject)
    {
        return com.facebook.android.R.layout.com_facebook_picker_list_row;
    }

    protected View getGraphObjectView(GraphObject graphobject, View view, ViewGroup viewgroup)
    {
        View view1 = view;
        if (view1 == null)
        {
            view1 = createGraphObjectView(graphobject);
        }
        populateGraphObjectView(view1, graphobject);
        return view1;
    }

    public List getGraphObjectsById(Collection collection)
    {
        HashSet hashset = new HashSet();
        hashset.addAll(collection);
        ArrayList arraylist = new ArrayList(hashset.size());
        Iterator iterator = hashset.iterator();
        do
        {
            GraphObject graphobject;
            do
            {
                if (!iterator.hasNext())
                {
                    return arraylist;
                }
                String s = (String)iterator.next();
                graphobject = (GraphObject)graphObjectsById.get(s);
            } while (graphobject == null);
            arraylist.add(graphobject);
        } while (true);
    }

    public String getGroupByField()
    {
        return groupByField;
    }

    String getIdOfGraphObject(GraphObject graphobject)
    {
        if (graphobject.asMap().containsKey("id"))
        {
            Object obj = graphobject.getProperty("id");
            if (obj instanceof String)
            {
                return (String)obj;
            }
        }
        throw new FacebookException("Received an object without an ID.");
    }

    public Object getItem(int i)
    {
        SectionAndItem sectionanditem = getSectionAndItem(i);
        if (sectionanditem.getType() == SectionAndItem.Type.GRAPH_OBJECT)
        {
            return sectionanditem.graphObject;
        } else
        {
            return null;
        }
    }

    public long getItemId(int i)
    {
        SectionAndItem sectionanditem = getSectionAndItem(i);
        if (sectionanditem != null && sectionanditem.graphObject != null)
        {
            String s = getIdOfGraphObject(sectionanditem.graphObject);
            if (s != null)
            {
                return Long.parseLong(s);
            }
        }
        return 0L;
    }

    public int getItemViewType(int i)
    {
        SectionAndItem sectionanditem = getSectionAndItem(i);
        switch ($SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type()[sectionanditem.getType().ordinal()])
        {
        default:
            throw new FacebookException("Unexpected type of section and item.");

        case 2: // '\002'
            return 0;

        case 1: // '\001'
            return 1;

        case 3: // '\003'
            return 2;
        }
    }

    public OnErrorListener getOnErrorListener()
    {
        return onErrorListener;
    }

    String getPictureFieldSpecifier()
    {
        ImageView imageview = (ImageView)createGraphObjectView(null).findViewById(com.facebook.android.R.id.com_facebook_picker_image);
        if (imageview == null)
        {
            return null;
        } else
        {
            android.view.ViewGroup.LayoutParams layoutparams = imageview.getLayoutParams();
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(layoutparams.height);
            aobj[1] = Integer.valueOf(layoutparams.width);
            return String.format("picture.height(%d).width(%d)", aobj);
        }
    }

    protected URI getPictureUriOfGraphObject(GraphObject graphobject)
    {
        Object obj = graphobject.getProperty("picture");
        if (!(obj instanceof String)) goto _L2; else goto _L1
_L1:
        String s = (String)obj;
_L4:
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag;
        ItemPictureData itempicturedata;
        URI uri;
        try
        {
            uri = new URI(s);
        }
        catch (URISyntaxException urisyntaxexception)
        {
            break; /* Loop/switch isn't completed */
        }
        return uri;
_L2:
        flag = obj instanceof JSONObject;
        s = null;
        if (flag)
        {
            itempicturedata = ((ItemPicture)com.facebook.model.GraphObject.Factory.create((JSONObject)obj).cast(com/facebook/widget/GraphObjectAdapter$ItemPicture)).getData();
            s = null;
            if (itempicturedata != null)
            {
                s = itempicturedata.getUrl();
            }
        }
        continue; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }

    int getPosition(String s, GraphObject graphobject)
    {
        int i;
        Iterator iterator;
        i = 0;
        iterator = sectionKeys.iterator();
_L5:
        boolean flag;
        boolean flag1;
        flag = iterator.hasNext();
        flag1 = false;
        if (flag) goto _L2; else goto _L1
_L1:
        if (!flag1)
        {
            return -1;
        }
        break; /* Loop/switch isn't completed */
_L2:
        String s1;
        s1 = (String)iterator.next();
        if (displaySections)
        {
            i++;
        }
        if (!s1.equals(s))
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = true;
        if (true) goto _L1; else goto _L3
_L3:
        i += ((ArrayList)graphObjectsBySection.get(s1)).size();
        if (true) goto _L5; else goto _L4
_L4:
        if (graphobject == null)
        {
            int j;
            if (displaySections)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            return i - j;
        }
        Iterator iterator1 = ((ArrayList)graphObjectsBySection.get(s)).iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                return -1;
            }
            if (com.facebook.model.GraphObject.Factory.hasSameId((GraphObject)iterator1.next(), graphobject))
            {
                return i;
            }
            i++;
        } while (true);
    }

    public int getPositionForSection(int i)
    {
        if (displaySections)
        {
            int j = Math.max(0, Math.min(i, sectionKeys.size() - 1));
            if (j < sectionKeys.size())
            {
                return getPosition((String)sectionKeys.get(j), null);
            }
        }
        return 0;
    }

    SectionAndItem getSectionAndItem(int i)
    {
        if (sectionKeys.size() == 0)
        {
            return null;
        }
        if (displaySections) goto _L2; else goto _L1
_L1:
        String s;
        List list1;
        s = (String)sectionKeys.get(0);
        list1 = (List)graphObjectsBySection.get(s);
        if (i < 0 || i >= list1.size()) goto _L4; else goto _L3
_L3:
        GraphObject graphobject = (GraphObject)((ArrayList)graphObjectsBySection.get(s)).get(i);
_L5:
        Iterator iterator;
        int j;
        List list;
        if (s != null)
        {
            return new SectionAndItem(s, graphobject);
        } else
        {
            throw new IndexOutOfBoundsException("position");
        }
_L4:
        if (!$assertionsDisabled && (dataNeededListener == null || !cursor.areMoreObjectsAvailable()))
        {
            throw new AssertionError();
        } else
        {
            return new SectionAndItem(null, null);
        }
_L2:
        iterator = sectionKeys.iterator();
_L6:
        boolean flag = iterator.hasNext();
        graphobject = null;
        s = null;
        if (flag)
        {
            String s1 = (String)iterator.next();
            j = i - 1;
            if (i == 0)
            {
                s = s1;
                graphobject = null;
            } else
            {
label0:
                {
                    list = (List)graphObjectsBySection.get(s1);
                    if (j >= list.size())
                    {
                        break label0;
                    }
                    s = s1;
                    graphobject = (GraphObject)list.get(j);
                }
            }
        }
          goto _L5
        i = j - list.size();
          goto _L6
    }

    public int getSectionForPosition(int i)
    {
        SectionAndItem sectionanditem = getSectionAndItem(i);
        if (sectionanditem != null && sectionanditem.getType() != SectionAndItem.Type.ACTIVITY_CIRCLE)
        {
            return Math.max(0, Math.min(sectionKeys.indexOf(sectionanditem.sectionKey), sectionKeys.size() - 1));
        } else
        {
            return 0;
        }
    }

    protected View getSectionHeaderView(String s, View view, ViewGroup viewgroup)
    {
        TextView textview = (TextView)view;
        if (textview == null)
        {
            textview = (TextView)inflater.inflate(com.facebook.android.R.layout.com_facebook_picker_list_section_header, null);
        }
        textview.setText(s);
        return textview;
    }

    protected String getSectionKeyOfGraphObject(GraphObject graphobject)
    {
        String s = groupByField;
        String s1 = null;
        if (s != null)
        {
            s1 = (String)graphobject.getProperty(groupByField);
            if (s1 != null && s1.length() > 0)
            {
                s1 = s1.substring(0, 1).toUpperCase();
            }
        }
        if (s1 != null)
        {
            return s1;
        } else
        {
            return "";
        }
    }

    public Object[] getSections()
    {
        if (displaySections)
        {
            return sectionKeys.toArray();
        } else
        {
            return new Object[0];
        }
    }

    public boolean getShowCheckbox()
    {
        return showCheckbox;
    }

    public boolean getShowPicture()
    {
        return showPicture;
    }

    public List getSortFields()
    {
        return sortFields;
    }

    protected CharSequence getSubTitleOfGraphObject(GraphObject graphobject)
    {
        return null;
    }

    protected CharSequence getTitleOfGraphObject(GraphObject graphobject)
    {
        return (String)graphobject.getProperty("name");
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        SectionAndItem sectionanditem = getSectionAndItem(i);
        switch ($SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type()[sectionanditem.getType().ordinal()])
        {
        default:
            throw new FacebookException("Unexpected type of section and item.");

        case 2: // '\002'
            return getSectionHeaderView(sectionanditem.sectionKey, view, viewgroup);

        case 1: // '\001'
            return getGraphObjectView(sectionanditem.graphObject, view, viewgroup);

        case 3: // '\003'
            break;
        }
        if (!$assertionsDisabled && (!cursor.areMoreObjectsAvailable() || dataNeededListener == null))
        {
            throw new AssertionError();
        } else
        {
            dataNeededListener.onDataNeeded();
            return getActivityCircleView(view, viewgroup);
        }
    }

    public int getViewTypeCount()
    {
        return 3;
    }

    public boolean hasStableIds()
    {
        return true;
    }

    public boolean isEmpty()
    {
        return sectionKeys.size() == 0;
    }

    public boolean isEnabled(int i)
    {
        return getSectionAndItem(i).getType() == SectionAndItem.Type.GRAPH_OBJECT;
    }

    boolean isGraphObjectSelected(String s)
    {
        return false;
    }

    protected void populateGraphObjectView(View view, GraphObject graphobject)
    {
        String s;
        URI uri;
        ImageView imageview;
label0:
        {
            s = getIdOfGraphObject(graphobject);
            view.setTag(s);
            CharSequence charsequence = getTitleOfGraphObject(graphobject);
            TextView textview = (TextView)view.findViewById(com.facebook.android.R.id.com_facebook_picker_title);
            if (textview != null)
            {
                textview.setText(charsequence, android.widget.TextView.BufferType.SPANNABLE);
            }
            CharSequence charsequence1 = getSubTitleOfGraphObject(graphobject);
            TextView textview1 = (TextView)view.findViewById(com.facebook.android.R.id.picker_subtitle);
            if (textview1 != null)
            {
                if (charsequence1 != null)
                {
                    textview1.setText(charsequence1, android.widget.TextView.BufferType.SPANNABLE);
                    textview1.setVisibility(0);
                } else
                {
                    textview1.setVisibility(8);
                }
            }
            if (getShowCheckbox())
            {
                updateCheckboxState((CheckBox)view.findViewById(com.facebook.android.R.id.com_facebook_picker_checkbox), isGraphObjectSelected(s));
            }
            if (getShowPicture())
            {
                uri = getPictureUriOfGraphObject(graphobject);
                if (uri != null)
                {
                    imageview = (ImageView)view.findViewById(com.facebook.android.R.id.com_facebook_picker_image);
                    if (!prefetchedPictureCache.containsKey(s))
                    {
                        break label0;
                    }
                    ImageResponse imageresponse = (ImageResponse)prefetchedPictureCache.get(s);
                    imageview.setImageBitmap(imageresponse.getBitmap());
                    imageview.setTag(imageresponse.getRequest().getImageUri());
                }
            }
            return;
        }
        downloadProfilePicture(s, uri, imageview);
    }

    public void prioritizeViewRange(int i, int j, int k)
    {
        if (j >= i && sectionKeys.size() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int l = j;
_L7:
        if (l >= 0) goto _L4; else goto _L3
_L3:
        int j1;
        ArrayList arraylist;
        int k1;
        int i1 = Math.max(0, i - k);
        j1 = Math.min(j + k, getCount() - 1);
        arraylist = new ArrayList();
        k1 = i1;
_L8:
        if (k1 < i) goto _L6; else goto _L5
_L5:
        int l1 = j + 1;
_L9:
        if (l1 <= j1)
        {
            break MISSING_BLOCK_LABEL_255;
        }
        Iterator iterator = arraylist.iterator();
        while (iterator.hasNext()) 
        {
            GraphObject graphobject = (GraphObject)iterator.next();
            URI uri = getPictureUriOfGraphObject(graphobject);
            String s1 = getIdOfGraphObject(graphobject);
            boolean flag = prefetchedProfilePictureIds.remove(s1);
            prefetchedProfilePictureIds.add(s1);
            if (!flag)
            {
                downloadProfilePicture(s1, uri, null);
            }
        }
          goto _L1
_L4:
        SectionAndItem sectionanditem = getSectionAndItem(l);
        if (sectionanditem.graphObject != null)
        {
            String s = getIdOfGraphObject(sectionanditem.graphObject);
            ImageRequest imagerequest = (ImageRequest)pendingRequests.get(s);
            if (imagerequest != null)
            {
                ImageDownloader.prioritizeRequest(imagerequest);
            }
        }
        l--;
          goto _L7
_L6:
        SectionAndItem sectionanditem1 = getSectionAndItem(k1);
        if (sectionanditem1.graphObject != null)
        {
            arraylist.add(sectionanditem1.graphObject);
        }
        k1++;
          goto _L8
        SectionAndItem sectionanditem2 = getSectionAndItem(l1);
        if (sectionanditem2.graphObject != null)
        {
            arraylist.add(sectionanditem2.graphObject);
        }
        l1++;
          goto _L9
    }

    public void rebuildAndNotify()
    {
        rebuildSections();
        notifyDataSetChanged();
    }

    public void setDataNeededListener(DataNeededListener dataneededlistener)
    {
        dataNeededListener = dataneededlistener;
    }

    void setFilter(Filter filter1)
    {
        filter = filter1;
    }

    public void setGroupByField(String s)
    {
        groupByField = s;
    }

    public void setOnErrorListener(OnErrorListener onerrorlistener)
    {
        onErrorListener = onerrorlistener;
    }

    public void setShowCheckbox(boolean flag)
    {
        showCheckbox = flag;
    }

    public void setShowPicture(boolean flag)
    {
        showPicture = flag;
    }

    public void setSortFields(List list)
    {
        sortFields = list;
    }

    void updateCheckboxState(CheckBox checkbox, boolean flag)
    {
    }

    static 
    {
        boolean flag;
        if (!com/facebook/widget/GraphObjectAdapter.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }



}
