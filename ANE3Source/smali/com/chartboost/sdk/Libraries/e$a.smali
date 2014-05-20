.class public abstract Lcom/chartboost/sdk/Libraries/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->a:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/Object;)Z
.end method

.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/e$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/e$a;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_0
    return v0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
