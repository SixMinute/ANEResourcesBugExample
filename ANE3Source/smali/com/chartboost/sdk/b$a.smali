.class public final Lcom/chartboost/sdk/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Lcom/chartboost/sdk/impl/a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/a;)V
    .locals 1
    .parameter

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/b$a;->a:Z

    .line 300
    iput-object p1, p0, Lcom/chartboost/sdk/b$a;->b:Lcom/chartboost/sdk/impl/a;

    .line 301
    return-void
.end method

.method protected constructor <init>(ZLcom/chartboost/sdk/impl/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-boolean p1, p0, Lcom/chartboost/sdk/b$a;->a:Z

    .line 292
    iput-object p2, p0, Lcom/chartboost/sdk/b$a;->b:Lcom/chartboost/sdk/impl/a;

    .line 293
    return-void
.end method
