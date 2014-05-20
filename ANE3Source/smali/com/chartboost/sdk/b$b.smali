.class Lcom/chartboost/sdk/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/b;

.field private b:Lcom/chartboost/sdk/impl/a;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/b;Lcom/chartboost/sdk/impl/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/chartboost/sdk/b$b;->a:Lcom/chartboost/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/chartboost/sdk/b$b;->b:Lcom/chartboost/sdk/impl/a;

    .line 242
    iput-boolean p3, p0, Lcom/chartboost/sdk/b$b;->c:Z

    .line 243
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/b$b;->b:Lcom/chartboost/sdk/impl/a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->d:Lcom/chartboost/sdk/impl/a$b;

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/chartboost/sdk/b$b;->b:Lcom/chartboost/sdk/impl/a;

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->a:Lcom/chartboost/sdk/impl/a$b;

    iput-object v1, v0, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 248
    iget-object v0, p0, Lcom/chartboost/sdk/b$b;->a:Lcom/chartboost/sdk/b;

    iget-object v1, p0, Lcom/chartboost/sdk/b$b;->b:Lcom/chartboost/sdk/impl/a;

    iget-boolean v2, p0, Lcom/chartboost/sdk/b$b;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/b;->b(Lcom/chartboost/sdk/impl/a;Z)V

    .line 250
    :cond_0
    return-void
.end method
