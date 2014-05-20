// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.AlphaAnimation;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.FacebookException;
import com.facebook.Request;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.internal.SessionTracker;
import com.facebook.model.GraphObject;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.facebook.widget:
//            GraphObjectAdapter, SimpleGraphObjectCursor, GraphObjectPagingLoader

public abstract class PickerFragment extends Fragment
{
    public static interface GraphObjectFilter
    {

        public abstract boolean includeItem(Object obj);
    }

    abstract class LoadingStrategy
    {

        protected static final int CACHED_RESULT_REFRESH_DELAY = 2000;
        protected GraphObjectAdapter adapter;
        protected GraphObjectPagingLoader loader;
        final PickerFragment this$0;

        public void attach(GraphObjectAdapter graphobjectadapter)
        {
            loader = (GraphObjectPagingLoader)getLoaderManager().initLoader(0, null, new android.support.v4.app.LoaderManager.LoaderCallbacks() {

                final LoadingStrategy this$1;

                public Loader onCreateLoader(int i, Bundle bundle)
                {
                    return LoadingStrategy.this.onCreateLoader();
                }

                public void onLoadFinished(Loader loader, SimpleGraphObjectCursor simplegraphobjectcursor)
                {
                    if (loader != LoadingStrategy.this.loader)
                    {
                        throw new FacebookException("Received callback for unknown loader.");
                    } else
                    {
                        LoadingStrategy.this.onLoadFinished((GraphObjectPagingLoader)loader, simplegraphobjectcursor);
                        return;
                    }
                }

                public volatile void onLoadFinished(Loader loader, Object obj)
                {
                    onLoadFinished((Loader)loader, (SimpleGraphObjectCursor)obj);
                }

                public void onLoaderReset(Loader loader)
                {
                    if (loader != LoadingStrategy.this.loader)
                    {
                        throw new FacebookException("Received callback for unknown loader.");
                    } else
                    {
                        onLoadReset((GraphObjectPagingLoader)loader);
                        return;
                    }
                }

            
            {
                this$1 = LoadingStrategy.this;
                super();
            }
            });
            loader.setOnErrorListener(new GraphObjectPagingLoader.OnErrorListener() {

                final LoadingStrategy this$1;

                public void onError(FacebookException facebookexception, GraphObjectPagingLoader graphobjectpagingloader)
                {
                    hideActivityCircle();
                    if (onErrorListener != null)
                    {
                        onErrorListener.onError(_fld0, facebookexception);
                    }
                }

            
            {
                this$1 = LoadingStrategy.this;
                super();
            }
            });
            adapter = graphobjectadapter;
            adapter.changeCursor(loader.getCursor());
            adapter.setOnErrorListener(new GraphObjectAdapter.OnErrorListener() {

                final LoadingStrategy this$1;

                public void onError(GraphObjectAdapter graphobjectadapter, FacebookException facebookexception)
                {
                    if (onErrorListener != null)
                    {
                        onErrorListener.onError(_fld0, facebookexception);
                    }
                }

            
            {
                this$1 = LoadingStrategy.this;
                super();
            }
            });
        }

        public void clearResults()
        {
            if (loader != null)
            {
                loader.clearResults();
            }
        }

        public void detach()
        {
            adapter.setDataNeededListener(null);
            adapter.setOnErrorListener(null);
            loader.setOnErrorListener(null);
            loader = null;
            adapter = null;
        }

        public boolean isDataPresentOrLoading()
        {
            return !adapter.isEmpty() || loader.isLoading();
        }

        protected GraphObjectPagingLoader onCreateLoader()
        {
            return new GraphObjectPagingLoader(getActivity(), graphObjectClass);
        }

        protected void onLoadFinished(GraphObjectPagingLoader graphobjectpagingloader, SimpleGraphObjectCursor simplegraphobjectcursor)
        {
            updateAdapter(simplegraphobjectcursor);
        }

        protected void onLoadReset(GraphObjectPagingLoader graphobjectpagingloader)
        {
            adapter.changeCursor(null);
        }

        protected void onStartLoading(GraphObjectPagingLoader graphobjectpagingloader, Request request)
        {
            displayActivityCircle();
        }

        public void startLoading(Request request)
        {
            if (loader != null)
            {
                loader.startLoading(request, true);
                onStartLoading(loader, request);
            }
        }


        LoadingStrategy()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }

    class MultiSelectionStrategy extends SelectionStrategy
    {

