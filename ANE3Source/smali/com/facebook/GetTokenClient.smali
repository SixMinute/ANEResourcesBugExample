.class final Lcom/facebook/GetTokenClient;
.super Lcom/facebook/internal/PlatformServiceClient;
.source "GetTokenClient.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "applicationId"

    .prologue
    .line 28
    const/high16 v2, 0x1

    const v3, 0x10001

    .line 29
    const v4, 0x133060d

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/PlatformServiceClient;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected populateRequestBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 34
    return-void
.end method
