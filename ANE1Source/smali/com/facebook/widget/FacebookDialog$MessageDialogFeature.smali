.class public final enum Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;
.super Ljava/lang/Enum;
.source "FacebookDialog.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$DialogFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageDialogFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;",
        ">;",
        "Lcom/facebook/widget/FacebookDialog$DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

.field public static final enum MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

.field public static final enum PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    new-instance v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    const-string v1, "MESSAGE_DIALOG"

    .line 141
    const v2, 0x13350ac

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    .line 142
    new-instance v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    const-string v1, "PHOTOS"

    .line 145
    const v2, 0x1335124

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    sget-object v1, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->ENUM$VALUES:[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "minVersion"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->minVersion:I

    .line 152
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    return-object p0
.end method

.method public static values()[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->ENUM$VALUES:[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->minVersion:I

    return v0
.end method
