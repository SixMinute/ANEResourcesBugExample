.class public final enum Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/CBOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Difference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

.field public static final enum ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

.field public static final enum ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

.field public static final enum ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

.field private static synthetic a:[I

.field private static final synthetic b:[Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    const-string v1, "ANGLE_0"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    new-instance v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    const-string v1, "ANGLE_90"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    new-instance v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    const-string v1, "ANGLE_180"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    new-instance v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    const-string v1, "ANGLE_270"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->b:[Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->values()[Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->b:[Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    array-length v1, v0

    new-array v2, v1, [Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getAsInt()I
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 78
    :pswitch_0
    const/16 v0, 0x5a

    goto :goto_0

    .line 80
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 82
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isOdd()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
