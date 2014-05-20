.class Lcom/adobe/air/wand/WandManager$ViewListener;
.super Ljava/lang/Object;
.source "WandManager.java"

# interfaces
.implements Lcom/adobe/air/wand/view/WandView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/WandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/WandManager;


# direct methods
.method private constructor <init>(Lcom/adobe/air/wand/WandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/adobe/air/wand/WandManager$ViewListener;->this$0:Lcom/adobe/air/wand/WandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/WandManager$ViewListener;-><init>(Lcom/adobe/air/wand/WandManager;)V

    return-void
.end method


# virtual methods
.method public getConnectionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$ViewListener;->this$0:Lcom/adobe/air/wand/WandManager;

    #getter for: Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;
    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$300(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/connection/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->getConnectionToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    const-string v0, ""

    goto :goto_0
.end method
