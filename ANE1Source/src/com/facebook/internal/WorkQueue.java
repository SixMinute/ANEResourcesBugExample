// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import com.facebook.Settings;
import java.util.concurrent.Executor;

class WorkQueue
{
    static interface WorkItem
    {

        public abstract boolean cancel();

        public abstract boolean isRunning();

        public abstract void moveToFront();
    }

    private class WorkNode
        implements WorkItem
    {

        static final boolean $assertionsDisabled;
        private final Runnable callback;
        private boolean isRunning;
        private WorkNode next;
        private WorkNode prev;
        final WorkQueue this$0;

        WorkNode addToList(WorkNode worknode, boolean flag)
        {
            if (!$assertionsDisabled && next != null)
            {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && prev != null)
            {
                throw new AssertionError();
            }
            if (worknode == null)
            {
                prev = this;
                next = this;
                worknode = this;
            } else
            {
                next = worknode;
                prev = worknode.prev;
                WorkNode worknode1 = next;
                prev.next = this;
                worknode1.prev = this;
            }
            if (flag)
            {
                return this;
            } else
            {
                return worknode;
            }
        }

        public boolean cancel()
        {
            Object obj = workLock;
            obj;
            JVM INSTR monitorenter ;
            if (isRunning())
            {
                break MISSING_BLOCK_LABEL_39;
            }
            pendingJobs = removeFromList(pendingJobs);
            return true;
            obj;
            JVM INSTR monitorexit ;
            return false;
            Exception exception;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        Runnable getCallback()
        {
            return callback;
        }

        WorkNode getNext()
        {
            return next;
        }

        public boolean isRunning()
        {
            return isRunning;
        }

        public void moveToFront()
        {
            synchronized (workLock)
            {
                if (!isRunning())
                {
                    pendingJobs = removeFromList(pendingJobs);
                    pendingJobs = addToList(pendingJobs, true);
                }
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        WorkNode removeFromList(WorkNode worknode)
        {
            if (!$assertionsDisabled && next == null)
            {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && prev == null)
            {
                throw new AssertionError();
            }
            if (worknode == this)
            {
                if (next == this)
                {
                    worknode = null;
                } else
                {
                    worknode = next;
                }
            }
            next.prev = prev;
            prev.next = next;
            prev = null;
            next = null;
            return worknode;
        }

        void setIsRunning(boolean flag)
        {
            isRunning = flag;
        }

        void verify(boolean flag)
        {
            if (!$assertionsDisabled && prev.next != this)
            {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && next.prev != this)
            {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && isRunning() != flag)
            {
                throw new AssertionError();
            } else
            {
                return;
            }
        }

        static 
        {
            boolean flag;
            if (!com/facebook/internal/WorkQueue.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            $assertionsDisabled = flag;
        }

        WorkNode(Runnable runnable)
        {
            this$0 = WorkQueue.this;
            super();
            callback = runnable;
        }
    }


    static final boolean $assertionsDisabled = false;
    public static final int DEFAULT_MAX_CONCURRENT = 8;
    private final Executor executor;
    private final int maxConcurrent;
    private WorkNode pendingJobs;
    private int runningCount;
    private WorkNode runningJobs;
    private final Object workLock;

    WorkQueue()
    {
        this(8);
    }

    WorkQueue(int i)
    {
        this(i, Settings.getExecutor());
    }

    WorkQueue(int i, Executor executor1)
    {
        workLock = new Object();
        runningJobs = null;
        runningCount = 0;
        maxConcurrent = i;
        executor = executor1;
    }

    private void execute(final WorkNode node)
    {
        executor.execute(new Runnable() {

            final WorkQueue this$0;
            private final WorkNode val$node;

            public void run()
            {
                node.getCallback().run();
                finishItemAndStartNew(node);
                return;
                Exception exception;
                exception;
                finishItemAndStartNew(node);
                throw exception;
            }

            
            {
                this$0 = WorkQueue.this;
                node = worknode;
                super();
            }
        });
    }

    private void finishItemAndStartNew(WorkNode worknode)
    {
        Object obj = workLock;
        obj;
        JVM INSTR monitorenter ;
        if (worknode == null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        runningJobs = worknode.removeFromList(runningJobs);
        runningCount = runningCount - 1;
        int i;
        int j;
        i = runningCount;
        j = maxConcurrent;
        WorkNode worknode1;
        worknode1 = null;
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        worknode1 = pendingJobs;
        if (worknode1 == null)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        pendingJobs = worknode1.removeFromList(pendingJobs);
        runningJobs = worknode1.addToList(runningJobs, false);
        runningCount = 1 + runningCount;
        worknode1.setIsRunning(true);
        obj;
        JVM INSTR monitorexit ;
        if (worknode1 != null)
        {
            execute(worknode1);
        }
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void startItem()
    {
        finishItemAndStartNew(null);
    }

    WorkItem addActiveWorkItem(Runnable runnable)
    {
        return addActiveWorkItem(runnable, true);
    }

    WorkItem addActiveWorkItem(Runnable runnable, boolean flag)
    {
        WorkNode worknode = new WorkNode(runnable);
        synchronized (workLock)
        {
            pendingJobs = worknode.addToList(pendingJobs, flag);
        }
        startItem();
        return worknode;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void validate()
    {
        Object obj = workLock;
        obj;
        JVM INSTR monitorenter ;
        WorkNode worknode = runningJobs;
        int i = 0;
        if (worknode == null) goto _L2; else goto _L1
_L1:
        WorkNode worknode1 = runningJobs;
_L3:
        worknode1.verify(true);
        i++;
        worknode1 = worknode1.getNext();
        if (worknode1 != runningJobs) goto _L3; else goto _L2
_L2:
        if (!$assertionsDisabled && runningCount != i)
        {
            throw new AssertionError();
        }
        break MISSING_BLOCK_LABEL_78;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    static 
    {
        boolean flag;
        if (!com/facebook/internal/WorkQueue.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }




}
