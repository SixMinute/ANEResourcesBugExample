.class public final enum Lcom/facebook/AppEventsLogger$FlushBehavior;
.super Ljava/lang/Enum;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlushBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/AppEventsLogger$FlushBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

.field private static final synthetic ENUM$VALUES:[Lcom/facebook/AppEventsLogger$FlushBehavior;

.field public static final enum EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushBehavior;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/facebook/AppEventsLogger$FlushBehavior;-><init>(Ljava/lang/String;I)V

    .line 117
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

    .line 119
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushBehavior;

    const-string v1, "EXPLICIT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/AppEventsLogger$FlushBehavior;-><init>(Ljava/lang/String;I)V

    .line 122
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/AppEventsLogger$FlushBehavior;

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->ENUM$VALUES:[Lcom/facebook/AppEventsLogger$FlushBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AppEventsLogger$FlushBehavior;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/facebook/AppEventsLogger$FlushBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/AppEventsLogger$FlushBehavior;

    return-object p0
.end method

.method public static values()[Lcom/facebook/AppEventsLogger$FlushBehavior;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->ENUM$VALUES:[Lcom/facebook/AppEventsLogger$FlushBehavior;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/AppEventsLogger$FlushBehavior;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
