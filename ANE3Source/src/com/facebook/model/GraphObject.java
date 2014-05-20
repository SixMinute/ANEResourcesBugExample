// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.model;

import com.facebook.FacebookGraphObjectException;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.model:
//            GraphObjectList, PropertyName, CreateGraphObject, JsonUtil

public interface GraphObject
{
    public static final class Factory
    {

        private static final SimpleDateFormat dateFormats[];
        private static final HashSet verifiedGraphObjectClasses = new HashSet();

        static Object coerceValueToExpectedType(Object obj, Class class1, ParameterizedType parameterizedtype)
        {
            int i;
            Class class2;
            i = 0;
            if (obj == null)
            {
                if (Boolean.TYPE.equals(class1))
                {
                    return Boolean.valueOf(false);
                }
                if (Character.TYPE.equals(class1))
                {
                    return Character.valueOf('\0');
                }
                if (class1.isPrimitive())
                {
                    return Integer.valueOf(0);
                } else
                {
                    return null;
                }
            }
            class2 = obj.getClass();
            if (class1.isAssignableFrom(class2))
            {
                return obj;
            }
            if (class1.isPrimitive())
            {
                return obj;
            }
            if (com/facebook/model/GraphObject.isAssignableFrom(class1))
            {
                if (org/json/JSONObject.isAssignableFrom(class2))
                {
                    return createGraphObjectProxy(class1, (JSONObject)obj);
                }
                if (com/facebook/model/GraphObject.isAssignableFrom(class2))
                {
                    return ((GraphObject)obj).cast(class1);
                } else
                {
                    throw new FacebookGraphObjectException((new StringBuilder("Can't create GraphObject from ")).append(class2.getName()).toString());
                }
            }
            if (java/lang/Iterable.equals(class1) || java/util/Collection.equals(class1) || java/util/List.equals(class1) || com/facebook/model/GraphObjectList.equals(class1))
            {
                if (parameterizedtype == null)
                {
                    throw new FacebookGraphObjectException((new StringBuilder("can't infer generic type of: ")).append(class1.toString()).toString());
                }
                Type atype[] = parameterizedtype.getActualTypeArguments();
                if (atype == null || atype.length != 1 || !(atype[0] instanceof Class))
                {
                    throw new FacebookGraphObjectException("Expect collection properties to be of a type with exactly one generic parameter.");
                }
                Class class3 = (Class)atype[0];
                if (org/json/JSONArray.isAssignableFrom(class2))
                {
                    return createList((JSONArray)obj, class3);
                } else
                {
                    throw new FacebookGraphObjectException((new StringBuilder("Can't create Collection from ")).append(class2.getName()).toString());
                }
            }
            if (!java/lang/String.equals(class1)) goto _L2; else goto _L1
_L1:
            if (java/lang/Double.isAssignableFrom(class2) || java/lang/Float.isAssignableFrom(class2))
            {
                return String.format("%f", new Object[] {
                    obj
                });
            }
            if (java/lang/Number.isAssignableFrom(class2))
            {
                return String.format("%d", new Object[] {
                    obj
                });
            }
              goto _L3
_L2:
            if (!java/util/Date.equals(class1) || !java/lang/String.isAssignableFrom(class2)) goto _L3; else goto _L4
_L4:
            SimpleDateFormat asimpledateformat[];
            int j;
            asimpledateformat = dateFormats;
            j = asimpledateformat.length;
_L7:
            if (i < j) goto _L5; else goto _L3
_L3:
            throw new FacebookGraphObjectException((new StringBuilder("Can't convert type")).append(class2.getName()).append(" to ").append(class1.getName()).toString());
_L5:
            SimpleDateFormat simpledateformat = asimpledateformat[i];
            Date date = simpledateformat.parse((String)obj);
            if (date != null)
            {
                return date;
            }
            break MISSING_BLOCK_LABEL_486;
            ParseException parseexception;
            parseexception;
            i++;
            if (true) goto _L7; else goto _L6
_L6:
        }

        static String convertCamelCaseToLowercaseWithUnderscores(String s)
        {
            return s.replaceAll("([a-z])([A-Z])", "$1_$2").toLowerCase(Locale.US);
        }

        public static GraphObject create()
        {
            return create(com/facebook/model/GraphObject);
        }

