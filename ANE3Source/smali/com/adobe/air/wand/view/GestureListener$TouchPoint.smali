.class Lcom/adobe/air/wand/view/GestureListener$TouchPoint;
.super Ljava/lang/Object;
.source "GestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/view/GestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchPoint"
.end annotation


# instance fields
.field private pid:I

.field final synthetic this$0:Lcom/adobe/air/wand/view/GestureListener;

.field private x:F

.field private y:F


# direct methods
.method constructor <init>(Lcom/adobe/air/wand/view/GestureListener;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object p1, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->this$0:Lcom/adobe/air/wand/view/GestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F

    .line 100
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I

    .line 102
    return-void
.end method

.method constructor <init>(Lcom/adobe/air/wand/view/GestureListener;FFI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->this$0:Lcom/adobe/air/wand/view/GestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p2, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F

    .line 106
    iput p3, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F

    .line 107
    iput p4, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;FFI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->assign(FFI)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F

    return v0
.end method

.method private assign(FFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput p1, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F

    .line 121
    iput p2, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F

    .line 122
    iput p3, p0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I

    .line 123
    return-void
.end method
