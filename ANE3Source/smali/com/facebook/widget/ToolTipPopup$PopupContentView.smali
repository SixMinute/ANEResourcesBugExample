.class Lcom/facebook/widget/ToolTipPopup$PopupContentView;
.super Landroid/widget/FrameLayout;
.source "ToolTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupContentView"
.end annotation


# instance fields
.field private bodyFrame:Landroid/view/View;

.field private bottomArrow:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/facebook/widget/ToolTipPopup;

.field private topArrow:Landroid/widget/ImageView;

.field private xOut:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/facebook/widget/ToolTipPopup;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->this$0:Lcom/facebook/widget/ToolTipPopup;

    .line 207
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->init()V

    .line 209
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 213
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/facebook/android/R$layout;->com_facebook_tooltip_bubble:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 214
    sget v1, Lcom/facebook/android/R$id;->com_facebook_tooltip_bubble_view_top_pointer:I

    invoke-virtual {p0, v1}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    .line 216
    sget v1, Lcom/facebook/android/R$id;->com_facebook_tooltip_bubble_view_bottom_pointer:I

    .line 215
    invoke-virtual {p0, v1}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    .line 217
    sget v1, Lcom/facebook/android/R$id;->com_facebook_body_frame:I

    invoke-virtual {p0, v1}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;

    .line 218
    sget v1, Lcom/facebook/android/R$id;->com_facebook_button_xout:I

    invoke-virtual {p0, v1}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;

    .line 219
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 235
    return-void
.end method

.method public showBottomArrow()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    return-void
.end method

.method public showTopArrow()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    return-void
.end method
