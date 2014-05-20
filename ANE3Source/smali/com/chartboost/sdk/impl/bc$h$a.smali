.class public abstract enum Lcom/chartboost/sdk/impl/bc$h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bc$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/bc$h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/bc$h$a;

.field public static final enum b:Lcom/chartboost/sdk/impl/bc$h$a;

.field private static final synthetic c:[Lcom/chartboost/sdk/impl/bc$h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 571
    new-instance v0, Lcom/chartboost/sdk/impl/bc$h$a$1;

    const-string v1, "STABLE"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bc$h$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$h$a;->a:Lcom/chartboost/sdk/impl/bc$h$a;

    .line 577
    new-instance v0, Lcom/chartboost/sdk/impl/bc$h$a$2;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/impl/bc$h$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$h$a;->b:Lcom/chartboost/sdk/impl/bc$h$a;

    .line 570
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/impl/bc$h$a;

    sget-object v1, Lcom/chartboost/sdk/impl/bc$h$a;->a:Lcom/chartboost/sdk/impl/bc$h$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/bc$h$a;->b:Lcom/chartboost/sdk/impl/bc$h$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chartboost/sdk/impl/bc$h$a;->c:[Lcom/chartboost/sdk/impl/bc$h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/chartboost/sdk/impl/bc$h$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/bc$h$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bc$h$a;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/chartboost/sdk/impl/bc$h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/bc$h$a;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/bc$h$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/bc$h$a;->c:[Lcom/chartboost/sdk/impl/bc$h$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/chartboost/sdk/impl/bc$h$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method abstract a(Lcom/chartboost/sdk/impl/bc;)Lcom/chartboost/sdk/impl/bc$h;
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
.end method
