.class enum Lcom/chartboost/sdk/impl/bc$h$a$1;
.super Lcom/chartboost/sdk/impl/bc$h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bc$h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/bc$h$a;-><init>(Ljava/lang/String;ILcom/chartboost/sdk/impl/bc$h$a;)V

    .line 1
    return-void
.end method


# virtual methods
.method a(Lcom/chartboost/sdk/impl/bc;)Lcom/chartboost/sdk/impl/bc$h;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map",
            "<TK;TV;>;>(",
            "Lcom/chartboost/sdk/impl/bc",
            "<TK;TV;TM;>;)",
            "Lcom/chartboost/sdk/impl/bc$h",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Lcom/chartboost/sdk/impl/bc$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/bc$c;-><init>(Lcom/chartboost/sdk/impl/bc;)V

    return-object v0
.end method
