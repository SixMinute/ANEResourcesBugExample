.class Lcom/chartboost/sdk/impl/h$a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/h$a$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/h$a$a;

.field private final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/h$a$a;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h$a$a$1;->a:Lcom/chartboost/sdk/impl/h$a$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/h$a$a$1;->b:Lorg/json/JSONObject;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$a$1;->b:Lorg/json/JSONObject;

    const-string v1, "deep-link"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$a$1;->b:Lorg/json/JSONObject;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h$a$a$1;->a:Lcom/chartboost/sdk/impl/h$a$a;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/h$a$a;->a(Lcom/chartboost/sdk/impl/h$a$a;)Lcom/chartboost/sdk/impl/h$a;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/h$a;->b(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/h;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h;->b:Lcom/chartboost/sdk/c$c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/chartboost/sdk/impl/h$a$a$1;->a:Lcom/chartboost/sdk/impl/h$a$a;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/h$a$a;->a(Lcom/chartboost/sdk/impl/h$a$a;)Lcom/chartboost/sdk/impl/h$a;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/h$a;->b(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/h;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h;->b:Lcom/chartboost/sdk/c$c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h$a$a$1;->b:Lorg/json/JSONObject;

    invoke-interface {v1, v0, v2}, Lcom/chartboost/sdk/c$c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 312
    :cond_2
    return-void
.end method
