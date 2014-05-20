// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            TokenCachingStrategy, LoggingBehavior

public class SharedPreferencesTokenCachingStrategy extends TokenCachingStrategy
{

    private static final String DEFAULT_CACHE_KEY = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
    private static final String JSON_VALUE = "value";
    private static final String JSON_VALUE_ENUM_TYPE = "enumType";
    private static final String JSON_VALUE_TYPE = "valueType";
    private static final String TAG = com/facebook/SharedPreferencesTokenCachingStrategy.getSimpleName();
    private static final String TYPE_BOOLEAN = "bool";
    private static final String TYPE_BOOLEAN_ARRAY = "bool[]";
    private static final String TYPE_BYTE = "byte";
    private static final String TYPE_BYTE_ARRAY = "byte[]";
    private static final String TYPE_CHAR = "char";
    private static final String TYPE_CHAR_ARRAY = "char[]";
    private static final String TYPE_DOUBLE = "double";
    private static final String TYPE_DOUBLE_ARRAY = "double[]";
    private static final String TYPE_ENUM = "enum";
    private static final String TYPE_FLOAT = "float";
    private static final String TYPE_FLOAT_ARRAY = "float[]";
    private static final String TYPE_INTEGER = "int";
    private static final String TYPE_INTEGER_ARRAY = "int[]";
    private static final String TYPE_LONG = "long";
    private static final String TYPE_LONG_ARRAY = "long[]";
    private static final String TYPE_SHORT = "short";
    private static final String TYPE_SHORT_ARRAY = "short[]";
    private static final String TYPE_STRING = "string";
    private static final String TYPE_STRING_LIST = "stringList";
    private SharedPreferences cache;
    private String cacheKey;

    public SharedPreferencesTokenCachingStrategy(Context context)
    {
        this(context, null);
    }

    public SharedPreferencesTokenCachingStrategy(Context context, String s)
    {
        Validate.notNull(context, "context");
        String s1;
        Context context1;
        if (Utility.isNullOrEmpty(s))
        {
            s1 = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
        } else
        {
            s1 = s;
        }
        cacheKey = s1;
        context1 = context.getApplicationContext();
        if (context1 != null)
        {
            context = context1;
        }
        cache = context.getSharedPreferences(cacheKey, 0);
    }

