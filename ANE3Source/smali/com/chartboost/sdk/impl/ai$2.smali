.class Lcom/chartboost/sdk/impl/ai$2;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/chartboost/sdk/impl/aj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected a()Lcom/chartboost/sdk/impl/aj;
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/chartboost/sdk/impl/am;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/am;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$2;->a()Lcom/chartboost/sdk/impl/aj;

    move-result-object v0

    return-object v0
.end method
