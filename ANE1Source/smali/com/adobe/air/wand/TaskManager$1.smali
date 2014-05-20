.class Lcom/adobe/air/wand/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Lcom/adobe/air/wand/view/TouchSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/wand/TaskManager;-><init>(Lcom/adobe/air/wand/message/MessageManager;Landroid/view/Display;Lcom/adobe/air/wand/view/TouchSensor;Lcom/adobe/air/wand/motionsensor/Accelerometer;Landroid/os/Vibrator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/TaskManager;


# direct methods
.method constructor <init>(Lcom/adobe/air/wand/TaskManager;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/adobe/air/wand/TaskManager$1;->this$0:Lcom/adobe/air/wand/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEvent(Lcom/adobe/air/wand/view/GestureEventData;)V
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager$1;->this$0:Lcom/adobe/air/wand/TaskManager;

    #calls: Lcom/adobe/air/wand/TaskManager;->sendGestureEventData(Lcom/adobe/air/wand/view/GestureEventData;)V
    invoke-static {v0, p1}, Lcom/adobe/air/wand/TaskManager;->access$100(Lcom/adobe/air/wand/TaskManager;Lcom/adobe/air/wand/view/GestureEventData;)V

    .line 201
    return-void
.end method

.method public onTouchEvent(Lcom/adobe/air/TouchEventData;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager$1;->this$0:Lcom/adobe/air/wand/TaskManager;

    #calls: Lcom/adobe/air/wand/TaskManager;->sendTouchEventData(Lcom/adobe/air/TouchEventData;)V
    invoke-static {v0, p1}, Lcom/adobe/air/wand/TaskManager;->access$000(Lcom/adobe/air/wand/TaskManager;Lcom/adobe/air/TouchEventData;)V

    .line 195
    return-void
.end method
