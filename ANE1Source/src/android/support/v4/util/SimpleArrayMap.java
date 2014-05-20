// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.util;

import java.util.Map;

// Referenced classes of package android.support.v4.util:
//            ContainerHelpers, ArrayMap

public class SimpleArrayMap
{

    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final String TAG = "ArrayMap";
    static Object mBaseCache[];
    static int mBaseCacheSize;
    static Object mTwiceBaseCache[];
    static int mTwiceBaseCacheSize;
    Object mArray[];
    int mHashes[];
    int mSize;

    public SimpleArrayMap()
    {
        mHashes = ContainerHelpers.EMPTY_INTS;
        mArray = ContainerHelpers.EMPTY_OBJECTS;
        mSize = 0;
    }

    public SimpleArrayMap(int i)
    {
        if (i == 0)
        {
            mHashes = ContainerHelpers.EMPTY_INTS;
            mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else
        {
            allocArrays(i);
        }
        mSize = 0;
    }

    public SimpleArrayMap(SimpleArrayMap simplearraymap)
    {
        this();
        if (simplearraymap != null)
        {
            putAll(simplearraymap);
        }
    }

    private void allocArrays(int i)
    {
        if (i != 8) goto _L2; else goto _L1
_L1:
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorenter ;
        if (mTwiceBaseCache == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        Object aobj1[] = mTwiceBaseCache;
        mArray = aobj1;
        mTwiceBaseCache = (Object[])(Object[])aobj1[0];
        mHashes = (int[])(int[])aobj1[1];
        aobj1[1] = null;
        aobj1[0] = null;
        mTwiceBaseCacheSize--;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
        return;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
_L4:
        mHashes = new int[i];
        mArray = new Object[i << 1];
        return;
        Exception exception1;
        exception1;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
        throw exception1;
_L2:
        if (i != 4) goto _L4; else goto _L3
_L3:
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorenter ;
        if (mBaseCache == null)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        Object aobj[] = mBaseCache;
        mArray = aobj;
        mBaseCache = (Object[])(Object[])aobj[0];
        mHashes = (int[])(int[])aobj[1];
        aobj[1] = null;
        aobj[0] = null;
        mBaseCacheSize--;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
        throw exception;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
          goto _L4
    }

    private static void freeArrays(int ai[], Object aobj[], int i)
    {
        if (ai.length != 8)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorenter ;
        if (mTwiceBaseCacheSize >= 10)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        aobj[0] = ((Object) (mTwiceBaseCache));
        aobj[1] = ai;
        int k = (i << 1) - 1;
_L2:
        if (k < 2)
        {
            break; /* Loop/switch isn't completed */
        }
        aobj[k] = null;
        k--;
        if (true) goto _L2; else goto _L1
_L1:
        mTwiceBaseCache = aobj;
        mTwiceBaseCacheSize = 1 + mTwiceBaseCacheSize;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
        throw exception1;
        if (ai.length != 4)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorenter ;
        if (mBaseCacheSize >= 10)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        aobj[0] = ((Object) (mBaseCache));
        aobj[1] = ai;
        int j = (i << 1) - 1;
_L4:
        if (j < 2)
        {
            break; /* Loop/switch isn't completed */
        }
        aobj[j] = null;
        j--;
        if (true) goto _L4; else goto _L3
_L3:
        mBaseCache = aobj;
        mBaseCacheSize = 1 + mBaseCacheSize;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        android/support/v4/util/ArrayMap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void clear()
    {
        if (mSize != 0)
        {
            freeArrays(mHashes, mArray, mSize);
            mHashes = ContainerHelpers.EMPTY_INTS;
            mArray = ContainerHelpers.EMPTY_OBJECTS;
            mSize = 0;
        }
    }

    public boolean containsKey(Object obj)
    {
        if (obj == null)
        {
            return indexOfNull() >= 0;
        }
        return indexOf(obj, obj.hashCode()) >= 0;
    }

    public boolean containsValue(Object obj)
    {
        return indexOfValue(obj) >= 0;
    }

    public void ensureCapacity(int i)
    {
        if (mHashes.length < i)
        {
            int ai[] = mHashes;
            Object aobj[] = mArray;
            allocArrays(i);
            if (mSize > 0)
            {
                System.arraycopy(ai, 0, mHashes, 0, mSize);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (mArray)), 0, mSize << 1);
            }
            freeArrays(ai, aobj, mSize);
        }
    }

    public boolean equals(Object obj)
    {
        Map map;
        int i;
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Map))
        {
            break MISSING_BLOCK_LABEL_124;
        }
        map = (Map)obj;
        if (size() != map.size())
        {
            return false;
        }
        i = 0;
_L2:
        Object obj1;
        Object obj2;
        Object obj3;
        if (i >= mSize)
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = keyAt(i);
        obj2 = valueAt(i);
        obj3 = map.get(obj1);
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        if (obj3 != null)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        if (!map.containsKey(obj1))
        {
            break MISSING_BLOCK_LABEL_126;
        }
        break MISSING_BLOCK_LABEL_108;
        boolean flag;
        try
        {
            flag = obj2.equals(obj3);
        }
        catch (NullPointerException nullpointerexception)
        {
            return false;
        }
        catch (ClassCastException classcastexception)
        {
            return false;
        }
        if (!flag)
        {
            return false;
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return true;
        return false;
        return false;
    }

