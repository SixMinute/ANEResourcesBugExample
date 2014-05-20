.class Lcom/chartboost/sdk/impl/o$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/o$a;->a(Lcom/chartboost/sdk/Libraries/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/o$a;

.field private final synthetic b:Lcom/chartboost/sdk/Libraries/a$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/o$a;Lcom/chartboost/sdk/Libraries/a$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/o$a$1;->b:Lcom/chartboost/sdk/Libraries/a$a;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/o$a;->a(Lcom/chartboost/sdk/impl/o$a;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/o$a;->a(Lcom/chartboost/sdk/impl/o$a;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "paramNoMemoryCache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 220
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a$1;->b:Lcom/chartboost/sdk/Libraries/a$a;

    if-eqz v1, :cond_0

    .line 221
    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/o$a;->e(Lcom/chartboost/sdk/impl/o$a;)Lcom/chartboost/sdk/impl/o;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/o;->a(Lcom/chartboost/sdk/impl/o;)Lcom/chartboost/sdk/Libraries/a;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/o$a;->b(Lcom/chartboost/sdk/impl/o$a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a$1;->b:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/o$a;->c(Lcom/chartboost/sdk/impl/o$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/o$a;->c(Lcom/chartboost/sdk/impl/o$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 232
    invoke-static {v0}, Lcom/chartboost/sdk/impl/o;->a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/o$a;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    if-ne v2, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a$1;->b:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/o$a;->d(Lcom/chartboost/sdk/impl/o$a;)Lcom/chartboost/sdk/impl/o$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/o$a;->d(Lcom/chartboost/sdk/impl/o$a;)Lcom/chartboost/sdk/impl/o$b;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a$1;->b:Lcom/chartboost/sdk/Libraries/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a$1;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/o$a;->a(Lcom/chartboost/sdk/impl/o$a;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/impl/o$b;->a(Lcom/chartboost/sdk/Libraries/a$a;Landroid/os/Bundle;)V

    .line 243
    :cond_2
    return-void

    .line 217
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
