// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.model;

import java.util.Arrays;

// Referenced classes of package com.facebook.model:
//            OpenGraphObject

public static final class 
{

    public static OpenGraphObject createForPost(Class class1, String s)
    {
        return createForPost(class1, s, null, null, null, null);
    }

    public static OpenGraphObject createForPost(Class class1, String s, String s1, String s2, String s3, String s4)
    {
        OpenGraphObject opengraphobject = (OpenGraphObject)te(class1);
        if (s != null)
        {
            opengraphobject.setType(s);
        }
        if (s1 != null)
        {
            opengraphobject.setTitle(s1);
        }
        if (s2 != null)
        {
            opengraphobject.setImageUrls(Arrays.asList(new String[] {
                s2
            }));
        }
        if (s3 != null)
        {
            opengraphobject.setUrl(s3);
        }
        if (s4 != null)
        {
            opengraphobject.setDescription(s4);
        }
        opengraphobject.setCreateObject(true);
        opengraphobject.setData(te());
        return opengraphobject;
    }

    public static OpenGraphObject createForPost(String s)
    {
        return createForPost(com/facebook/model/OpenGraphObject, s);
    }

    public ()
    {
    }
}
