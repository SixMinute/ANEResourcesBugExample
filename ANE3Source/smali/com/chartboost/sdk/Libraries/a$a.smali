.class public Lcom/chartboost/sdk/Libraries/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:F

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 89
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/Libraries/a$a;->a(I)V

    .line 90
    invoke-virtual {p0, p3}, Lcom/chartboost/sdk/Libraries/a$a;->a(F)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/a$a;->a(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/chartboost/sdk/Libraries/a$a;->d:Z

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput p1, p0, Lcom/chartboost/sdk/Libraries/a$a;->c:F

    .line 142
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/chartboost/sdk/Libraries/a$a;->b:I

    .line 122
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/a$a;->a:Landroid/graphics/Bitmap;

    .line 114
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/chartboost/sdk/Libraries/a$a;->d:Z

    .line 138
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Libraries/a$a;->b:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Libraries/a$a;->b:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/chartboost/sdk/Libraries/a$a;->c:F

    return v0
.end method
