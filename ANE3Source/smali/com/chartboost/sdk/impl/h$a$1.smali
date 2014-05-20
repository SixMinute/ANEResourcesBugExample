.class Lcom/chartboost/sdk/impl/h$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/h$a;-><init>(Lcom/chartboost/sdk/impl/h;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/h$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/h$a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h$a$1;->a:Lcom/chartboost/sdk/impl/h$a;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$1;->a:Lcom/chartboost/sdk/impl/h$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h$a;->b(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/h;->a:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$1;->a:Lcom/chartboost/sdk/impl/h$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h$a;->b(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/h;->a:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    .line 103
    :cond_0
    return-void
.end method