        public static GraphObject create(Class class1)
        {
            return createGraphObjectProxy(class1, new JSONObject());
        }

        public static GraphObject create(JSONObject jsonobject)
        {
            return create(jsonobject, com/facebook/model/GraphObject);
        }

        public static GraphObject create(JSONObject jsonobject, Class class1)
        {
            return createGraphObjectProxy(class1, jsonobject);
        }

        private static GraphObject createGraphObjectProxy(Class class1, JSONObject jsonobject)
        {
            verifyCanProxyClass(class1);
            Class aclass[] = {
                class1
            };
            GraphObjectProxy graphobjectproxy = new GraphObjectProxy(jsonobject, class1);
            return (GraphObject)Proxy.newProxyInstance(com/facebook/model/GraphObject.getClassLoader(), aclass, graphobjectproxy);
        }

        private static Map createGraphObjectProxyForMap(JSONObject jsonobject)
        {
            Class aclass[] = {
                java/util/Map
            };
            GraphObjectProxy graphobjectproxy = new GraphObjectProxy(jsonobject, java/util/Map);
            return (Map)Proxy.newProxyInstance(com/facebook/model/GraphObject.getClassLoader(), aclass, graphobjectproxy);
        }

        public static GraphObjectList createList(Class class1)
        {
            return createList(new JSONArray(), class1);
        }

        public static GraphObjectList createList(JSONArray jsonarray, Class class1)
        {
            return new GraphObjectListImpl(jsonarray, class1);
        }

