.class public Lcom/adobe/air/Automation;
.super Ljava/lang/Object;
.source "Automation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Lcom/adobe/air/AIRWindowSurfaceView;IIIZZZ)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    if-eqz p5, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 45
    :cond_1
    if-eqz p6, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 46
    :cond_2
    if-eqz p7, :cond_5

    or-int/lit8 v0, v0, 0x4

    move v8, v0

    .line 48
    :goto_1
    :try_start_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v7, 0x0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 49
    if-nez p2, :cond_4

    .line 51
    invoke-virtual {p1, p3, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 63
    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 55
    invoke-virtual {p1, p3, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 58
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "Automation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JP] dispatchKeyEvent caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v8, v0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Lcom/adobe/air/AIRWindowSurfaceView;IFFFIFFZ[FI)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p11

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "Automation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JP] dispatchTouchEvent caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
