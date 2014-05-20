.class Lcom/chartboost/sdk/impl/af$d;
.super Lcom/chartboost/sdk/impl/af$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/af$c;-><init>(Lcom/chartboost/sdk/impl/ah;)V

    .line 219
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 223
    const/4 v0, 0x1

    .line 224
    const-string v1, "{ "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    check-cast p1, Lcom/chartboost/sdk/impl/aa;

    .line 228
    invoke-interface {p1}, Lcom/chartboost/sdk/impl/aa;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    return-void

    .line 228
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    if-eqz v2, :cond_1

    .line 232
    const/4 v2, 0x0

    .line 236
    :goto_1
    invoke-static {p2, v0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 237
    const-string v3, " : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v3, p0, Lcom/chartboost/sdk/impl/af$d;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-interface {p1, v0}, Lcom/chartboost/sdk/impl/aa;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, p2}, Lcom/chartboost/sdk/impl/ah;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 234
    :cond_1
    const-string v3, " , "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
