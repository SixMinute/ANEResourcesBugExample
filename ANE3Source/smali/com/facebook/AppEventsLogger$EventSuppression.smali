.class Lcom/facebook/AppEventsLogger$EventSuppression;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventSuppression"
.end annotation


# instance fields
.field private behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

.field private timeoutPeriod:I


# direct methods
.method constructor <init>(ILcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;)V
    .locals 0
    .parameter "timeoutPeriod"
    .parameter "behavior"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->timeoutPeriod:I

    .line 141
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    .line 142
    return-void
.end method


# virtual methods
.method getBehavior()Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    return-object v0
.end method

.method getTimeoutPeriod()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->timeoutPeriod:I

    return v0
.end method
