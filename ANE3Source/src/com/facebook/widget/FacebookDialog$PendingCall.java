// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.UUID;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

public static class <init>
    implements Parcelable
{

    public static final android.os.dingCall.requestCode CREATOR = new android.os.Parcelable.Creator() {

        public FacebookDialog.PendingCall createFromParcel(Parcel parcel)
        {
            return new FacebookDialog.PendingCall(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public FacebookDialog.PendingCall[] newArray(int i)
        {
            return new FacebookDialog.PendingCall[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private UUID callId;
    private int requestCode;
    private Intent requestIntent;

    private void setRequestCode(int i)
    {
        requestCode = i;
    }

    private void setRequestIntent(Intent intent)
    {
        requestIntent = intent;
        requestIntent.putExtra("com.facebook.platform.protocol.CALL_ID", callId.toString());
    }

    public int describeContents()
    {
        return 0;
    }

    public UUID getCallId()
    {
        return callId;
    }

    public int getRequestCode()
    {
        return requestCode;
    }

    public Intent getRequestIntent()
    {
        return requestIntent;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(callId.toString());
        parcel.writeParcelable(requestIntent, 0);
        parcel.writeInt(requestCode);
    }




    public _cls1(int i)
    {
        callId = UUID.randomUUID();
        requestCode = i;
    }

    private requestCode(Parcel parcel)
    {
        callId = UUID.fromString(parcel.readString());
        requestIntent = (Intent)parcel.readParcelable(null);
        requestCode = parcel.readInt();
    }

    requestCode(Parcel parcel, requestCode requestcode)
    {
        this(parcel);
    }
}
