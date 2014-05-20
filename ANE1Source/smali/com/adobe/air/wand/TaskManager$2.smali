.class Lcom/adobe/air/wand/TaskManager$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;


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
    .line 204
    iput-object p1, p0, Lcom/adobe/air/wand/TaskManager$2;->this$0:Lcom/adobe/air/wand/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged([FJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager$2;->this$0:Lcom/adobe/air/wand/TaskManager;

    #calls: Lcom/adobe/air/wand/TaskManager;->sendAccelerometerData([FJ)V
    invoke-static {v0, p1, p2, p3}, Lcom/adobe/air/wand/TaskManager;->access$200(Lcom/adobe/air/wand/TaskManager;[FJ)V

    .line 210
    return-void
.end method
