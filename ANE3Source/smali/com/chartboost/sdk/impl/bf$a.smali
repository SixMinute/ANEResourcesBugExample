.class final Lcom/chartboost/sdk/impl/bf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chartboost/sdk/impl/bi",
        "<",
        "Ljava/lang/Class",
        "<*>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bf;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf$a;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/bf;Lcom/chartboost/sdk/impl/bf$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bf$a;-><init>(Lcom/chartboost/sdk/impl/bf;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p1}, Lcom/chartboost/sdk/impl/bf;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 54
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 55
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bf$a;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/bf$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
