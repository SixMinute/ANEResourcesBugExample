.class public Lcom/adobe/air/wand/WandActivity;
.super Landroid/app/Activity;
.source "WandActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WandActivity"


# instance fields
.field private mWandManager:Lcom/adobe/air/wand/WandManager;

.field private mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    .line 50
    iput-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-direct {v0, p0}, Lcom/adobe/air/wand/connection/WandWebSocket;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    .line 73
    const v0, 0x7f0700e1

    invoke-virtual {p0, v0}, Lcom/adobe/air/wand/WandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/view/WandView;

    .line 78
    new-instance v1, Lcom/adobe/air/wand/WandManager;

    iget-object v2, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-direct {v1, p0, v0, v2}, Lcom/adobe/air/wand/WandManager;-><init>(Landroid/app/Activity;Lcom/adobe/air/wand/view/WandView;Lcom/adobe/air/wand/connection/Connection;)V

    iput-object v1, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private terminate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/WandManager;->dispose()V

    .line 156
    iput-object v1, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    .line 158
    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-virtual {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->dispose()V

    .line 159
    iput-object v1, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    .line 160
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/adobe/air/wand/WandActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 63
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/adobe/air/wand/WandActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/adobe/air/wand/WandActivity;->initialize()V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/wand/WandActivity;->terminate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/WandManager;->focus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 101
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/WandManager;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/WandManager;->focus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method
