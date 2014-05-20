.class public Lcom/chartboost/sdk/impl/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ai$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field static final f:Ljava/util/logging/Logger;

.field static g:Lcom/chartboost/sdk/impl/bf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/bf",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/impl/ap;",
            ">;>;"
        }
    .end annotation
.end field

.field static h:Lcom/chartboost/sdk/impl/bf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/bf",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/impl/ap;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static i:Ljava/nio/charset/Charset;

.field static j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/chartboost/sdk/impl/ak;",
            ">;"
        }
    .end annotation
.end field

.field static k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/chartboost/sdk/impl/aj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v0, "org.bson.BSON"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/ai;->f:Ljava/util/logging/Logger;

    .line 292
    sput-boolean v1, Lcom/chartboost/sdk/impl/ai;->a:Z

    .line 293
    sput-boolean v1, Lcom/chartboost/sdk/impl/ai;->b:Z

    .line 295
    new-instance v0, Lcom/chartboost/sdk/impl/bf;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bf;-><init>()V

    .line 294
    sput-object v0, Lcom/chartboost/sdk/impl/ai;->g:Lcom/chartboost/sdk/impl/bf;

    .line 298
    new-instance v0, Lcom/chartboost/sdk/impl/bf;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bf;-><init>()V

    .line 297
    sput-object v0, Lcom/chartboost/sdk/impl/ai;->h:Lcom/chartboost/sdk/impl/bf;

    .line 300
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/ai;->i:Ljava/nio/charset/Charset;

    .line 319
    new-instance v0, Lcom/chartboost/sdk/impl/ai$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/ai$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/ai;->j:Ljava/lang/ThreadLocal;

    .line 325
    new-instance v0, Lcom/chartboost/sdk/impl/ai$2;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/ai$2;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/ai;->k:Ljava/lang/ThreadLocal;

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 197
    invoke-static {}, Lcom/chartboost/sdk/impl/ai;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 206
    :goto_0
    return-object v0

    .line 200
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/ai;->g:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->a()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    move-object v0, p0

    .line 201
    goto :goto_0

    .line 202
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/ai;->g:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 203
    if-eqz v0, :cond_4

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/ap;

    .line 205
    invoke-interface {p0, v1}, Lcom/chartboost/sdk/impl/ap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-static {}, Lcom/chartboost/sdk/impl/ai$a;->values()[Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, p0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 127
    if-lez v4, :cond_2

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "some flags could not be recognized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    aget-object v5, v1, v3

    .line 121
    iget v6, v5, Lcom/chartboost/sdk/impl/ai$a;->j:I

    and-int/2addr v6, v4

    if-lez v6, :cond_1

    .line 122
    iget-char v6, v5, Lcom/chartboost/sdk/impl/ai$a;->k:C

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    iget v5, v5, Lcom/chartboost/sdk/impl/ai$a;->j:I

    sub-int/2addr v4, v5

    .line 120
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/chartboost/sdk/impl/ai;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/impl/ai;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
