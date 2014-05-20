.class public Lcom/chartboost/sdk/impl/b;
.super Lcom/chartboost/sdk/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/b$a;
    }
.end annotation


# static fields
.field private static m:Landroid/graphics/Point;


# instance fields
.field public h:Lcom/chartboost/sdk/Libraries/a$a;

.field public i:Lcom/chartboost/sdk/Libraries/a$a;

.field public j:Lcom/chartboost/sdk/Libraries/a$a;

.field public k:Lcom/chartboost/sdk/Libraries/a$a;

.field public l:Lcom/chartboost/sdk/Libraries/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/impl/b;->m:Landroid/graphics/Point;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/a;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/c;-><init>(Lcom/chartboost/sdk/impl/a;)V

    .line 170
    const/4 v0, 0x5

    iput v0, p0, Lcom/chartboost/sdk/impl/b;->e:I

    .line 172
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->j:Lcom/chartboost/sdk/Libraries/a$a;

    .line 173
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->k:Lcom/chartboost/sdk/Libraries/a$a;

    .line 174
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->h:Lcom/chartboost/sdk/Libraries/a$a;

    .line 175
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->i:Lcom/chartboost/sdk/Libraries/a$a;

    .line 176
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/b;->b(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/b;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/Libraries/a$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/Libraries/a$a;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0xa

    const/high16 v3, 0x3f00

    .line 37
    sget-object v0, Lcom/chartboost/sdk/impl/b;->m:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/graphics/Point;

    invoke-static {v2, p1}, Lcom/chartboost/sdk/Libraries/d;->b(ILandroid/content/Context;)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    neg-int v1, v1

    .line 39
    invoke-static {v2, p1}, Lcom/chartboost/sdk/Libraries/d;->b(ILandroid/content/Context;)F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    .line 38
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/chartboost/sdk/impl/b;->m:Landroid/graphics/Point;

    .line 40
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/b;->m:Landroid/graphics/Point;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/chartboost/sdk/c$b;
    .locals 2
    .parameter

    .prologue
    .line 182
    new-instance v0, Lcom/chartboost/sdk/impl/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/b$a;-><init>(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;Lcom/chartboost/sdk/impl/b$a;)V

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 188
    invoke-super {p0, p1}, Lcom/chartboost/sdk/c;->a(Lorg/json/JSONObject;)V

    .line 190
    new-instance v0, Lcom/chartboost/sdk/impl/b$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/b$1;-><init>(Lcom/chartboost/sdk/impl/b;)V

    .line 191
    new-instance v1, Lcom/chartboost/sdk/impl/b$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/b$2;-><init>(Lcom/chartboost/sdk/impl/b;)V

    .line 192
    new-instance v2, Lcom/chartboost/sdk/impl/b$3;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/b$3;-><init>(Lcom/chartboost/sdk/impl/b;)V

    .line 193
    new-instance v3, Lcom/chartboost/sdk/impl/b$4;

    invoke-direct {v3, p0}, Lcom/chartboost/sdk/impl/b$4;-><init>(Lcom/chartboost/sdk/impl/b;)V

    .line 194
    new-instance v4, Lcom/chartboost/sdk/impl/b$5;

    invoke-direct {v4, p0}, Lcom/chartboost/sdk/impl/b$5;-><init>(Lcom/chartboost/sdk/impl/b;)V

    .line 196
    const-string v5, "ad-landscape"

    invoke-virtual {p0, v5, v0, v6}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Z)V

    .line 197
    const-string v0, "ad-portrait"

    invoke-virtual {p0, v0, v1, v6}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Z)V

    .line 198
    const-string v0, "frame-landscape"

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;)V

    .line 199
    const-string v0, "frame-portrait"

    invoke-virtual {p0, v0, v3}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;)V

    .line 200
    const-string v0, "close"

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;)V

    .line 201
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-super {p0}, Lcom/chartboost/sdk/c;->c()V

    .line 207
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->i:Lcom/chartboost/sdk/Libraries/a$a;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->i:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->a()V

    .line 209
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->i:Lcom/chartboost/sdk/Libraries/a$a;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->h:Lcom/chartboost/sdk/Libraries/a$a;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->h:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->a()V

    .line 213
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->h:Lcom/chartboost/sdk/Libraries/a$a;

    .line 215
    :cond_1
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->k:Lcom/chartboost/sdk/Libraries/a$a;

    .line 216
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->j:Lcom/chartboost/sdk/Libraries/a$a;

    .line 217
    iput-object v1, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    .line 218
    return-void
.end method
