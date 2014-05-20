.class Lcom/chartboost/sdk/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/a;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/a;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/a;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/a$3;->a:Lcom/chartboost/sdk/a;

    iput-boolean p2, p0, Lcom/chartboost/sdk/a$3;->b:Z

    iput-object p3, p0, Lcom/chartboost/sdk/a$3;->c:Ljava/lang/String;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/k;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/chartboost/sdk/a$3;->a:Lcom/chartboost/sdk/a;

    .line 368
    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    iget-object v2, p0, Lcom/chartboost/sdk/a$3;->c:Ljava/lang/String;

    .line 367
    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/a$3;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/b;->a(Z)V

    .line 373
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/k;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/chartboost/sdk/a$3;->a:Lcom/chartboost/sdk/a;

    .line 364
    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    iget-boolean v3, p0, Lcom/chartboost/sdk/a$3;->b:Z

    iget-object v4, p0, Lcom/chartboost/sdk/a$3;->c:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    .line 363
    invoke-static/range {v0 .. v5}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/a;Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/a$c;ZLjava/lang/String;Z)V

    .line 365
    return-void
.end method
