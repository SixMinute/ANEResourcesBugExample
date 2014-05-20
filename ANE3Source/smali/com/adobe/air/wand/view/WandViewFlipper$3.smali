.class Lcom/adobe/air/wand/view/WandViewFlipper$3;
.super Ljava/lang/Object;
.source "WandViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/wand/view/WandViewFlipper;->loadCompanionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/view/WandViewFlipper;


# direct methods
.method constructor <init>(Lcom/adobe/air/wand/view/WandViewFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper$3;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$3;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    iget-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper$3;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    #getter for: Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I
    invoke-static {v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$100(Lcom/adobe/air/wand/view/WandViewFlipper;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->setDisplayedChild(I)V

    .line 240
    return-void
.end method
