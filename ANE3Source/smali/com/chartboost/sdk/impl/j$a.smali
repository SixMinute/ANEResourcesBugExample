.class Lcom/chartboost/sdk/impl/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/j;

.field private b:Lcom/chartboost/sdk/impl/k;

.field private c:Lorg/json/JSONObject;

.field private d:Ljava/lang/Integer;

.field private e:Lcom/chartboost/sdk/impl/j$b;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/j;ILcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/j$b;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j$a;->a:Lcom/chartboost/sdk/impl/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->d:Ljava/lang/Integer;

    .line 100
    iput-object p3, p0, Lcom/chartboost/sdk/impl/j$a;->b:Lcom/chartboost/sdk/impl/k;

    .line 101
    iput-object p4, p0, Lcom/chartboost/sdk/impl/j$a;->e:Lcom/chartboost/sdk/impl/j$b;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->c:Lorg/json/JSONObject;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/j$a;)Lcom/chartboost/sdk/impl/k;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->b:Lcom/chartboost/sdk/impl/k;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/j$a;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j$a;->c:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/j$a;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/j$a;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/j$a;)Lcom/chartboost/sdk/impl/j$b;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->e:Lcom/chartboost/sdk/impl/j$b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->b:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->a:Lcom/chartboost/sdk/impl/j;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/j;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CBQueuedRequests-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/sdk/impl/j$a;->a:Lcom/chartboost/sdk/impl/j;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/j$a;->b:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/k;->h()Lorg/json/JSONObject;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_0

    .line 112
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 114
    if-eqz v3, :cond_1

    .line 116
    :try_start_1
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :goto_0
    :try_start_2
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    :cond_0
    :goto_1
    return-void

    .line 118
    :catch_0
    move-exception v3

    .line 121
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    goto :goto_1

    .line 124
    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->e:Lcom/chartboost/sdk/impl/j$b;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$a;->e:Lcom/chartboost/sdk/impl/j$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/j$a;->b:Lcom/chartboost/sdk/impl/k;

    invoke-interface {v0, v1, p1}, Lcom/chartboost/sdk/impl/j$b;->a(Lcom/chartboost/sdk/impl/k;Ljava/lang/String;)V

    goto :goto_1
.end method
