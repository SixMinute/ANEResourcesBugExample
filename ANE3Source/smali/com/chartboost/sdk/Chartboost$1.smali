.class Lcom/chartboost/sdk/Chartboost$1;
.super Lcom/chartboost/sdk/impl/j$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->startSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Chartboost;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Chartboost;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$1;->a:Lcom/chartboost/sdk/Chartboost;

    .line 173
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/k;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v5, "3.4.0"

    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$1;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->a(Landroid/content/Context;)Z

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    const-string v0, "latest-sdk-version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const-string v1, "3.4.0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    const-string v1, "Chartboost"

    const-string v2, "WARNING: you have an outdated version of the SDK (Current: %s, Latest: %s). Get the latest version at chartboost.com/support/sdk#android"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 181
    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "3.4.0"

    aput-object v5, v3, v0

    .line 180
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void
.end method
