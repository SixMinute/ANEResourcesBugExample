.class Lcom/chartboost/sdk/impl/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/a;-><init>(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/a$c;Lcom/chartboost/sdk/impl/a$a;Lcom/chartboost/sdk/impl/a$b;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/a;

.field private final synthetic b:Lcom/chartboost/sdk/impl/a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/a$3;->a:Lcom/chartboost/sdk/impl/a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/a$3;->b:Lcom/chartboost/sdk/impl/a;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 126
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$3;->b:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    const-string v2, "deep-link"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 132
    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 133
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v0, v1

    .line 139
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$3;->b:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/a;->g:Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/a$3;->b:Lcom/chartboost/sdk/impl/a;

    invoke-interface {v1, v2, v0, p2}, Lcom/chartboost/sdk/impl/a$a;->a(Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 140
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$3;->b:Lcom/chartboost/sdk/impl/a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    goto :goto_1
.end method
