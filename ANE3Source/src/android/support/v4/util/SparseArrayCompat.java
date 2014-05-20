// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.util;


// Referenced classes of package android.support.v4.util:
//            ContainerHelpers

public class SparseArrayCompat
    implements Cloneable
{

    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private int mKeys[];
    private int mSize;
    private Object mValues[];

    public SparseArrayCompat()
    {
        this(10);
    }

    public SparseArrayCompat(int i)
    {
        mGarbage = false;
        if (i == 0)
        {
            mKeys = ContainerHelpers.EMPTY_INTS;
            mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else
        {
            int j = ContainerHelpers.idealIntArraySize(i);
            mKeys = new int[j];
            mValues = new Object[j];
        }
        mSize = 0;
    }

    private void gc()
    {
        int i = mSize;
        int j = 0;
        int ai[] = mKeys;
        Object aobj[] = mValues;
        for (int k = 0; k < i; k++)
        {
            Object obj = aobj[k];
            if (obj == DELETED)
            {
                continue;
            }
            if (k != j)
            {
                ai[j] = ai[k];
                aobj[j] = obj;
                aobj[k] = null;
            }
            j++;
        }

        mGarbage = false;
        mSize = j;
    }

    public void append(int i, Object obj)
    {
        if (mSize != 0 && i <= mKeys[mSize - 1])
        {
            put(i, obj);
            return;
        }
        if (mGarbage && mSize >= mKeys.length)
        {
            gc();
        }
        int j = mSize;
        if (j >= mKeys.length)
        {
            int k = ContainerHelpers.idealIntArraySize(j + 1);
            int ai[] = new int[k];
            Object aobj[] = new Object[k];
            System.arraycopy(mKeys, 0, ai, 0, mKeys.length);
            System.arraycopy(((Object) (mValues)), 0, ((Object) (aobj)), 0, mValues.length);
            mKeys = ai;
            mValues = aobj;
        }
        mKeys[j] = i;
        mValues[j] = obj;
        mSize = j + 1;
    }

    public void clear()
    {
        int i = mSize;
        Object aobj[] = mValues;
        for (int j = 0; j < i; j++)
        {
            aobj[j] = null;
        }

        mSize = 0;
        mGarbage = false;
    }

    public SparseArrayCompat clone()
    {
        SparseArrayCompat sparsearraycompat = null;
        try
        {
            sparsearraycompat = (SparseArrayCompat)super.clone();
            sparsearraycompat.mKeys = (int[])mKeys.clone();
            sparsearraycompat.mValues = (Object[])((Object []) (mValues)).clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            return sparsearraycompat;
        }
        return sparsearraycompat;
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return clone();
    }

    public void delete(int i)
    {
        int j = ContainerHelpers.binarySearch(mKeys, mSize, i);
        if (j >= 0 && mValues[j] != DELETED)
        {
            mValues[j] = DELETED;
            mGarbage = true;
        }
    }

    public Object get(int i)
    {
        return get(i, null);
    }

    public Object get(int i, Object obj)
    {
        int j = ContainerHelpers.binarySearch(mKeys, mSize, i);
        if (j < 0 || mValues[j] == DELETED)
        {
            return obj;
        } else
        {
            return mValues[j];
        }
    }

    public int indexOfKey(int i)
    {
        if (mGarbage)
        {
            gc();
        }
        return ContainerHelpers.binarySearch(mKeys, mSize, i);
    }

    public int indexOfValue(Object obj)
    {
        if (mGarbage)
        {
            gc();
        }
        for (int i = 0; i < mSize; i++)
        {
            if (mValues[i] == obj)
            {
                return i;
            }
        }

        return -1;
    }

    public int keyAt(int i)
    {
        if (mGarbage)
        {
            gc();
        }
        return mKeys[i];
    }

    public void put(int i, Object obj)
    {
        int j = ContainerHelpers.binarySearch(mKeys, mSize, i);
        if (j >= 0)
        {
            mValues[j] = obj;
            return;
        }
        int k = ~j;
        if (k < mSize && mValues[k] == DELETED)
        {
            mKeys[k] = i;
            mValues[k] = obj;
            return;
        }
        if (mGarbage && mSize >= mKeys.length)
        {
            gc();
            k = -1 ^ ContainerHelpers.binarySearch(mKeys, mSize, i);
        }
        if (mSize >= mKeys.length)
        {
            int l = ContainerHelpers.idealIntArraySize(1 + mSize);
            int ai[] = new int[l];
            Object aobj[] = new Object[l];
            System.arraycopy(mKeys, 0, ai, 0, mKeys.length);
            System.arraycopy(((Object) (mValues)), 0, ((Object) (aobj)), 0, mValues.length);
            mKeys = ai;
            mValues = aobj;
        }
        if (mSize - k != 0)
        {
            System.arraycopy(mKeys, k, mKeys, k + 1, mSize - k);
            System.arraycopy(((Object) (mValues)), k, ((Object) (mValues)), k + 1, mSize - k);
        }
        mKeys[k] = i;
        mValues[k] = obj;
        mSize = 1 + mSize;
    }

    public void remove(int i)
    {
        delete(i);
    }

    public void removeAt(int i)
    {
        if (mValues[i] != DELETED)
        {
            mValues[i] = DELETED;
            mGarbage = true;
        }
    }

    public void removeAtRange(int i, int j)
    {
        int k = Math.min(mSize, i + j);
        for (int l = i; l < k; l++)
        {
            removeAt(l);
        }

    }

    public void setValueAt(int i, Object obj)
    {
        if (mGarbage)
        {
            gc();
        }
        mValues[i] = obj;
    }

    public int size()
    {
        if (mGarbage)
        {
            gc();
        }
        return mSize;
    }

    public String toString()
    {
        if (size() <= 0)
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
            stringbuilder.append(keyAt(i));
            stringbuilder.append('=');
            Object obj = valueAt(i);
            if (obj != this)
            {
                stringbuilder.append(obj);
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
        if (mGarbage)
        {
            gc();
        }
        return mValues[i];
    }

}
