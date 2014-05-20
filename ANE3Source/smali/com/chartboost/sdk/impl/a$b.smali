.class public final enum Lcom/chartboost/sdk/impl/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/a$b;

.field public static final enum b:Lcom/chartboost/sdk/impl/a$b;

.field public static final enum c:Lcom/chartboost/sdk/impl/a$b;

.field public static final enum d:Lcom/chartboost/sdk/impl/a$b;

.field public static final enum e:Lcom/chartboost/sdk/impl/a$b;

.field public static final enum f:Lcom/chartboost/sdk/impl/a$b;

.field private static final synthetic g:[Lcom/chartboost/sdk/impl/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/chartboost/sdk/impl/a$b;

    const-string v1, "CBImpressionStateOther"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/impl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/a$b;->a:Lcom/chartboost/sdk/impl/a$b;

    .line 27
    new-instance v0, Lcom/chartboost/sdk/impl/a$b;

    const-string v1, "CBImpressionStateWaitingForDisplay"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/impl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    .line 28
    new-instance v0, Lcom/chartboost/sdk/impl/a$b;

    const-string v1, "CBImpressionStateDisplayedByDefaultController"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/impl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 29
    new-instance v0, Lcom/chartboost/sdk/impl/a$b;

    const-string v1, "CBImpressionStateWaitingForDismissal"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/impl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/a$b;->d:Lcom/chartboost/sdk/impl/a$b;

    .line 30
    new-instance v0, Lcom/chartboost/sdk/impl/a$b;

    const-string v1, "CBImpressionStateWaitingForCaching"

    invoke-direct {v0, v1, v7}, Lcom/chartboost/sdk/impl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/a$b;->e:Lcom/chartboost/sdk/impl/a$b;

    .line 31
    new-instance v0, Lcom/chartboost/sdk/impl/a$b;

    const-string v1, "CBImpressionStateCached"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/a$b;->f:Lcom/chartboost/sdk/impl/a$b;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/chartboost/sdk/impl/a$b;

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->a:Lcom/chartboost/sdk/impl/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->d:Lcom/chartboost/sdk/impl/a$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->e:Lcom/chartboost/sdk/impl/a$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/impl/a$b;->f:Lcom/chartboost/sdk/impl/a$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/impl/a$b;->g:[Lcom/chartboost/sdk/impl/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/a$b;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/chartboost/sdk/impl/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/a$b;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/a$b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->g:[Lcom/chartboost/sdk/impl/a$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/chartboost/sdk/impl/a$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
