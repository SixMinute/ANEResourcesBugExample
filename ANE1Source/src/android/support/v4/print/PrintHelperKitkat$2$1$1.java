// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.print;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package android.support.v4.print:
//            PrintHelperKitkat

class this._cls2
    implements android.os.celListener
{

    final ncel this$2;

    public void onCancel()
    {
        elLoad();
        ncel(false);
    }

    map()
    {
        this$2 = this._cls2.this;
        super();
    }

    // Unreferenced inner class android/support/v4/print/PrintHelperKitkat$2

/* anonymous class */
    class PrintHelperKitkat._cls2 extends PrintDocumentAdapter
    {

        AsyncTask loadBitmap;
        private PrintAttributes mAttributes;
        Bitmap mBitmap;
        final PrintHelperKitkat this$0;
        final int val$fittingMode;
        final Uri val$imageFile;
        final String val$jobName;

        private void cancelLoad()
        {
            synchronized (PrintHelperKitkat.access$300(PrintHelperKitkat.this))
            {
                if (mDecodeOptions != null)
                {
                    mDecodeOptions.requestCancelDecode();
                    mDecodeOptions = null;
                }
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void onFinish()
        {
            super.onFinish();
            cancelLoad();
            loadBitmap.cancel(true);
        }

        public void onLayout(final PrintAttributes oldPrintAttributes, final PrintAttributes newPrintAttributes, final CancellationSignal cancellationSignal, android.print.PrintDocumentAdapter.LayoutResultCallback layoutresultcallback, Bundle bundle)
        {
            if (cancellationSignal.isCanceled())
            {
                layoutresultcallback.onLayoutCancelled();
                mAttributes = newPrintAttributes;
                return;
            }
            if (mBitmap != null)
            {
                android.print.PrintDocumentInfo printdocumentinfo = (new android.print.PrintDocumentInfo.Builder(jobName)).setContentType(1).setPageCount(1).build();
                boolean flag;
                if (!newPrintAttributes.equals(oldPrintAttributes))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                layoutresultcallback.onLayoutFinished(printdocumentinfo, flag);
                return;
            } else
            {
                loadBitmap = layoutresultcallback. new PrintHelperKitkat._cls2._cls1();
                loadBitmap.execute(new Uri[0]);
                mAttributes = newPrintAttributes;
                return;
            }
        }

        public void onWrite(PageRange apagerange[], ParcelFileDescriptor parcelfiledescriptor, CancellationSignal cancellationsignal, android.print.PrintDocumentAdapter.WriteResultCallback writeresultcallback)
        {
            PrintedPdfDocument printedpdfdocument = new PrintedPdfDocument(mContext, mAttributes);
            android.graphics.pdf.PdfDocument.Page page = printedpdfdocument.startPage(1);
            RectF rectf = new RectF(page.getInfo().getContentRect());
            android.graphics.Matrix matrix = PrintHelperKitkat.access$000(PrintHelperKitkat.this, mBitmap.getWidth(), mBitmap.getHeight(), rectf, fittingMode);
            page.getCanvas().drawBitmap(mBitmap, matrix, null);
            printedpdfdocument.finishPage(page);
            printedpdfdocument.writeTo(new FileOutputStream(parcelfiledescriptor.getFileDescriptor()));
            PageRange apagerange1[] = new PageRange[1];
            apagerange1[0] = PageRange.ALL_PAGES;
            writeresultcallback.onWriteFinished(apagerange1);
_L2:
            if (printedpdfdocument != null)
            {
                printedpdfdocument.close();
            }
            if (parcelfiledescriptor == null)
            {
                break MISSING_BLOCK_LABEL_150;
            }
            parcelfiledescriptor.close();
            return;
            IOException ioexception1;
            ioexception1;
            Log.e("PrintHelperKitkat", "Error writing printed content", ioexception1);
            writeresultcallback.onWriteFailed(null);
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            if (printedpdfdocument != null)
            {
                printedpdfdocument.close();
            }
            IOException ioexception2;
            if (parcelfiledescriptor != null)
            {
                try
                {
                    parcelfiledescriptor.close();
                }
                catch (IOException ioexception) { }
            }
            throw exception;
            ioexception2;
        }


            
            {
                this$0 = final_printhelperkitkat;
                jobName = s;
                imageFile = uri;
                fittingMode = I.this;
                super();
                mBitmap = null;
            }
    }


    // Unreferenced inner class android/support/v4/print/PrintHelperKitkat$2$1

/* anonymous class */
    class PrintHelperKitkat._cls2._cls1 extends AsyncTask
    {

        final PrintHelperKitkat._cls2 this$1;
        final CancellationSignal val$cancellationSignal;
        final android.print.PrintDocumentAdapter.LayoutResultCallback val$layoutResultCallback;
        final PrintAttributes val$newPrintAttributes;
        final PrintAttributes val$oldPrintAttributes;

        protected transient Bitmap doInBackground(Uri auri[])
        {
            Bitmap bitmap;
            try
            {
                bitmap = PrintHelperKitkat.access$200(this$0, imageFile, 3500);
            }
            catch (FileNotFoundException filenotfoundexception)
            {
                return null;
            }
            return bitmap;
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Uri[])aobj);
        }

        protected void onCancelled(Bitmap bitmap)
        {
            layoutResultCallback.onLayoutCancelled();
        }

        protected volatile void onCancelled(Object obj)
        {
            onCancelled((Bitmap)obj);
        }

        protected void onPostExecute(Bitmap bitmap)
        {
            super.onPostExecute(bitmap);
            mBitmap = bitmap;
            if (bitmap != null)
            {
                android.print.PrintDocumentInfo printdocumentinfo = (new android.print.PrintDocumentInfo.Builder(jobName)).setContentType(1).setPageCount(1).build();
                boolean flag;
                if (!newPrintAttributes.equals(oldPrintAttributes))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                layoutResultCallback.onLayoutFinished(printdocumentinfo, flag);
                return;
            } else
            {
                layoutResultCallback.onLayoutFailed(null);
                return;
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Bitmap)obj);
        }

        protected void onPreExecute()
        {
            cancellationSignal.setOnCancelListener(new PrintHelperKitkat._cls2._cls1._cls1());
        }

            
            {
                this$1 = final__pcls2;
                cancellationSignal = cancellationsignal;
                newPrintAttributes = printattributes;
                oldPrintAttributes = printattributes1;
                layoutResultCallback = android.print.PrintDocumentAdapter.LayoutResultCallback.this;
                super();
            }
    }

}
