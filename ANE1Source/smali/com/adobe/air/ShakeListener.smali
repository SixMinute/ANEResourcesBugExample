.class public Lcom/adobe/air/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/ShakeListener$Listener;
    }
.end annotation


# static fields
.field private static final FORCE_THRESHOLD:I = 0x4b0

.field private static final SHAKE_COUNT:I = 0x2

.field private static final SHAKE_DURATION:I = 0x3e8

.field private static final SHAKE_TIMEOUT:I = 0x1f4

.field private static final TIME_THRESHOLD:I = 0x64


# instance fields
.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mLastForce:J

.field private mLastShake:J

.field private mLastTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mListener:Lcom/adobe/air/ShakeListener$Listener;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mShakeCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v1, -0x4080

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/adobe/air/ShakeListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 37
    iput-object v0, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 38
    iput v1, p0, Lcom/adobe/air/ShakeListener;->mLastX:F

    iput v1, p0, Lcom/adobe/air/ShakeListener;->mLastY:F

    iput v1, p0, Lcom/adobe/air/ShakeListener;->mLastZ:F

    .line 39
    iput-wide v2, p0, Lcom/adobe/air/ShakeListener;->mLastTime:J

    .line 40
    iput-object v0, p0, Lcom/adobe/air/ShakeListener;->mListener:Lcom/adobe/air/ShakeListener$Listener;

    .line 41
    iput-object v0, p0, Lcom/adobe/air/ShakeListener;->mContext:Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/ShakeListener;->mShakeCount:I

    .line 43
    iput-wide v2, p0, Lcom/adobe/air/ShakeListener;->mLastShake:J

    .line 44
    iput-wide v2, p0, Lcom/adobe/air/ShakeListener;->mLastForce:J

    .line 52
    iput-object p1, p0, Lcom/adobe/air/ShakeListener;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/adobe/air/ShakeListener;->resume()V

    .line 54
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    iget-wide v2, p0, Lcom/adobe/air/ShakeListener;->mLastForce:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 112
    iput v8, p0, Lcom/adobe/air/ShakeListener;->mShakeCount:I

    .line 117
    :cond_0
    iget-wide v2, p0, Lcom/adobe/air/ShakeListener;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 122
    iget-wide v2, p0, Lcom/adobe/air/ShakeListener;->mLastTime:J

    sub-long v2, v0, v2

    .line 126
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    iget v5, p0, Lcom/adobe/air/ShakeListener;->mLastX:F

    sub-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    iget v6, p0, Lcom/adobe/air/ShakeListener;->mLastX:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    .line 127
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    iget v6, p0, Lcom/adobe/air/ShakeListener;->mLastY:F

    sub-float/2addr v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    iget v7, p0, Lcom/adobe/air/ShakeListener;->mLastY:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 128
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    iget v6, p0, Lcom/adobe/air/ShakeListener;->mLastZ:F

    sub-float/2addr v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    iget v7, p0, Lcom/adobe/air/ShakeListener;->mLastZ:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 130
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    long-to-double v2, v2

    div-double v2, v4, v2

    const-wide v4, 0x40c3880000000000L

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 133
    const/high16 v3, 0x4496

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 137
    iget v2, p0, Lcom/adobe/air/ShakeListener;->mShakeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/adobe/air/ShakeListener;->mShakeCount:I

    if-lt v2, v9, :cond_1

    iget-wide v2, p0, Lcom/adobe/air/ShakeListener;->mLastShake:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 139
    iput-wide v0, p0, Lcom/adobe/air/ShakeListener;->mLastShake:J

    .line 140
    iput v8, p0, Lcom/adobe/air/ShakeListener;->mShakeCount:I

    .line 142
    iget-object v2, p0, Lcom/adobe/air/ShakeListener;->mListener:Lcom/adobe/air/ShakeListener$Listener;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/adobe/air/ShakeListener;->mListener:Lcom/adobe/air/ShakeListener$Listener;

    invoke-interface {v2}, Lcom/adobe/air/ShakeListener$Listener;->onShake()V

    .line 146
    :cond_1
    iput-wide v0, p0, Lcom/adobe/air/ShakeListener;->mLastForce:J

    .line 150
    :cond_2
    iput-wide v0, p0, Lcom/adobe/air/ShakeListener;->mLastTime:J

    .line 151
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    iput v0, p0, Lcom/adobe/air/ShakeListener;->mLastX:F

    .line 152
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v10

    iput v0, p0, Lcom/adobe/air/ShakeListener;->mLastY:F

    .line 153
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v9

    iput v0, p0, Lcom/adobe/air/ShakeListener;->mLastZ:F

    .line 155
    :cond_3
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/ShakeListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adobe/air/ShakeListener;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 95
    iput-object v2, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 96
    iput-object v2, p0, Lcom/adobe/air/ShakeListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 98
    :cond_0
    return-void
.end method

.method public registerListener(Lcom/adobe/air/ShakeListener$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/adobe/air/ShakeListener;->mListener:Lcom/adobe/air/ShakeListener$Listener;

    .line 59
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "Accelerometer is not supported"

    .line 68
    iget-object v0, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    return-void

    .line 71
    :cond_1
    iput-object v2, p0, Lcom/adobe/air/ShakeListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 73
    iget-object v0, p0, Lcom/adobe/air/ShakeListener;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 74
    iget-object v0, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Sensors not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/ShakeListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 78
    iget-object v0, p0, Lcom/adobe/air/ShakeListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    .line 80
    iput-object v2, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Accelerometer is not supported"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adobe/air/ShakeListener;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Accelerometer is not supported"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/ShakeListener;->mListener:Lcom/adobe/air/ShakeListener$Listener;

    .line 64
    return-void
.end method
