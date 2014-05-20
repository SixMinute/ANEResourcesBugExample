.class Lcom/chartboost/sdk/impl/ad;
.super Lcom/chartboost/sdk/impl/ac;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/impl/bf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/bf",
            "<",
            "Lcom/chartboost/sdk/impl/ah;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ac;-><init>()V

    .line 82
    new-instance v0, Lcom/chartboost/sdk/impl/bf;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bf;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/bf;

    .line 33
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Class;Lcom/chartboost/sdk/impl/ah;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/impl/bf;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p1}, Lcom/chartboost/sdk/impl/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    const-string v0, " null "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bf;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 73
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/bf;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/ah;

    move-object v0, p0

    .line 76
    :cond_2
    if-nez v0, :cond_4

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json can\'t serialize type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 68
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/bf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ah;

    .line 69
    if-eqz v0, :cond_1

    goto :goto_1

    .line 79
    :cond_4
    invoke-interface {v0, v1, p2}, Lcom/chartboost/sdk/impl/ah;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
