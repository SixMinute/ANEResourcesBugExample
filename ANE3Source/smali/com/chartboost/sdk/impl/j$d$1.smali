.class Lcom/chartboost/sdk/impl/j$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/j$d;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/j$d;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/j$d;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j$d$1;->a:Lcom/chartboost/sdk/impl/j$d;

    iput-boolean p2, p0, Lcom/chartboost/sdk/impl/j$d$1;->b:Z

    iput-object p3, p0, Lcom/chartboost/sdk/impl/j$d$1;->c:Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$d$1;->a:Lcom/chartboost/sdk/impl/j$d;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/j$d;->a(Lcom/chartboost/sdk/impl/j$d;)Lcom/chartboost/sdk/impl/j$a;

    move-result-object v0

    .line 352
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/j$d$1;->b:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/chartboost/sdk/impl/j$a;->c(Lcom/chartboost/sdk/impl/j$a;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 353
    invoke-static {v0}, Lcom/chartboost/sdk/impl/j$a;->d(Lcom/chartboost/sdk/impl/j$a;)Lcom/chartboost/sdk/impl/j$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    invoke-static {v0}, Lcom/chartboost/sdk/impl/j$a;->d(Lcom/chartboost/sdk/impl/j$a;)Lcom/chartboost/sdk/impl/j$b;

    move-result-object v1

    invoke-static {v0}, Lcom/chartboost/sdk/impl/j$a;->c(Lcom/chartboost/sdk/impl/j$a;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0}, Lcom/chartboost/sdk/impl/j$a;->a(Lcom/chartboost/sdk/impl/j$a;)Lcom/chartboost/sdk/impl/k;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/chartboost/sdk/impl/j$b;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/k;)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j$d$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/j$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
