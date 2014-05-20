.class Lcom/chartboost/sdk/impl/q$a;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/q;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/q;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/chartboost/sdk/impl/q$a;->a:Lcom/chartboost/sdk/impl/q;

    .line 55
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/q$a;->setFocusable(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v3, -0x3400

    const/high16 v2, -0x7800

    const/high16 v6, 0x4000

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q$a;->a:Lcom/chartboost/sdk/impl/q;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/q;->a(Lcom/chartboost/sdk/impl/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/q$a;->a:Lcom/chartboost/sdk/impl/q;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/q;->a(Lcom/chartboost/sdk/impl/q;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 69
    :goto_1
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 70
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    aput v0, v4, v7

    .line 69
    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 71
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 72
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q$a;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q$a;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 73
    div-float/2addr v0, v6

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 74
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q$a;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q$a;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/q$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void

    :cond_0
    move v0, v3

    .line 66
    goto :goto_0

    :cond_1
    move v1, v2

    .line 67
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 62
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q$a;->a()V

    .line 63
    return-void
.end method
