.class final Lcom/chartboost/sdk/impl/bc$e;
.super Lcom/chartboost/sdk/impl/bc$h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/bc$h",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bc;

.field private final transient b:Lcom/chartboost/sdk/impl/bc$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/bc",
            "<TK;TV;TM;>.d;"
        }
    .end annotation
.end field

.field private final transient c:Lcom/chartboost/sdk/impl/bc$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/bc",
            "<TK;TV;TM;>.b;"
        }
    .end annotation
.end field

.field private final transient d:Lcom/chartboost/sdk/impl/bc$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/bc",
            "<TK;TV;TM;>.g;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bc;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 607
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc$e;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bc$h;-><init>()V

    .line 611
    new-instance v0, Lcom/chartboost/sdk/impl/bc$d;

    invoke-direct {v0, p1, v1}, Lcom/chartboost/sdk/impl/bc$d;-><init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bc$d;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bc$e;->b:Lcom/chartboost/sdk/impl/bc$d;

    .line 612
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    invoke-direct {v0, p1, v1}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bc$b;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bc$e;->c:Lcom/chartboost/sdk/impl/bc$b;

    .line 613
    new-instance v0, Lcom/chartboost/sdk/impl/bc$g;

    invoke-direct {v0, p1, v1}, Lcom/chartboost/sdk/impl/bc$g;-><init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bc$g;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bc$e;->d:Lcom/chartboost/sdk/impl/bc$g;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$e;->b:Lcom/chartboost/sdk/impl/bc$d;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$e;->c:Lcom/chartboost/sdk/impl/bc$b;

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$e;->d:Lcom/chartboost/sdk/impl/bc$g;

    return-object v0
.end method
