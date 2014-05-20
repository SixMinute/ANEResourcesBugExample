.class public final enum Lcom/chartboost/sdk/Libraries/CBOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Libraries/CBOrientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LANDSCAPE:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field public static final LANDSCAPE_LEFT:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field public static final enum LANDSCAPE_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field public static final LANDSCAPE_RIGHT:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field public static final enum PORTRAIT:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field public static final PORTRAIT_LEFT:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field public static final enum PORTRAIT_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field public static final PORTRAIT_RIGHT:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field public static final enum UNSPECIFIED:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field private static synthetic a:[I

.field private static final synthetic b:[Lcom/chartboost/sdk/Libraries/CBOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/chartboost/sdk/Libraries/CBOrientation;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/CBOrientation;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->UNSPECIFIED:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 14
    new-instance v0, Lcom/chartboost/sdk/Libraries/CBOrientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Libraries/CBOrientation;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 16
    new-instance v0, Lcom/chartboost/sdk/Libraries/CBOrientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Libraries/CBOrientation;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 18
    new-instance v0, Lcom/chartboost/sdk/Libraries/CBOrientation;

    const-string v1, "PORTRAIT_REVERSE"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Libraries/CBOrientation;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 20
    new-instance v0, Lcom/chartboost/sdk/Libraries/CBOrientation;

    const-string v1, "LANDSCAPE_REVERSE"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/Libraries/CBOrientation;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/CBOrientation;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->UNSPECIFIED:Lcom/chartboost/sdk/Libraries/CBOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->b:[Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 24
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_LEFT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 26
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_RIGHT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 28
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_LEFT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 30
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_RIGHT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 11
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBOrientation;->values()[Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->UNSPECIFIED:Lcom/chartboost/sdk/Libraries/CBOrientation;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/CBOrientation;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/chartboost/sdk/Libraries/CBOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Libraries/CBOrientation;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Libraries/CBOrientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->b:[Lcom/chartboost/sdk/Libraries/CBOrientation;

    array-length v1, v0

    new-array v2, v1, [Lcom/chartboost/sdk/Libraries/CBOrientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public isLandscape()Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public rotate180()Lcom/chartboost/sdk/Libraries/CBOrientation;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->rotate90()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->rotate90()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    return-object v0
.end method

.method public rotate270()Lcom/chartboost/sdk/Libraries/CBOrientation;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->rotate90()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->rotate90()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->rotate90()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    return-object v0
.end method

.method public rotate90()Lcom/chartboost/sdk/Libraries/CBOrientation;
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBOrientation;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->UNSPECIFIED:Lcom/chartboost/sdk/Libraries/CBOrientation;

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_LEFT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_0

    .line 39
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_RIGHT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_0

    .line 41
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_RIGHT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_0

    .line 43
    :pswitch_3
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_LEFT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
