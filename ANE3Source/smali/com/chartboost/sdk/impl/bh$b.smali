.class Lcom/chartboost/sdk/impl/bh$b;
.super Lcom/chartboost/sdk/impl/bh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/chartboost/sdk/impl/bh",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/chartboost/sdk/impl/bc$h$a;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lcom/chartboost/sdk/impl/bc$h$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/bh;-><init>(Ljava/util/Map;Lcom/chartboost/sdk/impl/bc$h$a;)V

    .line 250
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N::",
            "Ljava/util/Map",
            "<+TK;+TV;>;>(TN;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
