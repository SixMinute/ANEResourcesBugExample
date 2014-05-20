.class Lcom/chartboost/sdk/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/chartboost/sdk/a$b;->a:Lcom/chartboost/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/chartboost/sdk/a$b;->b:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/chartboost/sdk/a$b;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->hasCachedInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/a$b;->a:Lcom/chartboost/sdk/a;

    iget-object v1, p0, Lcom/chartboost/sdk/a$b;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/a;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/a$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/a;

    invoke-static {v0, p0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/a$b;->a:Lcom/chartboost/sdk/a;

    iget-object v1, p0, Lcom/chartboost/sdk/a$b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/a;Ljava/lang/String;Z)V

    goto :goto_0
.end method
