.class Lcom/facebook/AppEventsLogger$FlushStatistics;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlushStatistics"
.end annotation


# instance fields
.field public numEvents:I

.field public result:Lcom/facebook/AppEventsLogger$FlushResult;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    .line 802
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    .line 800
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .locals 0
    .parameter

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/facebook/AppEventsLogger$FlushStatistics;-><init>()V

    return-void
.end method
