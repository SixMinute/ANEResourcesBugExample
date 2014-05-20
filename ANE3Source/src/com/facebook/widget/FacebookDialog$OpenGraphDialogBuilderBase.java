// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphObjectException;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import com.facebook.model.OpenGraphAction;
import com.facebook.model.OpenGraphObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

private static abstract class previewPropertyName extends previewPropertyName
{

    private OpenGraphAction action;
    private String actionType;
    private boolean dataErrorsFatal;
    private String previewPropertyName;

    private JSONObject flattenChildrenOfGraphObject(JSONObject jsonobject)
    {
        JSONObject jsonobject1 = new JSONObject(jsonobject.toString());
        Iterator iterator = jsonobject1.keys();
_L2:
        if (!iterator.hasNext())
        {
            return jsonobject1;
        }
        String s = (String)iterator.next();
        if (!s.equalsIgnoreCase("image"))
        {
            jsonobject1.put(s, flattenObject(jsonobject1.get(s)));
        }
        if (true) goto _L2; else goto _L1
_L1:
        JSONException jsonexception;
        jsonexception;
        JSONException jsonexception1 = jsonexception;
_L4:
        throw new FacebookException(jsonexception1);
        JSONException jsonexception2;
        jsonexception2;
        jsonexception1 = jsonexception2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private Object flattenObject(Object obj)
        throws JSONException
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof JSONObject)
        {
            JSONObject jsonobject = (JSONObject)obj;
            if (jsonobject.optBoolean("fbsdk:create_object"))
            {
                return obj;
            }
            if (jsonobject.has("id"))
            {
                return jsonobject.getString("id");
            }
            if (jsonobject.has("url"))
            {
                return jsonobject.getString("url");
            }
        } else
        if (obj instanceof JSONArray)
        {
            JSONArray jsonarray = (JSONArray)obj;
            JSONArray jsonarray1 = new JSONArray();
            int i = jsonarray.length();
            int j = 0;
            do
            {
                if (j >= i)
                {
                    return jsonarray1;
                }
                jsonarray1.put(flattenObject(jsonarray.get(j)));
                j++;
            } while (true);
        }
        return obj;
    }

    private void updateActionAttachmentUrls(List list, boolean flag)
    {
        Object obj;
        Iterator iterator;
        obj = action.getImage();
        if (obj == null)
        {
            obj = new ArrayList(list.size());
        }
        iterator = list.iterator();
_L1:
        if (!iterator.hasNext())
        {
            action.setImage(((List) (obj)));
            return;
        }
        String s = (String)iterator.next();
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("url", s);
        }
        catch (JSONException jsonexception)
        {
            throw new FacebookException("Unable to attach images", jsonexception);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        jsonobject.put("user_generated", true);
        ((List) (obj)).add(jsonobject);
          goto _L1
    }

    Bundle setBundleExtras(Bundle bundle)
    {
        putExtra(bundle, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME", previewPropertyName);
        putExtra(bundle, "com.facebook.platform.extra.ACTION_TYPE", actionType);
        bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", dataErrorsFatal);
        putExtra(bundle, "com.facebook.platform.extra.ACTION", flattenChildrenOfGraphObject(action.getInnerJSONObject()).toString());
        return bundle;
    }

    public action setDataErrorsFatal(boolean flag)
    {
        dataErrorsFatal = flag;
        return this;
    }

    public dataErrorsFatal setImageAttachmentFilesForAction(List list)
    {
        return setImageAttachmentFilesForAction(list, false);
    }

    public setImageAttachmentFilesForAction setImageAttachmentFilesForAction(List list, boolean flag)
    {
        Validate.containsNoNulls(list, "bitmapFiles");
        if (action == null)
        {
            throw new FacebookException("Can not set attachments prior to setting action.");
        } else
        {
            updateActionAttachmentUrls(addImageAttachmentFiles(list), flag);
            return this;
        }
    }

    public addImageAttachmentFiles setImageAttachmentFilesForObject(String s, List list)
    {
        return setImageAttachmentFilesForObject(s, list, false);
    }

    public setImageAttachmentFilesForObject setImageAttachmentFilesForObject(String s, List list, boolean flag)
    {
        Validate.notNull(s, "objectProperty");
        Validate.containsNoNulls(list, "bitmapFiles");
        if (action == null)
        {
            throw new FacebookException("Can not set attachments prior to setting action.");
        } else
        {
            updateObjectAttachmentUrls(s, addImageAttachmentFiles(list), flag);
            return this;
        }
    }

    public addImageAttachmentFiles setImageAttachmentsForAction(List list)
    {
        return setImageAttachmentsForAction(list, false);
    }

    public setImageAttachmentsForAction setImageAttachmentsForAction(List list, boolean flag)
    {
        Validate.containsNoNulls(list, "bitmaps");
        if (action == null)
        {
            throw new FacebookException("Can not set attachments prior to setting action.");
        } else
        {
            updateActionAttachmentUrls(addImageAttachments(list), flag);
            return this;
        }
    }

    public addImageAttachments setImageAttachmentsForObject(String s, List list)
    {
        return setImageAttachmentsForObject(s, list, false);
    }

    public setImageAttachmentsForObject setImageAttachmentsForObject(String s, List list, boolean flag)
    {
        Validate.notNull(s, "objectProperty");
        Validate.containsNoNulls(list, "bitmaps");
        if (action == null)
        {
            throw new FacebookException("Can not set attachments prior to setting action.");
        } else
        {
            updateObjectAttachmentUrls(s, addImageAttachments(list), flag);
            return this;
        }
    }

    void updateObjectAttachmentUrls(String s, List list, boolean flag)
    {
        OpenGraphObject opengraphobject;
        try
        {
            opengraphobject = (OpenGraphObject)action.getPropertyAs(s, com/facebook/model/OpenGraphObject);
        }
        catch (FacebookGraphObjectException facebookgraphobjectexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Property '")).append(s).append("' is not a graph object").toString());
        }
        if (opengraphobject != null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        throw new IllegalArgumentException((new StringBuilder("Action does not contain a property '")).append(s).append("'").toString());
        if (!opengraphobject.getCreateObject())
        {
            throw new IllegalArgumentException((new StringBuilder("The Open Graph object in '")).append(s).append("' is not marked for creation").toString());
        }
        GraphObjectList graphobjectlist = opengraphobject.getImage();
        if (graphobjectlist == null)
        {
            graphobjectlist = com.facebook.model..action(com/facebook/model/GraphObject);
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                opengraphobject.setImage(graphobjectlist);
                return;
            }
            String s1 = (String)iterator.next();
            GraphObject graphobject = com.facebook.model..action();
            graphobject.setProperty("url", s1);
            if (flag)
            {
                graphobject.setProperty("user_generated", Boolean.valueOf(true));
            }
            graphobjectlist.add(graphobject);
        } while (true);
    }

    public (Activity activity, OpenGraphAction opengraphaction, String s)
    {
        super(activity);
        Validate.notNull(opengraphaction, "action");
        Validate.notNullOrEmpty(opengraphaction.getType(), "action.getType()");
        Validate.notNullOrEmpty(s, "previewPropertyName");
        if (opengraphaction.getProperty(s) == null)
        {
            throw new IllegalArgumentException((new StringBuilder("A property named \"")).append(s).append("\" was not found on the action.  The name of ").append("the preview property must match the name of an action property.").toString());
        } else
        {
            action = opengraphaction;
            actionType = opengraphaction.getType();
            previewPropertyName = s;
            return;
        }
    }

    public previewPropertyName(Activity activity, OpenGraphAction opengraphaction, String s, String s1)
    {
        super(activity);
        Validate.notNull(opengraphaction, "action");
        Validate.notNullOrEmpty(s, "actionType");
        Validate.notNullOrEmpty(s1, "previewPropertyName");
        if (opengraphaction.getProperty(s1) == null)
        {
            throw new IllegalArgumentException((new StringBuilder("A property named \"")).append(s1).append("\" was not found on the action.  The name of ").append("the preview property must match the name of an action property.").toString());
        }
        String s2 = opengraphaction.getType();
        if (!Utility.isNullOrEmpty(s2) && !s2.equals(s))
        {
            throw new IllegalArgumentException("'actionType' must match the type of 'action' if it is specified. Consider using OpenGraphDialogBuilderBase(Activity activity, OpenGraphAction action, String previewPropertyName) instead.");
        } else
        {
            action = opengraphaction;
            actionType = s;
            previewPropertyName = s1;
            return;
        }
    }
}