    private void deserializeKey(String s, Bundle bundle)
        throws JSONException
    {
        JSONObject jsonobject;
        String s1;
        jsonobject = new JSONObject(cache.getString(s, "{}"));
        s1 = jsonobject.getString("valueType");
        if (!s1.equals("bool")) goto _L2; else goto _L1
_L1:
        bundle.putBoolean(s, jsonobject.getBoolean("value"));
_L4:
        return;
_L2:
        if (s1.equals("bool[]"))
        {
            JSONArray jsonarray8 = jsonobject.getJSONArray("value");
            boolean aflag[] = new boolean[jsonarray8.length()];
            int i4 = 0;
            do
            {
                int j4 = aflag.length;
                if (i4 >= j4)
                {
                    bundle.putBooleanArray(s, aflag);
                    return;
                }
                aflag[i4] = jsonarray8.getBoolean(i4);
                i4++;
            } while (true);
        }
        if (s1.equals("byte"))
        {
            bundle.putByte(s, (byte)jsonobject.getInt("value"));
            return;
        }
        if (s1.equals("byte[]"))
        {
            JSONArray jsonarray7 = jsonobject.getJSONArray("value");
            byte abyte0[] = new byte[jsonarray7.length()];
            int k3 = 0;
            do
            {
                int l3 = abyte0.length;
                if (k3 >= l3)
                {
                    bundle.putByteArray(s, abyte0);
                    return;
                }
                abyte0[k3] = (byte)jsonarray7.getInt(k3);
                k3++;
            } while (true);
        }
        if (s1.equals("short"))
        {
            bundle.putShort(s, (short)jsonobject.getInt("value"));
            return;
        }
        if (s1.equals("short[]"))
        {
            JSONArray jsonarray6 = jsonobject.getJSONArray("value");
            short aword0[] = new short[jsonarray6.length()];
            int i3 = 0;
            do
            {
                int j3 = aword0.length;
                if (i3 >= j3)
                {
                    bundle.putShortArray(s, aword0);
                    return;
                }
                aword0[i3] = (short)jsonarray6.getInt(i3);
                i3++;
            } while (true);
        }
        if (s1.equals("int"))
        {
            bundle.putInt(s, jsonobject.getInt("value"));
            return;
        }
        if (s1.equals("int[]"))
        {
            JSONArray jsonarray5 = jsonobject.getJSONArray("value");
            int ai[] = new int[jsonarray5.length()];
            int k2 = 0;
            do
            {
                int l2 = ai.length;
                if (k2 >= l2)
                {
                    bundle.putIntArray(s, ai);
                    return;
                }
                ai[k2] = jsonarray5.getInt(k2);
                k2++;
            } while (true);
        }
        if (s1.equals("long"))
        {
            bundle.putLong(s, jsonobject.getLong("value"));
            return;
        }
        if (s1.equals("long[]"))
        {
            JSONArray jsonarray4 = jsonobject.getJSONArray("value");
            long al[] = new long[jsonarray4.length()];
            int i2 = 0;
            do
            {
                int j2 = al.length;
                if (i2 >= j2)
                {
                    bundle.putLongArray(s, al);
                    return;
                }
                al[i2] = jsonarray4.getLong(i2);
                i2++;
            } while (true);
        }
        if (s1.equals("float"))
        {
            bundle.putFloat(s, (float)jsonobject.getDouble("value"));
            return;
        }
        if (s1.equals("float[]"))
        {
            JSONArray jsonarray3 = jsonobject.getJSONArray("value");
            float af[] = new float[jsonarray3.length()];
            int k1 = 0;
            do
            {
                int l1 = af.length;
                if (k1 >= l1)
                {
                    bundle.putFloatArray(s, af);
                    return;
                }
                af[k1] = (float)jsonarray3.getDouble(k1);
                k1++;
            } while (true);
        }
        if (s1.equals("double"))
        {
            bundle.putDouble(s, jsonobject.getDouble("value"));
            return;
        }
        if (s1.equals("double[]"))
        {
            JSONArray jsonarray2 = jsonobject.getJSONArray("value");
            double ad[] = new double[jsonarray2.length()];
            int i1 = 0;
            do
            {
                int j1 = ad.length;
                if (i1 >= j1)
                {
                    bundle.putDoubleArray(s, ad);
                    return;
                }
                ad[i1] = jsonarray2.getDouble(i1);
                i1++;
            } while (true);
        }
        if (!s1.equals("char"))
        {
            break; /* Loop/switch isn't completed */
        }
        String s4 = jsonobject.getString("value");
        if (s4 != null && s4.length() == 1)
        {
            bundle.putChar(s, s4.charAt(0));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (s1.equals("char[]"))
        {
            JSONArray jsonarray1 = jsonobject.getJSONArray("value");
            char ac[] = new char[jsonarray1.length()];
            int k = 0;
            do
            {
                int l = ac.length;
                if (k >= l)
                {
                    bundle.putCharArray(s, ac);
                    return;
                }
                String s3 = jsonarray1.getString(k);
                if (s3 != null && s3.length() == 1)
                {
                    ac[k] = s3.charAt(0);
                }
                k++;
            } while (true);
        }
        if (s1.equals("string"))
        {
            bundle.putString(s, jsonobject.getString("value"));
            return;
        }
        if (s1.equals("stringList"))
        {
            JSONArray jsonarray = jsonobject.getJSONArray("value");
            int i = jsonarray.length();
            ArrayList arraylist = new ArrayList(i);
            int j = 0;
            do
            {
                if (j >= i)
                {
                    bundle.putStringArrayList(s, arraylist);
                    return;
                }
                Object obj = jsonarray.get(j);
                String s2;
                if (obj == JSONObject.NULL)
                {
                    s2 = null;
                } else
                {
                    s2 = (String)obj;
                }
                arraylist.add(j, s2);
                j++;
            } while (true);
        }
        if (s1.equals("enum"))
        {
            try
            {
                bundle.putSerializable(s, Enum.valueOf(Class.forName(jsonobject.getString("enumType")), jsonobject.getString("value")));
                return;
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                return;
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                return;
            }
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private void serializeKey(String s, Bundle bundle, android.content.SharedPreferences.Editor editor)
        throws JSONException
    {
        Object obj = bundle.get(s);
        if (obj != null)
        {
            JSONArray jsonarray = null;
            JSONObject jsonobject = new JSONObject();
            String s1;
            if (obj instanceof Byte)
            {
                s1 = "byte";
                jsonobject.put("value", ((Byte)obj).intValue());
            } else
            if (obj instanceof Short)
            {
                s1 = "short";
                jsonobject.put("value", ((Short)obj).intValue());
                jsonarray = null;
            } else
            if (obj instanceof Integer)
            {
                s1 = "int";
                jsonobject.put("value", ((Integer)obj).intValue());
                jsonarray = null;
            } else
            if (obj instanceof Long)
            {
                s1 = "long";
                jsonobject.put("value", ((Long)obj).longValue());
                jsonarray = null;
            } else
            if (obj instanceof Float)
            {
                s1 = "float";
                jsonobject.put("value", ((Float)obj).doubleValue());
                jsonarray = null;
            } else
            if (obj instanceof Double)
            {
                s1 = "double";
                jsonobject.put("value", ((Double)obj).doubleValue());
                jsonarray = null;
            } else
            if (obj instanceof Boolean)
            {
                s1 = "bool";
                jsonobject.put("value", ((Boolean)obj).booleanValue());
                jsonarray = null;
            } else
            if (obj instanceof Character)
            {
                s1 = "char";
                jsonobject.put("value", obj.toString());
                jsonarray = null;
            } else
            if (obj instanceof String)
            {
                s1 = "string";
                jsonobject.put("value", (String)obj);
                jsonarray = null;
            } else
            if (obj instanceof Enum)
            {
                s1 = "enum";
                jsonobject.put("value", obj.toString());
                jsonobject.put("enumType", obj.getClass().getName());
                jsonarray = null;
            } else
            {
                jsonarray = new JSONArray();
                if (obj instanceof byte[])
                {
                    s1 = "byte[]";
                    byte abyte0[] = (byte[])obj;
                    int k3 = abyte0.length;
                    int l3 = 0;
                    while (l3 < k3) 
                    {
                        jsonarray.put(abyte0[l3]);
                        l3++;
                    }
                } else
                if (obj instanceof short[])
                {
                    s1 = "short[]";
                    short aword0[] = (short[])obj;
                    int i3 = aword0.length;
                    int j3 = 0;
                    while (j3 < i3) 
                    {
                        jsonarray.put(aword0[j3]);
                        j3++;
                    }
                } else
                if (obj instanceof int[])
                {
                    s1 = "int[]";
                    int ai[] = (int[])obj;
                    int k2 = ai.length;
                    int l2 = 0;
                    while (l2 < k2) 
                    {
                        jsonarray.put(ai[l2]);
                        l2++;
                    }
                } else
                if (obj instanceof long[])
                {
                    s1 = "long[]";
                    long al[] = (long[])obj;
                    int i2 = al.length;
                    int j2 = 0;
                    while (j2 < i2) 
                    {
                        jsonarray.put(al[j2]);
                        j2++;
                    }
                } else
                if (obj instanceof float[])
                {
                    s1 = "float[]";
                    float af[] = (float[])obj;
                    int k1 = af.length;
                    int l1 = 0;
                    while (l1 < k1) 
                    {
                        jsonarray.put(af[l1]);
                        l1++;
                    }
                } else
                if (obj instanceof double[])
                {
                    s1 = "double[]";
                    double ad[] = (double[])obj;
                    int i1 = ad.length;
                    int j1 = 0;
                    while (j1 < i1) 
                    {
                        jsonarray.put(ad[j1]);
                        j1++;
                    }
                } else
                if (obj instanceof boolean[])
                {
                    s1 = "bool[]";
                    boolean aflag[] = (boolean[])obj;
                    int k = aflag.length;
                    int l = 0;
                    while (l < k) 
                    {
                        jsonarray.put(aflag[l]);
                        l++;
                    }
                } else
                if (obj instanceof char[])
                {
                    s1 = "char[]";
                    char ac[] = (char[])obj;
                    int i = ac.length;
                    int j = 0;
                    while (j < i) 
                    {
                        jsonarray.put(String.valueOf(ac[j]));
                        j++;
                    }
                } else
                if (obj instanceof List)
                {
                    s1 = "stringList";
                    Iterator iterator = ((List)obj).iterator();
                    while (iterator.hasNext()) 
                    {
                        String s2 = (String)iterator.next();
                        Object obj1;
                        if (s2 == null)
                        {
                            obj1 = JSONObject.NULL;
                        } else
                        {
                            obj1 = s2;
                        }
                        jsonarray.put(obj1);
                    }
                } else
                {
                    jsonarray = null;
                    s1 = null;
                }
            }
            if (s1 != null)
            {
                jsonobject.put("valueType", s1);
                if (jsonarray != null)
                {
                    jsonobject.putOpt("value", jsonarray);
                }
                editor.putString(s, jsonobject.toString());
                return;
            }
        }
    }

    public void clear()
    {
        cache.edit().clear().commit();
    }

    public Bundle load()
    {
        Bundle bundle = new Bundle();
        Iterator iterator = cache.getAll().keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return bundle;
            }
            String s = (String)iterator.next();
            try
            {
                deserializeKey(s, bundle);
            }
            catch (JSONException jsonexception)
            {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error reading cached value for key: '")).append(s).append("' -- ").append(jsonexception).toString());
                return null;
            }
        } while (true);
    }

    public void save(Bundle bundle)
    {
        Validate.notNull(bundle, "bundle");
        android.content.SharedPreferences.Editor editor = cache.edit();
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if (!editor.commit())
                {
                    Logger.log(LoggingBehavior.CACHE, 5, TAG, "SharedPreferences.Editor.commit() was not successful");
                }
                return;
            }
            String s = (String)iterator.next();
            try
            {
                serializeKey(s, bundle, editor);
            }
            catch (JSONException jsonexception)
            {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error processing value for key: '")).append(s).append("' -- ").append(jsonexception).toString());
                return;
            }
        } while (true);
    }

}
