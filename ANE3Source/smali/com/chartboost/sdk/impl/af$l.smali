.class Lcom/chartboost/sdk/impl/af$l;
.super Lcom/chartboost/sdk/impl/af$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/af$c;-><init>(Lcom/chartboost/sdk/impl/ah;)V

    .line 333
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/chartboost/sdk/impl/af$l;->a:Lcom/chartboost/sdk/impl/ah;

    new-instance v1, Lcom/chartboost/sdk/impl/y;

    const-string v2, "$minKey"

    .line 338
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/impl/y;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    invoke-interface {v0, v1, p2}, Lcom/chartboost/sdk/impl/ah;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 339
    return-void
.end method