        private Set selectedIds;
        final PickerFragment this$0;

        public void clear()
        {
            selectedIds.clear();
        }

        public Collection getSelectedIds()
        {
            return selectedIds;
        }

        boolean isEmpty()
        {
            return selectedIds.isEmpty();
        }

        boolean isSelected(String s)
        {
            return s != null && selectedIds.contains(s);
        }

        void readSelectionFromBundle(Bundle bundle, String s)
        {
            if (bundle != null)
            {
                String s1 = bundle.getString(s);
                if (s1 != null)
                {
                    String as[] = TextUtils.split(s1, ",");
                    selectedIds.clear();
                    Collections.addAll(selectedIds, as);
                }
            }
        }

        void saveSelectionToBundle(Bundle bundle, String s)
        {
            if (!selectedIds.isEmpty())
            {
                bundle.putString(s, TextUtils.join(",", selectedIds));
            }
        }

        boolean shouldShowCheckBoxIfUnselected()
        {
            return true;
        }

        void toggleSelection(String s)
        {
label0:
            {
                if (s != null)
                {
                    if (!selectedIds.contains(s))
                    {
                        break label0;
                    }
                    selectedIds.remove(s);
                }
                return;
            }
            selectedIds.add(s);
        }

        MultiSelectionStrategy()
        {
            this$0 = PickerFragment.this;
            super();
            selectedIds = new HashSet();
        }
    }

    public static interface OnDataChangedListener
    {

        public abstract void onDataChanged(PickerFragment pickerfragment);
    }

    public static interface OnDoneButtonClickedListener
    {

        public abstract void onDoneButtonClicked(PickerFragment pickerfragment);
    }

    public static interface OnErrorListener
    {

        public abstract void onError(PickerFragment pickerfragment, FacebookException facebookexception);
    }

    public static interface OnSelectionChangedListener
    {

        public abstract void onSelectionChanged(PickerFragment pickerfragment);
    }

    abstract class PickerFragmentAdapter extends GraphObjectAdapter
    {

        final PickerFragment this$0;

        boolean isGraphObjectSelected(String s)
        {
            return selectionStrategy.isSelected(s);
        }

        void updateCheckboxState(CheckBox checkbox, boolean flag)
        {
            checkbox.setChecked(flag);
            int i;
            if (flag || selectionStrategy.shouldShowCheckBoxIfUnselected())
            {
                i = 0;
            } else
            {
                i = 8;
            }
            checkbox.setVisibility(i);
        }

        public PickerFragmentAdapter(Context context)
        {
            this$0 = PickerFragment.this;
            super(context);
        }
    }

    abstract class SelectionStrategy
    {

        final PickerFragment this$0;

        abstract void clear();

        abstract Collection getSelectedIds();

        abstract boolean isEmpty();

        abstract boolean isSelected(String s);

        abstract void readSelectionFromBundle(Bundle bundle, String s);

        abstract void saveSelectionToBundle(Bundle bundle, String s);

        abstract boolean shouldShowCheckBoxIfUnselected();

        abstract void toggleSelection(String s);

        SelectionStrategy()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }

    class SingleSelectionStrategy extends SelectionStrategy
    {

        private String selectedId;
        final PickerFragment this$0;

        public void clear()
        {
            selectedId = null;
        }

        public Collection getSelectedIds()
        {
            String as[] = new String[1];
            as[0] = selectedId;
            return Arrays.asList(as);
        }

        boolean isEmpty()
        {
            return selectedId == null;
        }

        boolean isSelected(String s)
        {
            return selectedId != null && s != null && selectedId.equals(s);
        }

        void readSelectionFromBundle(Bundle bundle, String s)
        {
            if (bundle != null)
            {
                selectedId = bundle.getString(s);
            }
        }

        void saveSelectionToBundle(Bundle bundle, String s)
        {
            if (!TextUtils.isEmpty(selectedId))
            {
                bundle.putString(s, selectedId);
            }
        }

        boolean shouldShowCheckBoxIfUnselected()
        {
            return false;
        }

        void toggleSelection(String s)
        {
            if (selectedId != null && selectedId.equals(s))
            {
                selectedId = null;
                return;
            } else
            {
                selectedId = s;
                return;
            }
        }

        SingleSelectionStrategy()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }


