// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import java.io.PrintStream;
import java.lang.reflect.Field;
import java.util.Hashtable;

public class ResourceIdMap
{

    private static Hashtable s_resourceMap;
    private Hashtable m_resourceIds;

    public ResourceIdMap(Class class1)
    {
        init(class1);
    }

    public ResourceIdMap(String s)
    {
        try
        {
            init(Class.forName(s));
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            System.out.format("Class not found:  %s%n%n", new Object[] {
                s
            });
        }
    }

    private static void gatherResourceInfo(Class class1, Hashtable hashtable)
    {
        Class aclass[];
        int i;
        int j;
        aclass = class1.getClasses();
        i = aclass.length;
        j = 0;
_L2:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        Class class2 = aclass[j];
        String s = class2.getName();
        int k = 1 + s.lastIndexOf('$');
        String s1;
        Field afield[];
        int l;
        if (k > 0)
        {
            s1 = s.substring(k);
        } else
        {
            s1 = s;
        }
        afield = class2.getDeclaredFields();
        l = afield.length;
        Field field;
        IllegalAccessException illegalaccessexception;
        IllegalArgumentException illegalargumentexception;
        Object aobj[];
        String s2;
        for (int i1 = 0; i1 >= l; i1++)
        {
            break MISSING_BLOCK_LABEL_203;
        }

        field = afield[i1];
        aobj = new Object[2];
        aobj[0] = s1;
        aobj[1] = field.getName();
        s2 = String.format("%s.%s", aobj).intern();
        if (hashtable.containsKey(s2))
        {
            System.out.format("Did not add duplicate resource key %s", new Object[] {
                s2
            });
            break MISSING_BLOCK_LABEL_217;
        }
        try
        {
            hashtable.put(s2, Integer.valueOf(field.getInt(class2)));
        }
        // Misplaced declaration of an exception variable
        catch (IllegalArgumentException illegalargumentexception)
        {
            System.out.format("IllegalArgumentException", new Object[0]);
        }
        // Misplaced declaration of an exception variable
        catch (IllegalAccessException illegalaccessexception)
        {
            System.out.format("IllegalAccessException", new Object[0]);
        }
        break MISSING_BLOCK_LABEL_217;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void init(Class class1)
    {
        if (s_resourceMap == null)
        {
            s_resourceMap = new Hashtable();
        }
        if (!s_resourceMap.contains(class1))
        {
            m_resourceIds = new Hashtable();
            gatherResourceInfo(class1, m_resourceIds);
            s_resourceMap.put(class1.getName(), m_resourceIds);
            return;
        } else
        {
            m_resourceIds = (Hashtable)s_resourceMap.get(class1);
            return;
        }
    }

    public int getId(String s)
        throws IllegalArgumentException, android.content.res.Resources.NotFoundException
    {
        if (s == null)
        {
            throw new IllegalArgumentException();
        }
        String s1 = s.intern();
        if (!m_resourceIds.containsKey(s1))
        {
            throw new android.content.res.Resources.NotFoundException(s1);
        } else
        {
            return ((Integer)m_resourceIds.get(s1)).intValue();
        }
    }
}
