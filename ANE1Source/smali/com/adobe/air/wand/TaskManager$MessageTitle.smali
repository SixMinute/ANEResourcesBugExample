.class public final enum Lcom/adobe/air/wand/TaskManager$MessageTitle;
.super Ljava/lang/Enum;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/air/wand/TaskManager$MessageTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum DRAW_IMAGE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum HARDWARE_SPECIFICATIONS:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum VIBRATE:Lcom/adobe/air/wand/TaskManager$MessageTitle;


# instance fields
.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "ACCELEROMETER_EVENT"

    const-string v2, "ACCELEROMETER_EVENT"

    invoke-direct {v0, v1, v4, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 69
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "TOUCH_EVENT"

    const-string v2, "TOUCH_EVENT"

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 70
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "GESTURE_EVENT"

    const-string v2, "GESTURE_EVENT"

    invoke-direct {v0, v1, v6, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 72
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "VIBRATE"

    const-string v2, "VIBRATE"

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->VIBRATE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 74
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "DRAW_IMAGE"

    const-string v2, "DRAW_IMAGE"

    invoke-direct {v0, v1, v8, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->DRAW_IMAGE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 75
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "HARDWARE_SPECIFICATIONS"

    const/4 v2, 0x5

    const-string v3, "HARDWARE_SPECIFICATIONS"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->HARDWARE_SPECIFICATIONS:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adobe/air/wand/TaskManager$MessageTitle;

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->VIBRATE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->DRAW_IMAGE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/air/wand/TaskManager$MessageTitle;->HARDWARE_SPECIFICATIONS:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->$VALUES:[Lcom/adobe/air/wand/TaskManager$MessageTitle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->mTitle:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/air/wand/TaskManager$MessageTitle;
    .locals 1
    .parameter

    .prologue
    .line 65
    const-class v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    return-object p0
.end method

.method public static values()[Lcom/adobe/air/wand/TaskManager$MessageTitle;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->$VALUES:[Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v0}, [Lcom/adobe/air/wand/TaskManager$MessageTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/air/wand/TaskManager$MessageTitle;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->mTitle:Ljava/lang/String;

    return-object v0
.end method
