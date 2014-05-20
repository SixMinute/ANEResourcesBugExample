.class Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter
    .parameter "wrapped"

    .prologue
    const/4 v2, 0x0

    .line 414
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 415
    invoke-direct {p0, p2, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    .line 409
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 416
    return-void

    :cond_0
    move v0, v2

    .line 408
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 407
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 446
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 450
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    #getter for: Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Landroid/support/v4/app/ActionBarDrawerToggle;->access$400(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v1, v4

    .line 452
    .local v1, isLayoutRTL:Z
    :goto_0
    if-eqz v1, :cond_2

    const/4 v3, -0x1

    move v0, v3

    .line 453
    .local v0, flipRtl:I
    :goto_1
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 454
    .local v2, width:I
    iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    neg-float v3, v3

    int-to-float v4, v2

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    mul-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    if-nez v3, :cond_0

    .line 458
    int-to-float v3, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 459
    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 462
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 464
    return-void

    .line 450
    .end local v0           #flipRtl:I
    .end local v1           #isLayoutRTL:Z
    .end local v2           #width:I
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .restart local v1       #isLayoutRTL:Z
    :cond_2
    move v0, v4

    .line 452
    goto :goto_1
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    return v0
.end method

.method public setOffset(F)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 440
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    .line 441
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 442
    return-void
.end method

.method public setPosition(F)V
    .locals 0
    .parameter "position"

    .prologue
    .line 424
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    .line 425
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 426
    return-void
.end method
