.class Lcom/chartboost/sdk/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/a$1;->a(Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/a$1;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/a$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/a$1$1;->a:Lcom/chartboost/sdk/a$1;

    iput-object p2, p0, Lcom/chartboost/sdk/a$1$1;->b:Ljava/lang/String;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/k;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 599
    iget-object v0, p0, Lcom/chartboost/sdk/a$1$1;->a:Lcom/chartboost/sdk/a$1;

    invoke-static {v0}, Lcom/chartboost/sdk/a$1;->a(Lcom/chartboost/sdk/a$1;)Lcom/chartboost/sdk/a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/a;->d(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/impl/n$a;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/chartboost/sdk/a$1$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/impl/n$a;->a(ZLjava/lang/String;)V

    .line 600
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/k;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/chartboost/sdk/a$1$1;->a:Lcom/chartboost/sdk/a$1;

    invoke-static {v0}, Lcom/chartboost/sdk/a$1;->a(Lcom/chartboost/sdk/a$1;)Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/a$1$1;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/a;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 597
    return-void
.end method
