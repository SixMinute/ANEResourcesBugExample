.class public Lcom/chartboost/sdk/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/chartboost/sdk/Libraries/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->g:Lcom/chartboost/sdk/Libraries/e$a;

    .line 86
    iput-object p1, p0, Lcom/chartboost/sdk/impl/k;->a:Ljava/lang/String;

    .line 87
    const-string v0, "POST"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->e:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/k;
    .locals 2
    .parameter

    .prologue
    .line 290
    :try_start_0
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    const-string v1, "path"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v1, "method"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/k;->e:Ljava/lang/String;

    .line 292
    const-string v1, "query"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/k;->c:Ljava/util/Map;

    .line 293
    const-string v1, "body"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/k;->b:Lorg/json/JSONObject;

    .line 294
    const-string v1, "headers"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/k;->d:Ljava/util/Map;

    .line 295
    const-string v1, "ensureDelivery"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/k;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-object v0

    .line 297
    :catch_0
    move-exception v0

    .line 300
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 199
    .line 201
    :try_start_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 202
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 203
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 204
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 206
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v1, v3, :cond_0

    .line 208
    const/4 v1, 0x0

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 210
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v3, v1

    .line 217
    :goto_0
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 218
    if-lez v3, :cond_1

    .line 219
    :goto_1
    if-lez v2, :cond_2

    move v1, v2

    .line 220
    :goto_2
    const-string v2, "w"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    const-string v2, "h"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-void

    .line 213
    :catch_0
    move-exception v1

    move v1, v4

    :goto_3
    move v2, v4

    move v3, v1

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_2

    .line 213
    :catch_1
    move-exception v2

    goto :goto_3

    :cond_3
    move v2, v4

    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "/"

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->c:Ljava/util/Map;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    return-object v0

    .line 180
    :cond_0
    const-string v1, "/"

    move-object v1, v3

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const-string v5, "sdk"

    const-string v4, "model"

    const-string v3, "identity"

    .line 119
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    .line 120
    const-string v1, "app"

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v1, "sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "model"

    const-string v1, "Android Simulator"

    invoke-virtual {p0, v4, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v1, "identity"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :goto_0
    const-string v1, "device_type"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v1, "os"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v1, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v1, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v1, "sdk"

    const-string v1, "3.4.0"

    invoke-virtual {p0, v5, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v1, "framework"

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getFramework()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v0, "timestamp"

    .line 138
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cbPrefSessionCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 141
    const-string v1, "session"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->b()I

    move-result v0

    .line 144
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 145
    const-string v1, "reachability"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/k;->b(Landroid/content/Context;)V

    .line 149
    const-string v0, "scale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 154
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 155
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 156
    const-string v2, "bundle"

    invoke-virtual {p0, v2, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string v1, "bundle_id"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_1
    return-void

    .line 128
    :cond_1
    const-string v1, "model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v1, "identity"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->b:Lorg/json/JSONObject;

    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->d:Ljava/util/Map;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/k;->f:Z

    .line 267
    return-void
.end method

.method public varargs a([Lcom/chartboost/sdk/Libraries/e$g;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$g;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->g:Lcom/chartboost/sdk/Libraries/e$a;

    .line 282
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 170
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s %s\n%s\n%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 171
    iget-object v4, p0, Lcom/chartboost/sdk/impl/k;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 170
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "X-Chartboost-App"

    invoke-virtual {p0, v1, p1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "X-Chartboost-Signature"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->d:Ljava/util/Map;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/k;->f:Z

    return v0
.end method

.method public g()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->g:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 307
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 308
    const-string v1, "path"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v1, "method"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v1, "query"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/k;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/d;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v1, "body"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/k;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v1, "headers"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/k;->d:Ljava/util/Map;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/d;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v1, "ensureDelivery"

    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/k;->f:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-object v0

    .line 315
    :catch_0
    move-exception v0

    .line 318
    const/4 v0, 0x0

    goto :goto_0
.end method
