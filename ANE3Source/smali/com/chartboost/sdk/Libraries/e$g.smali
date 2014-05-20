.class public Lcom/chartboost/sdk/Libraries/e$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/chartboost/sdk/Libraries/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/e$g;->a:Ljava/lang/String;

    .line 372
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/e$g;->b:Lcom/chartboost/sdk/Libraries/e$a;

    .line 373
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Libraries/e$g;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/Libraries/e$g;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$g;->b:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method
