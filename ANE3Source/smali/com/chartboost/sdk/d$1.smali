.class Lcom/chartboost/sdk/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/d;

.field private final synthetic b:Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/d;

    iput-object p2, p0, Lcom/chartboost/sdk/d$1;->b:Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/k;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/d$1;->b:Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/d$1;->b:Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;

    invoke-interface {v0, p2}, Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;->onFailure(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/d$1;->b:Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/d$1;->b:Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;->onSuccess(Lorg/json/JSONObject;)V

    .line 68
    :cond_0
    return-void
.end method
