.class public Lcom/chartboost/sdk/Libraries/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Libraries/d;->a:Ljava/lang/String;

    .line 112
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/d;->b:Ljavax/security/auth/x500/X500Principal;

    .line 39
    return-void
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 259
    int-to-float v0, p0

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/d;->b(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before modifying or accessing preferences."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cbPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-string v0, "UTF-8"

    const-string v5, ""

    .line 143
    if-nez p0, :cond_0

    const-string v0, ""

    move-object v0, v5

    .line 161
    :goto_0
    return-object v0

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 149
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    if-eqz v0, :cond_4

    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    if-eqz v3, :cond_5

    const-string v0, "UTF-8"

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This method requires UTF-8 encoding support"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :cond_4
    :try_start_1
    const-string v0, ""

    move-object v0, v5

    goto :goto_2

    .line 155
    :cond_5
    const-string v0, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    goto :goto_3
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 166
    if-nez p0, :cond_0

    move-object v0, v4

    .line 183
    :goto_0
    return-object v0

    .line 168
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_1

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 171
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 172
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    .line 173
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 178
    :cond_2
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 174
    :cond_3
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_4

    .line 175
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 176
    :cond_4
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v4

    .line 177
    goto :goto_2

    .line 179
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 187
    if-nez p0, :cond_0

    move-object v0, v5

    .line 206
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 191
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 206
    goto :goto_0

    .line 193
    :cond_1
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 195
    instance-of v4, v1, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 196
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 201
    :cond_2
    :goto_2
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    goto :goto_1

    .line 197
    :cond_3
    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_4

    .line 198
    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 199
    :cond_4
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v5

    .line 200
    goto :goto_2
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    .line 212
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 213
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    move-object v0, v1

    .line 227
    goto :goto_0

    .line 215
    :cond_1
    :try_start_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 216
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 217
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 222
    :cond_2
    :goto_2
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 213
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 218
    :cond_3
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_4

    .line 219
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_2

    .line 220
    :cond_4
    if-nez v0, :cond_2

    .line 221
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 223
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 337
    if-nez p0, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    .line 339
    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 340
    check-cast p0, Lorg/json/JSONObject;

    move-object v0, p0

    goto :goto_0

    .line 341
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 342
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$g;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$g;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given Map must have all String keys in order to be converted to JSON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 346
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given argument must be either a JSONObject or a Map that can be converted to a JSONObject."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/apache/http/HttpEntity;)V
    .locals 1
    .parameter

    .prologue
    .line 371
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 361
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 119
    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 123
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    move v3, v6

    .line 125
    :goto_0
    :try_start_1
    array-length v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v2, v0, :cond_1

    move v0, v3

    .line 138
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 139
    :goto_2
    or-int/2addr v0, v1

    return v0

    .line 126
    :cond_1
    :try_start_2
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 127
    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 128
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 129
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v4, Lcom/chartboost/sdk/Libraries/d;->b:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 130
    if-nez v0, :cond_0

    .line 125
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v1, v6

    .line 138
    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_1
.end method

.method public static b(ILandroid/content/Context;)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 264
    int-to-float v0, p0

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/d;->b(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static b(Landroid/content/Context;)F
    .locals 1
    .parameter

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/chartboost/sdk/Libraries/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/d;->a:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/chartboost/sdk/Libraries/d;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 231
    if-nez p0, :cond_1

    .line 232
    const/4 v0, 0x0

    .line 249
    :cond_0
    return-object v0

    .line 233
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 234
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 238
    :try_start_0
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 239
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/d;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    .line 244
    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    goto :goto_0

    .line 240
    :cond_2
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 241
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_1

    .line 242
    :cond_3
    if-nez p0, :cond_4

    .line 243
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    move-object v3, p0

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Lcom/chartboost/sdk/Libraries/CBOrientation;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 268
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 271
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 274
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v0, v8

    .line 286
    :goto_0
    if-ne v0, v5, :cond_3

    move v0, v5

    .line 301
    :goto_1
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_6

    .line 307
    :cond_0
    :goto_2
    if-eqz v0, :cond_8

    .line 308
    packed-switch v2, :pswitch_data_0

    .line 317
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 329
    :goto_3
    return-object v0

    .line 277
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_2

    move v0, v5

    .line 278
    goto :goto_0

    :cond_2
    move v0, v6

    .line 280
    goto :goto_0

    .line 288
    :cond_3
    if-ne v0, v6, :cond_4

    move v0, v7

    .line 289
    goto :goto_1

    .line 290
    :cond_4
    if-ne v0, v8, :cond_9

    .line 293
    if-ne v1, v5, :cond_5

    move v0, v5

    .line 294
    goto :goto_1

    .line 295
    :cond_5
    if-ne v1, v6, :cond_9

    move v0, v7

    .line 296
    goto :goto_1

    .line 304
    :cond_6
    if-eqz v0, :cond_7

    move v0, v7

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_2

    .line 310
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_LEFT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_3

    .line 312
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_3

    .line 314
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_RIGHT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_3

    .line 320
    :cond_8
    packed-switch v2, :pswitch_data_1

    .line 329
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_3

    .line 322
    :pswitch_3
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_LEFT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_3

    .line 324
    :pswitch_4
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->LANDSCAPE_REVERSE:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_3

    .line 326
    :pswitch_5
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->PORTRAIT_RIGHT:Lcom/chartboost/sdk/Libraries/CBOrientation;

    goto :goto_3

    :cond_9
    move v0, v5

    goto :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 320
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cbIdentityTrackingDisabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
