.class Lcom/chartboost/sdk/impl/n$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/n$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/n$1;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/n$1;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n$1$1;->a:Lcom/chartboost/sdk/impl/n$1;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/n$1$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/n$1$1;->c:Landroid/app/Activity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n$1$1;->a:Lcom/chartboost/sdk/impl/n$1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/n$1;->a(Lcom/chartboost/sdk/impl/n$1;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/n$1$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/n$1$1;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/impl/n;->a(Lcom/chartboost/sdk/impl/n;Ljava/lang/String;Landroid/content/Context;)V

    .line 86
    return-void
.end method
