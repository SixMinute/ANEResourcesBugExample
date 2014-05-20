.class Lcom/chartboost/sdk/Chartboost$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Chartboost;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/Chartboost;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 484
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/chartboost/sdk/Chartboost$a;->b:I

    .line 486
    iget-object v0, p1, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/chartboost/sdk/Chartboost$a;->c:I

    .line 487
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/chartboost/sdk/Chartboost$a;->d:I

    .line 488
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/b;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/chartboost/sdk/Chartboost$a;->e:I

    .line 489
    return-void

    .line 485
    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$b;->hashCode()I

    move-result v0

    goto :goto_1

    .line 487
    :cond_2
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    .line 488
    :cond_3
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/Chartboost$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Chartboost$a;-><init>(Lcom/chartboost/sdk/Chartboost;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->clearImageCache()V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    iget-object v0, v0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    iget-object v0, v0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$b;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Chartboost$a;->c:I

    if-ne v0, v1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    iput-object v2, v0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Chartboost$a;->b:I

    if-ne v0, v1, :cond_2

    .line 498
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/CBImpressionActivity;)V

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Chartboost$a;->d:I

    if-ne v0, v1, :cond_3

    .line 500
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Chartboost$a;->e:I

    if-ne v0, v1, :cond_4

    .line 502
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/b;)V

    .line 503
    :cond_4
    return-void
.end method
