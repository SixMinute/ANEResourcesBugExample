.class Lcom/chartboost/sdk/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/a$2;->a:Lcom/chartboost/sdk/a;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/chartboost/sdk/a$2;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/b;->a(Z)V

    .line 625
    :cond_0
    if-nez p1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/chartboost/sdk/a$2;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/chartboost/sdk/a$2;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadUrl(Ljava/lang/String;)V

    .line 629
    :cond_1
    return-void
.end method
