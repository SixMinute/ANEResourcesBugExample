.class Lcom/chartboost/sdk/impl/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/h;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h$1;->a:Lcom/chartboost/sdk/impl/h;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/a$a;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$1;->a:Lcom/chartboost/sdk/impl/h;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h;->e(Lcom/chartboost/sdk/impl/h;)Landroid/util/SparseArray;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$1;->a:Lcom/chartboost/sdk/impl/h;

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/h;->a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Libraries/a$a;)V

    .line 372
    return-void
.end method
