.class public Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;
.super Landroid/widget/ScrollView;
.source "AndroidStageText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidStageTextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 171
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 177
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 182
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 217
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 218
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 219
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 221
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 200
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 202
    #getter for: Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$000(Lcom/adobe/air/AndroidStageText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x0

    #setter for: Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$002(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 205
    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidStageText;->dispatchCompleteEvent(J)V
    invoke-static {v0, v1, v2}, Lcom/adobe/air/AndroidStageText;->access$200(Lcom/adobe/air/AndroidStageText;J)V

    .line 207
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 192
    return-void
.end method
