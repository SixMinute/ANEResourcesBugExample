.class public abstract Lcom/chartboost/sdk/c$b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lcom/chartboost/sdk/c;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/c;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/chartboost/sdk/c$b;->b:Lcom/chartboost/sdk/c;

    .line 32
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/c$b;->a:Z

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/c$b;->setFocusableInTouchMode(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/chartboost/sdk/c$b;->requestFocus()Z

    .line 37
    new-instance v0, Lcom/chartboost/sdk/c$b$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/c$b$1;-><init>(Lcom/chartboost/sdk/c$b;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/c$b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    return-void
.end method

.method private b(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/c$b;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/chartboost/sdk/c$b;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/c$b;->a(Landroid/app/Activity;)Z

    .line 75
    return-void
.end method

.method protected abstract a(II)V
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 4
    .parameter

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/c$b;->getWidth()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Lcom/chartboost/sdk/c$b;->getHeight()I

    move-result v1

    .line 87
    if-eqz v0, :cond_0

    if-nez v1, :cond_5

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 91
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 97
    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 98
    :cond_2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 101
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v1

    move v1, v0

    move v0, v3

    .line 111
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/chartboost/sdk/c$b;->b(II)Z

    move-result v0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_5
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 48
    iget-boolean v0, p0, Lcom/chartboost/sdk/c$b;->a:Z

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-direct {p0, p2, p1}, Lcom/chartboost/sdk/c$b;->b(II)Z

    goto :goto_0

    .line 55
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/c$b;->b(II)Z

    goto :goto_0
.end method
