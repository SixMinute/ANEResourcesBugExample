.class Lcom/chartboost/sdk/Chartboost$b;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/Chartboost$b;->a:I

    .line 89
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/chartboost/sdk/Chartboost$b;->a:I

    return v0
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p1, :cond_0

    move v0, v2

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Chartboost$b;->a:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Chartboost$b;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 98
    if-nez p1, :cond_0

    move v0, v2

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Chartboost$b;->a()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Chartboost$b;->a:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost$b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 114
    if-nez p0, :cond_0

    .line 115
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost$b;->a()I

    move-result v0

    return v0
.end method
