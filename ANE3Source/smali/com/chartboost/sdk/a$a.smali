.class Lcom/chartboost/sdk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Lcom/chartboost/sdk/impl/a$c;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/chartboost/sdk/a$a;->c:Lcom/chartboost/sdk/impl/a$c;

    .line 36
    iput-object p2, p0, Lcom/chartboost/sdk/a$a;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p3}, Lcom/chartboost/sdk/a$a;->a(Z)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/a$a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/chartboost/sdk/a$a;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/a$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/chartboost/sdk/a$a;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/a$a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/a$a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/chartboost/sdk/a$a;->a:Z

    .line 46
    return-void
.end method
