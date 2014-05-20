.class Lcom/chartboost/sdk/Libraries/e$b;
.super Lcom/chartboost/sdk/Libraries/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/e$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/Libraries/e$b;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "object must be a boolean."

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 108
    goto :goto_0
.end method
