.class Lcom/adobe/air/wand/WandManager$TaskListener;
.super Ljava/lang/Object;
.source "WandManager.java"

# interfaces
.implements Lcom/adobe/air/wand/TaskManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/WandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/WandManager;


# direct methods
.method private constructor <init>(Lcom/adobe/air/wand/WandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/adobe/air/wand/WandManager$TaskListener;->this$0:Lcom/adobe/air/wand/WandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/WandManager$TaskListener;-><init>(Lcom/adobe/air/wand/WandManager;)V

    return-void
.end method


# virtual methods
.method public drawImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$TaskListener;->this$0:Lcom/adobe/air/wand/WandManager;

    #getter for: Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;
    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$000(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/view/WandView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/air/wand/view/WandView;->drawImage(Landroid/graphics/Bitmap;)V

    .line 200
    return-void
.end method

.method public sendConnectionMessage(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$TaskListener;->this$0:Lcom/adobe/air/wand/WandManager;

    #getter for: Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;
    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$300(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/connection/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/air/wand/connection/Connection;->send(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setScreenOrientation(Lcom/adobe/air/wand/view/WandView$ScreenOrientation;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$TaskListener;->this$0:Lcom/adobe/air/wand/WandManager;

    #getter for: Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;
    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$000(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/view/WandView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/air/wand/view/WandView;->setScreenOrientation(Lcom/adobe/air/wand/view/WandView$ScreenOrientation;)V

    .line 191
    return-void
.end method
