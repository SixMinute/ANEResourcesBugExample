.class Lcom/chartboost/sdk/impl/af$h;
.super Lcom/chartboost/sdk/impl/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ac;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/af$h;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/af$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    const-string v0, "<Binary Data>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    return-void
.end method
