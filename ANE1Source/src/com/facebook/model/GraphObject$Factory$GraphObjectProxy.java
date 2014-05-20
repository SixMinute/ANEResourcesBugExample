// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.model;

import com.facebook.internal.Utility;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.model:
//            CreateGraphObject, GraphObject, GraphObjectList, PropertyName, 
//            JsonUtil

private static final class graphObjectClass extends graphObjectClass
{

    private static final String CASTTOMAP_METHOD = "asMap";
    private static final String CAST_METHOD = "cast";
    private static final String CLEAR_METHOD = "clear";
    private static final String CONTAINSKEY_METHOD = "containsKey";
    private static final String CONTAINSVALUE_METHOD = "containsValue";
    private static final String ENTRYSET_METHOD = "entrySet";
    private static final String GETINNERJSONOBJECT_METHOD = "getInnerJSONObject";
    private static final String GETPROPERTYASLIST_METHOD = "getPropertyAsList";
    private static final String GETPROPERTYAS_METHOD = "getPropertyAs";
    private static final String GETPROPERTY_METHOD = "getProperty";
    private static final String GET_METHOD = "get";
    private static final String ISEMPTY_METHOD = "isEmpty";
    private static final String KEYSET_METHOD = "keySet";
    private static final String PUTALL_METHOD = "putAll";
    private static final String PUT_METHOD = "put";
    private static final String REMOVEPROPERTY_METHOD = "removeProperty";
    private static final String REMOVE_METHOD = "remove";
    private static final String SETPROPERTY_METHOD = "setProperty";
    private static final String SIZE_METHOD = "size";
    private static final String VALUES_METHOD = "values";
    private final Class graphObjectClass;

    private Object createGraphObjectsFromParameters(CreateGraphObject creategraphobject, Object obj)
    {
        if (creategraphobject == null || Utility.isNullOrEmpty(creategraphobject.value())) goto _L2; else goto _L1
_L1:
        String s = creategraphobject.value();
        if (!java/util/List.isAssignableFrom(obj.getClass())) goto _L4; else goto _L3
_L3:
        GraphObjectList graphobjectlist;
        Iterator iterator;
        graphobjectlist = graphObjectClass(com/facebook/model/GraphObject);
        iterator = ((List)obj).iterator();
_L7:
        if (iterator.hasNext()) goto _L6; else goto _L5
_L5:
        obj = graphobjectlist;
_L2:
        return obj;
_L6:
        Object obj1 = iterator.next();
        GraphObject graphobject1 = graphObjectClass();
        graphobject1.setProperty(s, obj1);
        graphobjectlist.add(graphobject1);
        if (true) goto _L7; else goto _L4
_L4:
        GraphObject graphobject = graphObjectClass();
        graphobject.setProperty(s, obj);
        return graphobject;
    }

    private final Object proxyGraphObjectGettersAndSetters(Method method, Object aobj[])
        throws JSONException
    {
        String s = method.getName();
        int i = method.getParameterTypes().length;
        PropertyName propertyname = (PropertyName)method.getAnnotation(com/facebook/model/PropertyName);
        String s1;
        if (propertyname != null)
        {
            s1 = propertyname.value();
        } else
        {
            s1 = oLowercaseWithUnderscores(s.substring(3));
        }
        if (i == 0)
        {
            Object obj1 = ((JSONObject)state).opt(s1);
            Class class1 = method.getReturnType();
            Type type = method.getGenericReturnType();
            boolean flag = type instanceof ParameterizedType;
            ParameterizedType parameterizedtype = null;
            if (flag)
            {
                parameterizedtype = (ParameterizedType)type;
            }
            return ctedType(obj1, class1, parameterizedtype);
        }
        if (i == 1)
        {
            Object obj = ctedType(createGraphObjectsFromParameters((CreateGraphObject)method.getAnnotation(com/facebook/model/CreateGraphObject), aobj[0]));
            ((JSONObject)state).putOpt(s1, obj);
            return null;
        } else
        {
            return throwUnexpectedMethodSignature(method);
        }
    }

