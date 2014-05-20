.class public Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;
.super Landroid/webkit/WebView;
.source "AndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidWebViewImpl"
.end annotation


# instance fields
.field private mLastFocusDirection:I

.field private m_focusedChildView:Landroid/view/View;

.field private m_hasFocus:Z

.field private m_inRequestChildFocus:Z

.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidWebView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 157
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 158
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 152
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 154
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    .line 155
    iput v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 161
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 162
    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 154
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    .line 155
    iput v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidWebView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 165
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 166
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 154
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    .line 155
    iput v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 167
    return-void
.end method

.method private dispatchFocusEvent(ZI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 264
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    if-ne v0, p1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    .line 269
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 271
    #getter for: Lcom/adobe/air/AndroidWebView;->mInternalReference:J
    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$200(Lcom/adobe/air/AndroidWebView;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v1}, Lcom/adobe/air/AndroidWebView;->access$300(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v1}, Lcom/adobe/air/AndroidWebView;->access$300(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    invoke-virtual {v1, v0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageWebView(Lcom/adobe/air/AndroidWebView;Z)V

    .line 285
    :cond_2
    and-int/lit8 v1, p2, 0x2

    if-ne v1, v6, :cond_3

    .line 287
    const/4 v1, 0x3

    .line 301
    :goto_1
    if-eqz p1, :cond_4

    .line 302
    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mInternalReference:J
    invoke-static {v2}, Lcom/adobe/air/AndroidWebView;->access$200(Lcom/adobe/air/AndroidWebView;)J

    move-result-wide v2

    #calls: Lcom/adobe/air/AndroidWebView;->dispatchFocusIn(JI)V
    invoke-static {v0, v2, v3, v1}, Lcom/adobe/air/AndroidWebView;->access$400(Lcom/adobe/air/AndroidWebView;JI)V

    goto :goto_0

    .line 290
    :cond_3
    and-int/lit8 v1, p2, 0x1

    if-ne v1, v5, :cond_5

    move v1, v6

    .line 292
    goto :goto_1

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mInternalReference:J
    invoke-static {v2}, Lcom/adobe/air/AndroidWebView;->access$200(Lcom/adobe/air/AndroidWebView;)J

    move-result-wide v2

    #calls: Lcom/adobe/air/AndroidWebView;->dispatchFocusOut(JI)V
    invoke-static {v0, v2, v3, v1}, Lcom/adobe/air/AndroidWebView;->access$500(Lcom/adobe/air/AndroidWebView;JI)V

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_1
.end method

.method private setRealFocus(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-super {p0, p1, v1, v0}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 250
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->invalidate()V

    .line 251
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->dispatchFocusEvent(ZI)V

    .line 252
    return-void
.end method


# virtual methods
.method public clearChildFocus(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 214
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearChildFocus(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 221
    return-void

    .line 218
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    throw v0
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 231
    const-class v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;
    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->removeView(Landroid/view/View;)V

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setRealFocus(Z)V

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->clearFocus()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 343
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 345
    const/4 v1, 0x0

    .line 347
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_2

    .line 349
    const/16 v1, 0x21

    .line 356
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 359
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 360
    iput v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 361
    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView;->setStageFocus(I)V

    .line 362
    const/4 v0, 0x1

    .line 372
    :cond_1
    :goto_1
    return v0

    .line 351
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    .line 353
    const/16 v1, 0x82

    goto :goto_0

    .line 366
    :cond_3
    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$300(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->requestFocus()Z

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isInTextEditingMode()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 315
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 326
    :cond_0
    if-nez p2, :cond_1

    .line 327
    iget v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 329
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 331
    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->dispatchFocusEvent(ZI)V

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    iput-boolean v2, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 189
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0, v2}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setRealFocus(Z)V

    .line 197
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 198
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 205
    return-void

    .line 202
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    throw v0
.end method
