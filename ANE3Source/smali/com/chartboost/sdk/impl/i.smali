.class public Lcom/chartboost/sdk/impl/i;
.super Lcom/chartboost/sdk/impl/c;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/h$b;


# instance fields
.field private b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 20
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/i;->b:Landroid/webkit/WebView;

    .line 23
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i;->b:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/chartboost/sdk/impl/i$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/i$1;-><init>(Lcom/chartboost/sdk/impl/i;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 62
    const/16 v0, 0x64

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 45
    const-string v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i;->b:Landroid/webkit/WebView;

    const-string v1, "file:///android_res/"

    const-string v3, "text/html"

    .line 50
    const-string v4, "UTF-8"

    const/4 v5, 0x0

    .line 49
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method
