.class public Lcom/chartboost/sdk/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/j$a;,
        Lcom/chartboost/sdk/impl/j$b;,
        Lcom/chartboost/sdk/impl/j$c;,
        Lcom/chartboost/sdk/impl/j$d;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/Libraries/e$a;

.field private static g:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/chartboost/sdk/impl/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    .line 44
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/chartboost/sdk/impl/j$1;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/j$1;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/Libraries/e$a;

    .line 231
    sput v3, Lcom/chartboost/sdk/impl/j;->g:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/j;->f:Landroid/os/Handler;

    .line 163
    if-nez p1, :cond_0

    const-string v0, "https://live.chartboost.com"

    :goto_0
    iput-object v0, p0, Lcom/chartboost/sdk/impl/j;->b:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/j;->d:Landroid/util/SparseArray;

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/j;->e:I

    .line 167
    return-void

    :cond_0
    move-object v0, p1

    .line 163
    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/j;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0
    .parameter

    .prologue
    .line 231
    sput p0, Lcom/chartboost/sdk/impl/j;->g:I

    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 231
    sget v0, Lcom/chartboost/sdk/impl/j;->g:I

    return v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/j;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/j;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/j;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "Chartboost"

    .line 196
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CBQueuedRequests-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    .line 211
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-ge v0, v2, :cond_0

    .line 213
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 214
    invoke-static {v2}, Lcom/chartboost/sdk/impl/k;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/k;

    move-result-object v2

    .line 215
    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    :catch_0
    move-exception v2

    .line 218
    :try_start_2
    const-string v2, "Chartboost"

    const-string v3, "Retrying request failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 221
    :catch_1
    move-exception v0

    .line 222
    const-string v0, "Chartboost"

    const-string v0, "Retrying request list failed"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/impl/k;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/j$b;)V

    .line 171
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/j$b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 178
    iget v0, p0, Lcom/chartboost/sdk/impl/j;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/chartboost/sdk/impl/j;->e:I

    .line 179
    new-instance v1, Lcom/chartboost/sdk/impl/j$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/chartboost/sdk/impl/j$a;-><init>(Lcom/chartboost/sdk/impl/j;ILcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/j$b;)V

    .line 182
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    const-string v0, "network unreachable"

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/j$a;->a(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/j;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    new-instance v0, Lcom/chartboost/sdk/impl/j$d;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/j$d;-><init>(Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/impl/j$a;)V

    .line 191
    invoke-static {}, Lcom/chartboost/sdk/impl/l;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