    private final Object proxyGraphObjectMethods(Object obj, Method method, Object aobj[])
    {
        String s = method.getName();
        if (s.equals("cast"))
        {
            Class class1 = (Class)aobj[0];
            if (class1 != null && class1.isAssignableFrom(graphObjectClass))
            {
                return obj;
            } else
            {
                return graphObjectClass(class1, (JSONObject)state);
            }
        }
        if (s.equals("getInnerJSONObject"))
        {
            return ((state)Proxy.getInvocationHandler(obj)).state;
        }
        if (s.equals("asMap"))
        {
            return state((JSONObject)state);
        }
        if (s.equals("getProperty"))
        {
            return ((JSONObject)state).opt((String)aobj[0]);
        }
        if (s.equals("getPropertyAs"))
        {
            return ctedType(((JSONObject)state).opt((String)aobj[0]), (Class)aobj[1], null);
        }
        if (s.equals("getPropertyAsList"))
        {
            return ctedType(((JSONObject)state).opt((String)aobj[0]), com/facebook/model/GraphObjectList, new ParameterizedType() {

                final GraphObject.Factory.GraphObjectProxy this$2;
                private final Class val$expectedType;

                public Type[] getActualTypeArguments()
                {
                    Type atype[] = new Type[1];
                    atype[0] = expectedType;
                    return atype;
                }

                public Type getOwnerType()
                {
                    return null;
                }

                public Type getRawType()
                {
                    return com/facebook/model/GraphObjectList;
                }

            
            {
                this$2 = GraphObject.Factory.GraphObjectProxy.this;
                expectedType = class1;
                super();
            }
            });
        }
        if (s.equals("setProperty"))
        {
            return setJSONProperty(aobj);
        }
        if (s.equals("removeProperty"))
        {
            ((JSONObject)state).remove((String)aobj[0]);
            return null;
        } else
        {
            return throwUnexpectedMethodSignature(method);
        }
    }

    private final Object proxyMapMethods(Method method, Object aobj[])
    {
        String s = method.getName();
        if (s.equals("clear"))
        {
            JsonUtil.jsonObjectClear((JSONObject)state);
            return null;
        }
        if (s.equals("containsKey"))
        {
            return Boolean.valueOf(((JSONObject)state).has((String)aobj[0]));
        }
        if (s.equals("containsValue"))
        {
            return Boolean.valueOf(JsonUtil.jsonObjectContainsValue((JSONObject)state, aobj[0]));
        }
        if (s.equals("entrySet"))
        {
            return JsonUtil.jsonObjectEntrySet((JSONObject)state);
        }
        if (s.equals("get"))
        {
            return ((JSONObject)state).opt((String)aobj[0]);
        }
        if (s.equals("isEmpty"))
        {
            if (((JSONObject)state).length() == 0)
            {
                return Boolean.valueOf(true);
            } else
            {
                return Boolean.valueOf(false);
            }
        }
        if (s.equals("keySet"))
        {
            return JsonUtil.jsonObjectKeySet((JSONObject)state);
        }
        if (s.equals("put"))
        {
            return setJSONProperty(aobj);
        }
        if (s.equals("putAll"))
        {
            Map map;
            if (aobj[0] instanceof Map)
            {
                map = (Map)aobj[0];
            } else
            if (aobj[0] instanceof GraphObject)
            {
                map = ((GraphObject)aobj[0]).asMap();
            } else
            {
                return null;
            }
            JsonUtil.jsonObjectPutAll((JSONObject)state, map);
            return null;
        }
        if (s.equals("remove"))
        {
            ((JSONObject)state).remove((String)aobj[0]);
            return null;
        }
        if (s.equals("size"))
        {
            return Integer.valueOf(((JSONObject)state).length());
        }
        if (s.equals("values"))
        {
            return JsonUtil.jsonObjectValues((JSONObject)state);
        } else
        {
            return throwUnexpectedMethodSignature(method);
        }
    }

    private Object setJSONProperty(Object aobj[])
    {
        String s = (String)aobj[0];
        Object obj = throwUnexpectedMethodSignature(aobj[1]);
        try
        {
            ((JSONObject)state).putOpt(s, obj);
        }
        catch (JSONException jsonexception)
        {
            throw new IllegalArgumentException(jsonexception);
        }
        return null;
    }

    public final Object invoke(Object obj, Method method, Object aobj[])
        throws Throwable
    {
        Class class1 = method.getDeclaringClass();
        if (class1 == java/lang/Object)
        {
            return proxyObjectMethods(obj, method, aobj);
        }
        if (class1 == java/util/Map)
        {
            return proxyMapMethods(method, aobj);
        }
        if (class1 == com/facebook/model/GraphObject)
        {
            return proxyGraphObjectMethods(obj, method, aobj);
        }
        if (com/facebook/model/GraphObject.isAssignableFrom(class1))
        {
            return proxyGraphObjectGettersAndSetters(method, aobj);
        } else
        {
            return throwUnexpectedMethodSignature(method);
        }
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = graphObjectClass.getSimpleName();
        aobj[1] = state;
        return String.format("GraphObject{graphObjectClass=%s, state=%s}", aobj);
    }

    public _cls1.val.expectedType(JSONObject jsonobject, Class class1)
    {
        super(jsonobject);
        graphObjectClass = class1;
    }
}