    private static final String ACTIVITY_CIRCLE_SHOW_KEY = "com.facebook.android.PickerFragment.ActivityCircleShown";
    public static final String DONE_BUTTON_TEXT_BUNDLE_KEY = "com.facebook.widget.PickerFragment.DoneButtonText";
    public static final String EXTRA_FIELDS_BUNDLE_KEY = "com.facebook.widget.PickerFragment.ExtraFields";
    private static final int PROFILE_PICTURE_PREFETCH_BUFFER = 5;
    private static final String SELECTION_BUNDLE_KEY = "com.facebook.android.PickerFragment.Selection";
    public static final String SHOW_PICTURES_BUNDLE_KEY = "com.facebook.widget.PickerFragment.ShowPictures";
    public static final String SHOW_TITLE_BAR_BUNDLE_KEY = "com.facebook.widget.PickerFragment.ShowTitleBar";
    public static final String TITLE_TEXT_BUNDLE_KEY = "com.facebook.widget.PickerFragment.TitleText";
    private ProgressBar activityCircle;
    GraphObjectAdapter adapter;
    private boolean appEventsLogged;
    private Button doneButton;
    private Drawable doneButtonBackground;
    private String doneButtonText;
    HashSet extraFields;
    private GraphObjectFilter filter;
    private final Class graphObjectClass;
    private final int layout;
    private ListView listView;
    private LoadingStrategy loadingStrategy;
    private OnDataChangedListener onDataChangedListener;
    private OnDoneButtonClickedListener onDoneButtonClickedListener;
    private OnErrorListener onErrorListener;
    private android.widget.AbsListView.OnScrollListener onScrollListener;
    private OnSelectionChangedListener onSelectionChangedListener;
    private SelectionStrategy selectionStrategy;
    private SessionTracker sessionTracker;
    private boolean showPictures;
    private boolean showTitleBar;
    private Drawable titleBarBackground;
    private String titleText;
    private TextView titleTextView;

    PickerFragment(Class class1, int i, Bundle bundle)
    {
        showPictures = true;
        showTitleBar = true;
        extraFields = new HashSet();
        onScrollListener = new android.widget.AbsListView.OnScrollListener() {

            final PickerFragment this$0;

            public void onScroll(AbsListView abslistview, int j, int k, int l)
            {
                reprioritizeDownloads();
            }

            public void onScrollStateChanged(AbsListView abslistview, int j)
            {
            }

            
            {
                this$0 = PickerFragment.this;
                super();
            }
        };
        graphObjectClass = class1;
        layout = i;
        setPickerFragmentSettingsFromBundle(bundle);
    }

    private void clearResults()
    {
        if (adapter != null)
        {
            boolean flag;
            boolean flag1;
            if (selectionStrategy.isEmpty())
            {
                flag = false;
            } else
            {
                flag = true;
            }
            if (adapter.isEmpty())
            {
                flag1 = false;
            } else
            {
                flag1 = true;
            }
            loadingStrategy.clearResults();
            selectionStrategy.clear();
            adapter.notifyDataSetChanged();
            if (flag1 && onDataChangedListener != null)
            {
                onDataChangedListener.onDataChanged(this);
            }
            if (flag && onSelectionChangedListener != null)
            {
                onSelectionChangedListener.onSelectionChanged(this);
            }
        }
    }

    private void inflateTitleBar(ViewGroup viewgroup)
    {
        ViewStub viewstub = (ViewStub)viewgroup.findViewById(com.facebook.android.R.id.com_facebook_picker_title_bar_stub);
        if (viewstub != null)
        {
            View view = viewstub.inflate();
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            layoutparams.addRule(3, com.facebook.android.R.id.com_facebook_picker_title_bar);
            listView.setLayoutParams(layoutparams);
            if (titleBarBackground != null)
            {
                view.setBackgroundDrawable(titleBarBackground);
            }
            doneButton = (Button)viewgroup.findViewById(com.facebook.android.R.id.com_facebook_picker_done_button);
            if (doneButton != null)
            {
                doneButton.setOnClickListener(new android.view.View.OnClickListener() {

                    final PickerFragment this$0;

                    public void onClick(View view1)
                    {
                        logAppEvents(true);
                        appEventsLogged = true;
                        if (onDoneButtonClickedListener != null)
                        {
                            onDoneButtonClickedListener.onDoneButtonClicked(PickerFragment.this);
                        }
                    }

            
            {
                this$0 = PickerFragment.this;
                super();
            }
                });
                if (getDoneButtonText() != null)
                {
                    doneButton.setText(getDoneButtonText());
                }
                if (doneButtonBackground != null)
                {
                    doneButton.setBackgroundDrawable(doneButtonBackground);
                }
            }
            titleTextView = (TextView)viewgroup.findViewById(com.facebook.android.R.id.com_facebook_picker_title);
            if (titleTextView != null && getTitleText() != null)
            {
                titleTextView.setText(getTitleText());
            }
        }
    }

