.class Lcom/chartboost/sdk/impl/h$2;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h$2;->a:Lcom/chartboost/sdk/impl/h;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/a$a;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$2;->a:Lcom/chartboost/sdk/impl/h;

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/h;->b(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Libraries/a$a;)V

    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$2;->a:Lcom/chartboost/sdk/impl/h;

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/h;->a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Libraries/a$a;)V

    return-void
.end method
