// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.facebook.AppEventsLogger;
import com.facebook.FacebookException;
import com.facebook.Request;
import com.facebook.Session;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphUser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.facebook.widget:
//            PickerFragment, GraphObjectAdapter, GraphObjectPagingLoader, SimpleGraphObjectCursor

public class FriendPickerFragment extends PickerFragment
{
    private class ImmediateLoadingStrategy extends PickerFragment.LoadingStrategy
    {

        final FriendPickerFragment this$0;

        private void followNextLink()
        {
            displayActivityCircle();
            loader.followNextLink();
        }

        protected void onLoadFinished(GraphObjectPagingLoader graphobjectpagingloader, SimpleGraphObjectCursor simplegraphobjectcursor)
        {
            super.onLoadFinished(graphobjectpagingloader, simplegraphobjectcursor);
            if (simplegraphobjectcursor != null && !graphobjectpagingloader.isLoading())
            {
                if (simplegraphobjectcursor.areMoreObjectsAvailable())
                {
                    followNextLink();
                    return;
                }
                hideActivityCircle();
                if (simplegraphobjectcursor.isFromCache())
                {
                    int i;
                    if (simplegraphobjectcursor.getCount() == 0)
                    {
                        i = 2000;
                    } else
                    {
                        i = 0;
                    }
                    graphobjectpagingloader.refreshOriginalRequest(i);
                    return;
                }
            }
        }

        private ImmediateLoadingStrategy()
        {
            this$0 = FriendPickerFragment.this;
            super(FriendPickerFragment.this);
        }

        ImmediateLoadingStrategy(ImmediateLoadingStrategy immediateloadingstrategy)
        {
            this();
        }
    }


    private static final String ID = "id";
    public static final String MULTI_SELECT_BUNDLE_KEY = "com.facebook.widget.FriendPickerFragment.MultiSelect";
    private static final String NAME = "name";
    public static final String USER_ID_BUNDLE_KEY = "com.facebook.widget.FriendPickerFragment.UserId";
    private boolean multiSelect;
    private List preSelectedFriendIds;
    private String userId;

    public FriendPickerFragment()
    {
        this(null);
    }

    public FriendPickerFragment(Bundle bundle)
    {
        super(com/facebook/model/GraphUser, com.facebook.android.R.layout.com_facebook_friendpickerfragment, bundle);
        multiSelect = true;
        preSelectedFriendIds = new ArrayList();
        setFriendPickerSettingsFromBundle(bundle);
    }

    private Request createRequest(String s, Set set, Session session)
    {
        Request request = Request.newGraphPathRequest(session, (new StringBuilder(String.valueOf(s))).append("/friends").toString(), null);
        HashSet hashset = new HashSet(set);
        hashset.addAll(Arrays.asList(new String[] {
            "id", "name"
        }));
        String s1 = adapter.getPictureFieldSpecifier();
        if (s1 != null)
        {
            hashset.add(s1);
        }
        Bundle bundle = request.getParameters();
        bundle.putString("fields", TextUtils.join(",", hashset));
        request.setParameters(bundle);
        return request;
    }

    private void setFriendPickerSettingsFromBundle(Bundle bundle)
    {
        if (bundle != null)
        {
            if (bundle.containsKey("com.facebook.widget.FriendPickerFragment.UserId"))
            {
                setUserId(bundle.getString("com.facebook.widget.FriendPickerFragment.UserId"));
            }
            setMultiSelect(bundle.getBoolean("com.facebook.widget.FriendPickerFragment.MultiSelect", multiSelect));
        }
    }

