.class Lcom/chartboost/sdk/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/a;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/a;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/chartboost/sdk/a$c;->a:Lcom/chartboost/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/a$c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/a$c;-><init>(Lcom/chartboost/sdk/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/a$c;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->e(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/impl/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/chartboost/sdk/a$c;->a:Lcom/chartboost/sdk/a;

    iget-object v1, p0, Lcom/chartboost/sdk/a$c;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->e(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/impl/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/a;->c(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/a$c;->a:Lcom/chartboost/sdk/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/a;->a(Z)V

    goto :goto_0
.end method