    public Object get(Object obj)
    {
        int i;
        if (obj == null)
        {
            i = indexOfNull();
        } else
        {
            i = indexOf(obj, obj.hashCode());
        }
        if (i >= 0)
        {
            return mArray[1 + (i << 1)];
        } else
        {
            return null;
        }
    }

    public int hashCode()
    {
        int ai[] = mHashes;
        Object aobj[] = mArray;
        int i = 0;
        int j = 0;
        int k = 1;
        int l = mSize;
        while (j < l) 
        {
            Object obj = aobj[k];
            int i1 = ai[j];
            int j1;
            if (obj == null)
            {
                j1 = 0;
            } else
            {
                j1 = obj.hashCode();
            }
            i += i1 ^ j1;
            j++;
            k += 2;
        }
        return i;
    }

    int indexOf(Object obj, int i)
    {
        int j = mSize;
        if (j == 0)
        {
            return -1;
        }
        int k = ContainerHelpers.binarySearch(mHashes, j, i);
        if (k < 0)
        {
            return k;
        }
        if (obj.equals(mArray[k << 1]))
        {
            return k;
        }
        int l;
        for (l = k + 1; l < j && mHashes[l] == i; l++)
        {
            if (obj.equals(mArray[l << 1]))
            {
                return l;
            }
        }

        for (int i1 = k - 1; i1 >= 0 && mHashes[i1] == i; i1--)
        {
            if (obj.equals(mArray[i1 << 1]))
            {
                return i1;
            }
        }

        return ~l;
    }

    int indexOfNull()
    {
        int i = mSize;
        if (i == 0)
        {
            return -1;
        }
        int j = ContainerHelpers.binarySearch(mHashes, i, 0);
        if (j < 0)
        {
            return j;
        }
        if (mArray[j << 1] == null)
        {
            return j;
        }
        int k;
        for (k = j + 1; k < i && mHashes[k] == 0; k++)
        {
            if (mArray[k << 1] == null)
            {
                return k;
            }
        }

        for (int l = j - 1; l >= 0 && mHashes[l] == 0; l--)
        {
            if (mArray[l << 1] == null)
            {
                return l;
            }
        }

        return ~k;
    }

    int indexOfValue(Object obj)
    {
        int i = 2 * mSize;
        Object aobj[] = mArray;
        if (obj == null)
        {
            for (int k = 1; k < i; k += 2)
            {
                if (aobj[k] == null)
                {
                    return k >> 1;
                }
            }

        } else
        {
            for (int j = 1; j < i; j += 2)
            {
                if (obj.equals(aobj[j]))
                {
                    return j >> 1;
                }
            }

        }
        return -1;
    }

    public boolean isEmpty()
    {
        return mSize <= 0;
    }

    public Object keyAt(int i)
    {
        return mArray[i << 1];
    }