        private static Object getUnderlyingJSONObject(Object obj)
        {
            if (obj == null)
            {
                return null;
            }
            Class class1 = obj.getClass();
            if (com/facebook/model/GraphObject.isAssignableFrom(class1))
            {
                return ((GraphObject)obj).getInnerJSONObject();
            }
            if (com/facebook/model/GraphObjectList.isAssignableFrom(class1))
            {
                return ((GraphObjectList)obj).getInnerJSONArray();
            }
            if (java/lang/Iterable.isAssignableFrom(class1))
            {
                JSONArray jsonarray = new JSONArray();
                Iterator iterator = ((Iterable)obj).iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        return jsonarray;
                    }
                    Object obj1 = iterator.next();
                    if (com/facebook/model/GraphObject.isAssignableFrom(obj1.getClass()))
                    {
                        jsonarray.put(((GraphObject)obj1).getInnerJSONObject());
                    } else
                    {
                        jsonarray.put(obj1);
                    }
                } while (true);
            } else
            {
                return obj;
            }
        }

        private static boolean hasClassBeenVerified(Class class1)
        {
            com/facebook/model/GraphObject$Factory;
            JVM INSTR monitorenter ;
            boolean flag = verifiedGraphObjectClasses.contains(class1);
            com/facebook/model/GraphObject$Factory;
            JVM INSTR monitorexit ;
            return flag;
            Exception exception;
            exception;
            throw exception;
        }

        public static boolean hasSameId(GraphObject graphobject, GraphObject graphobject1)
        {
            if (graphobject == null || graphobject1 == null || !graphobject.asMap().containsKey("id") || !graphobject1.asMap().containsKey("id"))
            {
                return false;
            }
            if (graphobject.equals(graphobject1))
            {
                return true;
            }
            Object obj = graphobject.getProperty("id");
            Object obj1 = graphobject1.getProperty("id");
            if (obj == null || obj1 == null || !(obj instanceof String) || !(obj1 instanceof String))
            {
                return false;
            } else
            {
                return obj.equals(obj1);
            }
        }

        private static void recordClassHasBeenVerified(Class class1)
        {
            com/facebook/model/GraphObject$Factory;
            JVM INSTR monitorenter ;
            verifiedGraphObjectClasses.add(class1);
            com/facebook/model/GraphObject$Factory;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        private static void verifyCanProxyClass(Class class1)
        {
            Method amethod[];
            int i;
            int j;
            if (hasClassBeenVerified(class1))
            {
                return;
            }
            if (!class1.isInterface())
            {
                throw new FacebookGraphObjectException((new StringBuilder("Factory can only wrap interfaces, not class: ")).append(class1.getName()).toString());
            }
            amethod = class1.getMethods();
            i = amethod.length;
            j = 0;
_L2:
            Method method;
            String s;
            int k;
            Class class2;
            boolean flag;
            if (j >= i)
            {
                recordClassHasBeenVerified(class1);
                return;
            }
            method = amethod[j];
            s = method.getName();
            k = method.getParameterTypes().length;
            class2 = method.getReturnType();
            flag = method.isAnnotationPresent(com/facebook/model/PropertyName);
              goto _L1
_L3:
            j++;
            if (true) goto _L2; else goto _L1
_L1:
            if (!method.getDeclaringClass().isAssignableFrom(com/facebook/model/GraphObject) && (k != 1 || class2 != Void.TYPE ? k != 0 || class2 == Void.TYPE || (flag ? Utility.isNullOrEmpty(((PropertyName)method.getAnnotation(com/facebook/model/PropertyName)).value()) : !s.startsWith("get") || s.length() <= 3) : flag ? Utility.isNullOrEmpty(((PropertyName)method.getAnnotation(com/facebook/model/PropertyName)).value()) : !s.startsWith("set") || s.length() <= 3)) goto _L4; else goto _L3
_L4:
            throw new FacebookGraphObjectException((new StringBuilder("Factory can't proxy method: ")).append(method.toString()).toString());
        }

        static 
        {
            SimpleDateFormat asimpledateformat[] = new SimpleDateFormat[3];
            asimpledateformat[0] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US);
            asimpledateformat[1] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
            asimpledateformat[2] = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            dateFormats = asimpledateformat;
        }




        private Factory()
        {
        }
    }

    private static final class Factory.GraphObjectListImpl extends AbstractList
        implements GraphObjectList
    {

        private final Class itemType;
        private final JSONArray state;

        private void checkIndex(int i)
        {
            if (i < 0 || i >= state.length())
            {
                throw new IndexOutOfBoundsException();
            } else
            {
                return;
            }
        }

        private void put(int i, Object obj)
        {
            Object obj1 = Factory.getUnderlyingJSONObject(obj);
            try
            {
                state.put(i, obj1);
                return;
            }
            catch (JSONException jsonexception)
            {
                throw new IllegalArgumentException(jsonexception);
            }
        }

        public void add(int i, Object obj)
        {
            if (i < 0)
            {
                throw new IndexOutOfBoundsException();
            }
            if (i < size())
            {
                throw new UnsupportedOperationException("Only adding items at the end of the list is supported.");
            } else
            {
                put(i, obj);
                return;
            }
        }

        public final GraphObjectList castToListOf(Class class1)
        {
            if (com/facebook/model/GraphObject.isAssignableFrom(itemType))
            {
                if (class1.isAssignableFrom(itemType))
                {
                    return this;
                } else
                {
                    return Factory.createList(state, class1);
                }
            } else
            {
                throw new FacebookGraphObjectException((new StringBuilder("Can't cast GraphObjectCollection of non-GraphObject type ")).append(itemType).toString());
            }
        }

        public void clear()
        {
            throw new UnsupportedOperationException();
        }

        public boolean equals(Object obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            } else
            {
                Factory.GraphObjectListImpl graphobjectlistimpl = (Factory.GraphObjectListImpl)obj;
                return state.equals(graphobjectlistimpl.state);
            }
        }

        public Object get(int i)
        {
            checkIndex(i);
            return Factory.coerceValueToExpectedType(state.opt(i), itemType, null);
        }

        public final JSONArray getInnerJSONArray()
        {
            return state;
        }

        public int hashCode()
        {
            return state.hashCode();
        }

        public boolean remove(Object obj)
        {
            throw new UnsupportedOperationException();
        }

        public boolean removeAll(Collection collection)
        {
            throw new UnsupportedOperationException();
        }

        public boolean retainAll(Collection collection)
        {
            throw new UnsupportedOperationException();
        }

        public Object set(int i, Object obj)
        {
            checkIndex(i);
            Object obj1 = get(i);
            put(i, obj);
            return obj1;
        }

        public int size()
        {
            return state.length();
        }

        public String toString()
        {
            Object aobj[] = new Object[2];
            aobj[0] = itemType.getSimpleName();
            aobj[1] = state;
            return String.format("GraphObjectList{itemType=%s, state=%s}", aobj);
        }

        public Factory.GraphObjectListImpl(JSONArray jsonarray, Class class1)
        {
            Validate.notNull(jsonarray, "state");
            Validate.notNull(class1, "itemType");
            state = jsonarray;
            itemType = class1;
        }
    }

    private static final class Factory.GraphObjectProxy extends Factory.ProxyBase
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
            graphobjectlist = Factory.createList(com/facebook/model/GraphObject);
            iterator = ((List)obj).iterator();
