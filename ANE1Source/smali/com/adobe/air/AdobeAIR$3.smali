.class Lcom/adobe/air/AdobeAIR$3;
.super Landroid/webkit/WebViewClient;
.source "AdobeAIR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AdobeAIR;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AdobeAIR;


# direct methods
.method constructor <init>(Lcom/adobe/air/AdobeAIR;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/adobe/air/AdobeAIR$3;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method
