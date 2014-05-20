.class Lcom/chartboost/sdk/Chartboost$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Chartboost;

.field private final synthetic b:Lcom/chartboost/sdk/b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$3;->a:Lcom/chartboost/sdk/Chartboost;

    iput-object p2, p0, Lcom/chartboost/sdk/Chartboost$3;->b:Lcom/chartboost/sdk/b;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$3;->b:Lcom/chartboost/sdk/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/b;->a(Z)V

    .line 460
    return-void
.end method
