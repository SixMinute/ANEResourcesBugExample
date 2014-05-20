.class Lcom/chartboost/sdk/impl/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/p;->c(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/chartboost/sdk/impl/p$a;

.field private final synthetic b:Lcom/chartboost/sdk/impl/a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/p$a;Lcom/chartboost/sdk/impl/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p$2;->a:Lcom/chartboost/sdk/impl/p$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/p$2;->b:Lcom/chartboost/sdk/impl/a;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$2;->a:Lcom/chartboost/sdk/impl/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$2;->a:Lcom/chartboost/sdk/impl/p$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p$2;->b:Lcom/chartboost/sdk/impl/a;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/p$a;->a(Lcom/chartboost/sdk/impl/a;)V

    .line 334
    :cond_0
    return-void
.end method
