// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import java.util.ArrayList;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AIRExpandableFileChooser, AndroidAlertDialog

public class FileChooserStub
{

    public static final String TAG = com/adobe/air/FileChooserStub.toString();
    private AIRExpandableFileChooser fileChooser;
    private Condition m_condition;
    private ArrayList m_filenames;
    private ArrayList m_filterList;
    private Lock m_lock;
    private String m_userAction;

    public FileChooserStub()
    {
        m_filenames = null;
        m_userAction = null;
        m_filterList = new ArrayList();
        m_lock = new ReentrantLock();
        m_condition = m_lock.newCondition();
    }

    public void SetUserAction(String s)
    {
        m_lock.lock();
        m_userAction = s;
        m_condition.signal();
        m_lock.unlock();
    }

    public void addFilter(String s)
    {
        m_filterList.add(s);
    }

    public String getFilename(int i)
    {
        if (i >= m_filenames.size())
        {
            return null;
        } else
        {
            return (String)m_filenames.get(i);
        }
    }

    public int getNumFilenames()
    {
        return m_filenames.size();
    }

    public void show(final String f_defaultPath, final boolean f_save, final boolean f_multipleSelection)
    {
        AndroidActivityWrapper androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        Activity activity = androidactivitywrapper.getActivity();
        Activity activity1;
        Exception exception;
        InterruptedException interruptedexception;
        int i;
        if (activity == null)
        {
            activity1 = androidactivitywrapper.WaitForNewActivity();
        } else
        {
            activity1 = activity;
        }
        activity1.runOnUiThread(new Runnable() {

            final FileChooserStub this$0;
            final String val$f_defaultPath;
            final FileChooserStub val$f_fsObject;
            final boolean val$f_multipleSelection;
            final boolean val$f_save;

            public void run()
            {
                fileChooser = new AIRExpandableFileChooser(m_filterList, f_save, f_multipleSelection, f_defaultPath, f_fsObject);
                fileChooser.GetDialog().show();
            }

            
            {
                this$0 = FileChooserStub.this;
                f_save = flag;
                f_multipleSelection = flag1;
                f_defaultPath = s;
                f_fsObject = filechooserstub1;
                super();
            }
        });
        m_lock.lock();
        if (m_userAction == null)
        {
            m_condition.await();
        }
        m_lock.unlock();
_L2:
        m_filenames = fileChooser.GetFileNames();
        if (m_filenames != null)
        {
            for (i = 0; i < m_filenames.size(); i++) { }
        }
        break; /* Loop/switch isn't completed */
        interruptedexception;
        m_lock.unlock();
        if (true) goto _L2; else goto _L1
        exception;
        m_lock.unlock();
        throw exception;
_L1:
    }

    public boolean userCancelled()
    {
        return m_userAction == null || m_userAction.equals("cancel");
    }




/*
    static AIRExpandableFileChooser access$002(FileChooserStub filechooserstub, AIRExpandableFileChooser airexpandablefilechooser)
    {
        filechooserstub.fileChooser = airexpandablefilechooser;
        return airexpandablefilechooser;
    }

*/

}