    PickerFragment.PickerFragmentAdapter createAdapter()
    {
        PickerFragment.PickerFragmentAdapter pickerfragmentadapter = new PickerFragment.PickerFragmentAdapter(this, getActivity()) {

            final FriendPickerFragment this$0;

            protected int getDefaultPicture()
            {
                return com.facebook.android.R.drawable.com_facebook_profile_default_icon;
            }

            protected volatile int getGraphObjectRowLayoutId(GraphObject graphobject)
            {
                return getGraphObjectRowLayoutId((GraphUser)graphobject);
            }

            protected int getGraphObjectRowLayoutId(GraphUser graphuser)
            {
                return com.facebook.android.R.layout.com_facebook_picker_list_row;
            }

            
            {
                this$0 = FriendPickerFragment.this;
                super(pickerfragment, context);
            }
        };
        pickerfragmentadapter.setShowCheckbox(true);
        pickerfragmentadapter.setShowPicture(getShowPictures());
        pickerfragmentadapter.setSortFields(Arrays.asList(new String[] {
            "name"
        }));
        pickerfragmentadapter.setGroupByField("name");
        return pickerfragmentadapter;
    }

    PickerFragment.LoadingStrategy createLoadingStrategy()
    {
        return new ImmediateLoadingStrategy(null);
    }

    PickerFragment.SelectionStrategy createSelectionStrategy()
    {
        if (multiSelect)
        {
            return new PickerFragment.MultiSelectionStrategy(this);
        } else
        {
            return new PickerFragment.SingleSelectionStrategy(this);
        }
    }

    String getDefaultTitleText()
    {
        return getString(com.facebook.android.R.string.com_facebook_choose_friends);
    }

    public boolean getMultiSelect()
    {
        return multiSelect;
    }

    Request getRequestForLoadData(Session session)
    {
        if (adapter == null)
        {
            throw new FacebookException("Can't issue requests until Fragment has been created.");
        }
        String s;
        if (userId != null)
        {
            s = userId;
        } else
        {
            s = "me";
        }
        return createRequest(s, extraFields, session);
    }

    public List getSelection()
    {
        return getSelectedGraphObjects();
    }

    public String getUserId()
    {
        return userId;
    }

    public void loadData(boolean flag)
    {
        super.loadData(flag);
        setSelectedGraphObjects(preSelectedFriendIds);
    }

    void logAppEvents(boolean flag)
    {
        AppEventsLogger appeventslogger = AppEventsLogger.newLogger(getActivity(), getSession());
        Bundle bundle = new Bundle();
        String s;
        if (flag)
        {
            s = "Completed";
        } else
        {
            s = "Unknown";
        }
        bundle.putString("fb_dialog_outcome", s);
        bundle.putInt("num_friends_picked", getSelection().size());
        appeventslogger.logSdkEvent("fb_friend_picker_usage", null, bundle);
    }

    public void onInflate(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        super.onInflate(activity, attributeset, bundle);
        TypedArray typedarray = activity.obtainStyledAttributes(attributeset, com.facebook.android.R.styleable.com_facebook_friend_picker_fragment);
        setMultiSelect(typedarray.getBoolean(0, multiSelect));
        typedarray.recycle();
    }

    void saveSettingsToBundle(Bundle bundle)
    {
        super.saveSettingsToBundle(bundle);
        bundle.putString("com.facebook.widget.FriendPickerFragment.UserId", userId);
        bundle.putBoolean("com.facebook.widget.FriendPickerFragment.MultiSelect", multiSelect);
    }

    public void setMultiSelect(boolean flag)
    {
        if (multiSelect != flag)
        {
            multiSelect = flag;
            setSelectionStrategy(createSelectionStrategy());
        }
    }

    public void setSelection(List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                setSelectionByIds(arraylist);
                return;
            }
            arraylist.add(((GraphUser)iterator.next()).getId());
        } while (true);
    }

    public transient void setSelection(GraphUser agraphuser[])
    {
        setSelection(Arrays.asList(agraphuser));
    }

    public void setSelectionByIds(List list)
    {
        preSelectedFriendIds.addAll(list);
    }

    public transient void setSelectionByIds(String as[])
    {
        setSelectionByIds(Arrays.asList(as));
    }

    public void setSettingsFromBundle(Bundle bundle)
    {
        super.setSettingsFromBundle(bundle);
        setFriendPickerSettingsFromBundle(bundle);
    }

    public void setUserId(String s)
    {
        userId = s;
    }
}
