.class Lcom/facebook/AppEventsLogger$4;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$reason:Lcom/facebook/AppEventsLogger$FlushReason;


# direct methods
.method constructor <init>(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$4;->val$reason:Lcom/facebook/AppEventsLogger$FlushReason;

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$4;->val$reason:Lcom/facebook/AppEventsLogger$FlushReason;

    #calls: Lcom/facebook/AppEventsLogger;->flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->access$1(Lcom/facebook/AppEventsLogger$FlushReason;)V

    .line 729
    return-void
.end method
