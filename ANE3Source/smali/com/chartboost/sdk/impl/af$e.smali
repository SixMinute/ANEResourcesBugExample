.class Lcom/chartboost/sdk/impl/af$e;
.super Lcom/chartboost/sdk/impl/af$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/af$c;-><init>(Lcom/chartboost/sdk/impl/ah;)V

    .line 250
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 254
    check-cast p1, Lcom/chartboost/sdk/impl/ab;

    .line 255
    new-instance v0, Lcom/chartboost/sdk/impl/y;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/y;-><init>()V

    .line 256
    const-string v1, "$ref"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "$id"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ab;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v1, p0, Lcom/chartboost/sdk/impl/af$e;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-interface {v1, v0, p2}, Lcom/chartboost/sdk/impl/ah;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 259
    return-void
.end method