    public Object put(Object obj, Object obj1)
    {
        int i;
        int j;
        if (obj == null)
        {
            i = 0;
            j = indexOfNull();
        } else
        {
            i = obj.hashCode();
            j = indexOf(obj, i);
        }
        if (j >= 0)
        {
            int i1 = 1 + (j << 1);
            Object obj2 = mArray[i1];
            mArray[i1] = obj1;
            return obj2;
        }
        int k = ~j;
        if (mSize >= mHashes.length)
        {
            int l;
            int ai[];
            Object aobj[];
            if (mSize >= 8)
            {
                l = mSize + (mSize >> 1);
            } else
            if (mSize >= 4)
            {
                l = 8;
            } else
            {
                l = 4;
            }
            ai = mHashes;
            aobj = mArray;
            allocArrays(l);
            if (mHashes.length > 0)
            {
                System.arraycopy(ai, 0, mHashes, 0, ai.length);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (mArray)), 0, aobj.length);
            }
            freeArrays(ai, aobj, mSize);
        }
        if (k < mSize)
        {
            System.arraycopy(mHashes, k, mHashes, k + 1, mSize - k);
            System.arraycopy(((Object) (mArray)), k << 1, ((Object) (mArray)), k + 1 << 1, mSize - k << 1);
        }
        mHashes[k] = i;
        mArray[k << 1] = obj;
        mArray[1 + (k << 1)] = obj1;
        mSize = 1 + mSize;
        return null;
    }

    public void putAll(SimpleArrayMap simplearraymap)
    {
        int i = simplearraymap.mSize;
        ensureCapacity(i + mSize);
        if (mSize == 0)
        {
            if (i > 0)
            {
                System.arraycopy(simplearraymap.mHashes, 0, mHashes, 0, i);
                System.arraycopy(((Object) (simplearraymap.mArray)), 0, ((Object) (mArray)), 0, i << 1);
                mSize = i;
            }
        } else
        {
            int j = 0;
            while (j < i) 
            {
                put(simplearraymap.keyAt(j), simplearraymap.valueAt(j));
                j++;
            }
        }
    }

    public Object remove(Object obj)
    {
        int i;
        if (obj == null)
        {
            i = indexOfNull();
        } else
        {
            i = indexOf(obj, obj.hashCode());
        }
        if (i >= 0)
        {
            return removeAt(i);
        } else
        {
            return null;
        }
    }

    public Object removeAt(int i)
    {
        Object obj = mArray[1 + (i << 1)];
        if (mSize <= 1)
        {
            freeArrays(mHashes, mArray, mSize);
            mHashes = ContainerHelpers.EMPTY_INTS;
            mArray = ContainerHelpers.EMPTY_OBJECTS;
            mSize = 0;
        } else
        if (mHashes.length > 8 && mSize < mHashes.length / 3)
        {
            int j;
            int ai[];
            Object aobj[];
            if (mSize > 8)
            {
                j = mSize + (mSize >> 1);
            } else
            {
                j = 8;
            }
            ai = mHashes;
            aobj = mArray;
            allocArrays(j);
            mSize = mSize - 1;
            if (i > 0)
            {
                System.arraycopy(ai, 0, mHashes, 0, i);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (mArray)), 0, i << 1);
            }
            if (i < mSize)
            {
                System.arraycopy(ai, i + 1, mHashes, i, mSize - i);
                System.arraycopy(((Object) (aobj)), i + 1 << 1, ((Object) (mArray)), i << 1, mSize - i << 1);
                return obj;
            }
        } else
        {
            mSize = mSize - 1;
            if (i < mSize)
            {
                System.arraycopy(mHashes, i + 1, mHashes, i, mSize - i);
                System.arraycopy(((Object) (mArray)), i + 1 << 1, ((Object) (mArray)), i << 1, mSize - i << 1);
            }
            mArray[mSize << 1] = null;
            mArray[1 + (mSize << 1)] = null;
            return obj;
        }
        return obj;
    }

    public Object setValueAt(int i, Object obj)
    {
        int j = 1 + (i << 1);
        Object obj1 = mArray[j];
        mArray[j] = obj;
        return obj1;
    }

    public int size()
    {
        return mSize;
    }

    public String toString()
    {
        if (isEmpty())
        {
            return "{}";
        }
        StringBuilder stringbuilder = new StringBuilder(28 * mSize);
        stringbuilder.append('{');
        int i = 0;
        while (i < mSize) 
        {
            if (i > 0)
            {
                stringbuilder.append(", ");
            }
            Object obj = keyAt(i);
            Object obj1;
            if (obj != this)
            {
                stringbuilder.append(obj);
            } else
            {
                stringbuilder.append("(this Map)");
            }
            stringbuilder.append('=');
            obj1 = valueAt(i);
            if (obj1 != this)
            {
                stringbuilder.append(obj1);
            } else
            {
                stringbuilder.append("(this Map)");
            }
            i++;
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    public Object valueAt(int i)
    {
        return mArray[1 + (i << 1)];
    }
}