_L7:
            if (iterator.hasNext()) goto _L6; else goto _L5
_L5:
            obj = graphobjectlist;
_L2:
            return obj;
_L6:
            Object obj1 = iterator.next();
            GraphObject graphobject1 = Factory.create();
            graphobject1.setProperty(s, obj1);
            graphobjectlist.add(graphobject1);
            if (true) goto _L7; else goto _L4
_L4:
            GraphObject graphobject = Factory.create();
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
                s1 = Factory.convertCamelCaseToLowercaseWithUnderscores(s.substring(3));
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
                return Factory.coerceValueToExpectedType(obj1, class1, parameterizedtype);
            }
            if (i == 1)
            {
                Object obj = Factory.getUnderlyingJSONObject(createGraphObjectsFromParameters((CreateGraphObject)method.getAnnotation(com/facebook/model/CreateGraphObject), aobj[0]));
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
                    return Factory.createGraphObjectProxy(class1, (JSONObject)state);
                }
            }
            if (s.equals("getInnerJSONObject"))
            {
                return ((Factory.GraphObjectProxy)Proxy.getInvocationHandler(obj)).state;
            }
            if (s.equals("asMap"))
            {
                return Factory.createGraphObjectProxyForMap((JSONObject)state);
            }
            if (s.equals("getProperty"))
            {
                return ((JSONObject)state).opt((String)aobj[0]);
            }
            if (s.equals("getPropertyAs"))
            {
                return Factory.coerceValueToExpectedType(((JSONObject)state).opt((String)aobj[0]), (Class)aobj[1], null);
            }
            if (s.equals("getPropertyAsList"))
            {
                return Factory.coerceValueToExpectedType(((JSONObject)state).opt((String)aobj[0]), com/facebook/model/GraphObjectList, ((Class)aobj[1]). new ParameterizedType() {

                    final Factory.GraphObjectProxy this$2;
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
                this$2 = final_graphobjectproxy;
                expectedType = Class.this;
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
            Object obj = Factory.getUnderlyingJSONObject(aobj[1]);
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

        public Factory.GraphObjectProxy(JSONObject jsonobject, Class class1)
        {
            super(jsonobject);
            graphObjectClass = class1;
        }
    }

    private static abstract class Factory.ProxyBase
        implements InvocationHandler
    {

        private static final String EQUALS_METHOD = "equals";
        private static final String TOSTRING_METHOD = "toString";
        protected final Object state;

        protected final Object proxyObjectMethods(Object obj, Method method, Object aobj[])
            throws Throwable
        {
            String s = method.getName();
            if (s.equals("equals"))
            {
                Object obj1 = aobj[0];
                if (obj1 == null)
                {
                    return Boolean.valueOf(false);
                }
                InvocationHandler invocationhandler = Proxy.getInvocationHandler(obj1);
                if (!(invocationhandler instanceof Factory.GraphObjectProxy))
                {
                    return Boolean.valueOf(false);
                } else
                {
                    Factory.GraphObjectProxy graphobjectproxy = (Factory.GraphObjectProxy)invocationhandler;
                    return Boolean.valueOf(state.equals(graphobjectproxy.state));
                }
            }
            if (s.equals("toString"))
            {
                return toString();
            } else
            {
                return method.invoke(state, aobj);
            }
        }

        protected final Object throwUnexpectedMethodSignature(Method method)
        {
            throw new FacebookGraphObjectException((new StringBuilder(String.valueOf(getClass().getName()))).append(" got an unexpected method signature: ").append(method.toString()).toString());
        }

        protected Factory.ProxyBase(Object obj)
        {
            state = obj;
        }
    }


    public abstract Map asMap();

    public abstract GraphObject cast(Class class1);

    public abstract JSONObject getInnerJSONObject();

    public abstract Object getProperty(String s);

    public abstract GraphObject getPropertyAs(String s, Class class1);

    public abstract GraphObjectList getPropertyAsList(String s, Class class1);

    public abstract void removeProperty(String s);

    public abstract void setProperty(String s, Object obj);
}
