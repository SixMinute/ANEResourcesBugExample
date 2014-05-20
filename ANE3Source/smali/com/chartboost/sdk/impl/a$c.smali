.class public final enum Lcom/chartboost/sdk/impl/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/a$c;

.field public static final enum b:Lcom/chartboost/sdk/impl/a$c;

.field public static final enum c:Lcom/chartboost/sdk/impl/a$c;

.field private static final synthetic d:[Lcom/chartboost/sdk/impl/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/chartboost/sdk/impl/a$c;

    const-string v1, "CBImpressionTypeOther"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/a$c;->a:Lcom/chartboost/sdk/impl/a$c;

    .line 36
    new-instance v0, Lcom/chartboost/sdk/impl/a$c;

    const-string v1, "CBImpressionTypeInterstitial"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/impl/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    .line 37
    new-instance v0, Lcom/chartboost/sdk/impl/a$c;

    const-string v1, "CBImpressionTypeMoreApps"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/impl/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chartboost/sdk/impl/a$c;

    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->a:Lcom/chartboost/sdk/impl/a$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chartboost/sdk/impl/a$c;->d:[Lcom/chartboost/sdk/impl/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/a$c;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/chartboost/sdk/impl/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/a$c;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/a$c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->d:[Lcom/chartboost/sdk/impl/a$c;

    array-length v1, v0

    new-array v2, v1, [Lcom/chartboost/sdk/impl/a$c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