    private void loadDataSkippingRoundTripIfCached()
    {
        clearResults();
        Request request = getRequestForLoadData(getSession());
        if (request != null)
        {
            onLoadingData();
            loadingStrategy.startLoading(request);
        }
    }

    private void onListItemClick(ListView listview, View view, int i)
    {
        GraphObject graphobject = (GraphObject)listview.getItemAtPosition(i);
        String s = adapter.getIdOfGraphObject(graphobject);
        selectionStrategy.toggleSelection(s);
        adapter.notifyDataSetChanged();
        if (onSelectionChangedListener != null)
        {
            onSelectionChangedListener.onSelectionChanged(this);
        }
    }

    private void reprioritizeDownloads()
    {
        int i = listView.getLastVisiblePosition();
        if (i >= 0)
        {
            int j = listView.getFirstVisiblePosition();
            adapter.prioritizeViewRange(j, i, 5);
        }
    }

    private static void setAlpha(View view, float f)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(f, f);
        alphaanimation.setDuration(0L);
        alphaanimation.setFillAfter(true);
        view.startAnimation(alphaanimation);
    }

    private void setPickerFragmentSettingsFromBundle(Bundle bundle)
    {
        if (bundle != null)
        {
            showPictures = bundle.getBoolean("com.facebook.widget.PickerFragment.ShowPictures", showPictures);
            String s = bundle.getString("com.facebook.widget.PickerFragment.ExtraFields");
            if (s != null)
            {
                setExtraFields(Arrays.asList(s.split(",")));
            }
            showTitleBar = bundle.getBoolean("com.facebook.widget.PickerFragment.ShowTitleBar", showTitleBar);
            String s1 = bundle.getString("com.facebook.widget.PickerFragment.TitleText");
            if (s1 != null)
            {
                titleText = s1;
                if (titleTextView != null)
                {
                    titleTextView.setText(titleText);
                }
            }
            String s2 = bundle.getString("com.facebook.widget.PickerFragment.DoneButtonText");
            if (s2 != null)
            {
                doneButtonText = s2;
                if (doneButton != null)
                {
                    doneButton.setText(doneButtonText);
                }
            }
        }
    }

    abstract PickerFragmentAdapter createAdapter();

    abstract LoadingStrategy createLoadingStrategy();

    abstract SelectionStrategy createSelectionStrategy();

    void displayActivityCircle()
    {
        if (activityCircle != null)
        {
            layoutActivityCircle();
            activityCircle.setVisibility(0);
        }
    }

    boolean filterIncludesItem(GraphObject graphobject)
    {
        if (filter != null)
        {
            return filter.includeItem(graphobject);
        } else
        {
            return true;
        }
    }

    String getDefaultDoneButtonText()
    {
        return getString(com.facebook.android.R.string.com_facebook_picker_done_button_text);
    }

    String getDefaultTitleText()
    {
        return null;
    }

    public String getDoneButtonText()
    {
        if (doneButtonText == null)
        {
            doneButtonText = getDefaultDoneButtonText();
        }
        return doneButtonText;
    }

    public Set getExtraFields()
    {
        return new HashSet(extraFields);
    }

    public GraphObjectFilter getFilter()
    {
        return filter;
    }

    public OnDataChangedListener getOnDataChangedListener()
    {
        return onDataChangedListener;
    }

    public OnDoneButtonClickedListener getOnDoneButtonClickedListener()
    {
        return onDoneButtonClickedListener;
    }

    public OnErrorListener getOnErrorListener()
    {
        return onErrorListener;
    }

    public OnSelectionChangedListener getOnSelectionChangedListener()
    {
        return onSelectionChangedListener;
    }

    abstract Request getRequestForLoadData(Session session);

    List getSelectedGraphObjects()
    {
        return adapter.getGraphObjectsById(selectionStrategy.getSelectedIds());
    }

    public Session getSession()
    {
        return sessionTracker.getSession();
    }

    public boolean getShowPictures()
    {
        return showPictures;
    }

    public boolean getShowTitleBar()
    {
        return showTitleBar;
    }

    public String getTitleText()
    {
        if (titleText == null)
        {
            titleText = getDefaultTitleText();
        }
        return titleText;
    }

    void hideActivityCircle()
    {
        if (activityCircle != null)
        {
            activityCircle.clearAnimation();
            activityCircle.setVisibility(4);
        }
    }

    void layoutActivityCircle()
    {
        float f;
        if (!adapter.isEmpty())
        {
            f = 0.25F;
        } else
        {
            f = 1.0F;
        }
        setAlpha(activityCircle, f);
    }

    public void loadData(boolean flag)
    {
        if (!flag && loadingStrategy.isDataPresentOrLoading())
        {
            return;
        } else
        {
            loadDataSkippingRoundTripIfCached();
            return;
        }
    }

    void logAppEvents(boolean flag)
    {
    }

    public void onActivityCreated(Bundle bundle)
    {
label0:
        {
            super.onActivityCreated(bundle);
            sessionTracker = new SessionTracker(getActivity(), new com.facebook.Session.StatusCallback() {

                final PickerFragment this$0;

                public void call(Session session, SessionState sessionstate, Exception exception)
                {
                    if (!session.isOpened())
                    {
                        clearResults();
                    }
                }

            
            {
                this$0 = PickerFragment.this;
                super();
            }
            });
            setSettingsFromBundle(bundle);
            loadingStrategy = createLoadingStrategy();
            loadingStrategy.attach(adapter);
            selectionStrategy = createSelectionStrategy();
            selectionStrategy.readSelectionFromBundle(bundle, "com.facebook.android.PickerFragment.Selection");
            if (showTitleBar)
            {
                inflateTitleBar((ViewGroup)getView());
            }
            if (activityCircle != null && bundle != null)
            {
                if (!bundle.getBoolean("com.facebook.android.PickerFragment.ActivityCircleShown", false))
                {
                    break label0;
                }
                displayActivityCircle();
            }
            return;
        }
        hideActivityCircle();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        adapter = createAdapter();
        adapter.setFilter(new GraphObjectAdapter.Filter() {

            final PickerFragment this$0;

            public boolean includeItem(GraphObject graphobject)
            {
                return filterIncludesItem(graphobject);
            }

            public volatile boolean includeItem(Object obj)
            {
                return includeItem((GraphObject)obj);
            }

            
            {
                this$0 = PickerFragment.this;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        ViewGroup viewgroup1 = (ViewGroup)layoutinflater.inflate(layout, viewgroup, false);
        listView = (ListView)viewgroup1.findViewById(com.facebook.android.R.id.com_facebook_picker_list_view);
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final PickerFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                onListItemClick((ListView)adapterview, view, i);
            }

            
            {
                this$0 = PickerFragment.this;
                super();
            }
        });
        listView.setOnLongClickListener(new android.view.View.OnLongClickListener() {

            final PickerFragment this$0;

            public boolean onLongClick(View view)
            {
                return false;
            }

            
            {
                this$0 = PickerFragment.this;
                super();
            }
        });
        listView.setOnScrollListener(onScrollListener);
        activityCircle = (ProgressBar)viewgroup1.findViewById(com.facebook.android.R.id.com_facebook_picker_activity_circle);
        setupViews(viewgroup1);
        listView.setAdapter(adapter);
        return viewgroup1;
    }

    public void onDetach()
    {
        super.onDetach();
        listView.setOnScrollListener(null);
        listView.setAdapter(null);
        loadingStrategy.detach();
        sessionTracker.stopTracking();
    }

    public void onInflate(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        super.onInflate(activity, attributeset, bundle);
        TypedArray typedarray = activity.obtainStyledAttributes(attributeset, com.facebook.android.R.styleable.com_facebook_picker_fragment);
        setShowPictures(typedarray.getBoolean(0, showPictures));
        String s = typedarray.getString(1);
        if (s != null)
        {
            setExtraFields(Arrays.asList(s.split(",")));
        }
        showTitleBar = typedarray.getBoolean(2, showTitleBar);
        titleText = typedarray.getString(3);
        doneButtonText = typedarray.getString(4);
        titleBarBackground = typedarray.getDrawable(5);
        doneButtonBackground = typedarray.getDrawable(6);
        typedarray.recycle();
    }

    void onLoadingData()
    {
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        saveSettingsToBundle(bundle);
        selectionStrategy.saveSelectionToBundle(bundle, "com.facebook.android.PickerFragment.Selection");
        if (activityCircle != null)
        {
            boolean flag;
            if (activityCircle.getVisibility() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            bundle.putBoolean("com.facebook.android.PickerFragment.ActivityCircleShown", flag);
        }
    }

    public void onStop()
    {
        if (!appEventsLogged)
        {
            logAppEvents(false);
        }
        super.onStop();
    }

    void saveSettingsToBundle(Bundle bundle)
    {
        bundle.putBoolean("com.facebook.widget.PickerFragment.ShowPictures", showPictures);
        if (!extraFields.isEmpty())
        {
            bundle.putString("com.facebook.widget.PickerFragment.ExtraFields", TextUtils.join(",", extraFields));
        }
        bundle.putBoolean("com.facebook.widget.PickerFragment.ShowTitleBar", showTitleBar);
        bundle.putString("com.facebook.widget.PickerFragment.TitleText", titleText);
        bundle.putString("com.facebook.widget.PickerFragment.DoneButtonText", doneButtonText);
    }

    public void setArguments(Bundle bundle)
    {
        super.setArguments(bundle);
        setSettingsFromBundle(bundle);
    }

    public void setDoneButtonText(String s)
    {
        doneButtonText = s;
    }

    public void setExtraFields(Collection collection)
    {
        extraFields = new HashSet();
        if (collection != null)
        {
            extraFields.addAll(collection);
        }
    }

    public void setFilter(GraphObjectFilter graphobjectfilter)
    {
        filter = graphobjectfilter;
    }

    public void setOnDataChangedListener(OnDataChangedListener ondatachangedlistener)
    {
        onDataChangedListener = ondatachangedlistener;
    }

    public void setOnDoneButtonClickedListener(OnDoneButtonClickedListener ondonebuttonclickedlistener)
    {
        onDoneButtonClickedListener = ondonebuttonclickedlistener;
    }

    public void setOnErrorListener(OnErrorListener onerrorlistener)
    {
        onErrorListener = onerrorlistener;
    }

    public void setOnSelectionChangedListener(OnSelectionChangedListener onselectionchangedlistener)
    {
        onSelectionChangedListener = onselectionchangedlistener;
    }

    void setSelectedGraphObjects(List list)
    {
        Iterator iterator = list.iterator();
        do
        {
            String s;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                s = (String)iterator.next();
            } while (selectionStrategy.isSelected(s));
            selectionStrategy.toggleSelection(s);
        } while (true);
    }

    void setSelectionStrategy(SelectionStrategy selectionstrategy)
    {
        if (selectionstrategy != selectionStrategy)
        {
            selectionStrategy = selectionstrategy;
            if (adapter != null)
            {
                adapter.notifyDataSetChanged();
            }
        }
    }

    public void setSession(Session session)
    {
        sessionTracker.setSession(session);
    }

    public void setSettingsFromBundle(Bundle bundle)
    {
        setPickerFragmentSettingsFromBundle(bundle);
    }

    public void setShowPictures(boolean flag)
    {
        showPictures = flag;
    }

    public void setShowTitleBar(boolean flag)
    {
        showTitleBar = flag;
    }

    public void setTitleText(String s)
    {
        titleText = s;
    }

    void setupViews(ViewGroup viewgroup)
    {
    }

    void updateAdapter(SimpleGraphObjectCursor simplegraphobjectcursor)
    {
        if (adapter != null)
        {
            View view = listView.getChildAt(1);
            int i = listView.getFirstVisiblePosition();
            if (i > 0)
            {
                i++;
            }
            GraphObjectAdapter.SectionAndItem sectionanditem = adapter.getSectionAndItem(i);
            int j;
            boolean flag;
            if (view != null && sectionanditem.getType() != GraphObjectAdapter.SectionAndItem.Type.ACTIVITY_CIRCLE)
            {
                j = view.getTop();
            } else
            {
                j = 0;
            }
            flag = adapter.changeCursor(simplegraphobjectcursor);
            if (view != null && sectionanditem != null)
            {
                int k = adapter.getPosition(sectionanditem.sectionKey, sectionanditem.graphObject);
                if (k != -1)
                {
                    listView.setSelectionFromTop(k, j);
                }
            }
            if (flag && onDataChangedListener != null)
            {
                onDataChangedListener.onDataChanged(this);
            }
        }
    }








}
