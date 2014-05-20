.class public abstract Lcom/chartboost/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/c$a;,
        Lcom/chartboost/sdk/c$b;,
        Lcom/chartboost/sdk/c$c;
    }
.end annotation


# instance fields
.field public a:Lcom/chartboost/sdk/c$a;

.field public b:Lcom/chartboost/sdk/c$c;

.field public c:Lcom/chartboost/sdk/c$a;

.field public d:Lcom/chartboost/sdk/c$a;

.field protected e:I

.field protected f:Lorg/json/JSONObject;

.field protected g:Lcom/chartboost/sdk/impl/a;

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/chartboost/sdk/c$b;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/a;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object v1, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/c$a;

    .line 125
    iput-object v1, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/c$c;

    .line 126
    iput-object v1, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/c$a;

    .line 127
    iput-object v1, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/c;->e:I

    .line 140
    iput-object p1, p0, Lcom/chartboost/sdk/c;->g:Lcom/chartboost/sdk/impl/a;

    .line 141
    iput-object v1, p0, Lcom/chartboost/sdk/c;->k:Lcom/chartboost/sdk/c$b;

    .line 142
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Lcom/chartboost/sdk/c$b;
.end method

.method protected a(Lcom/chartboost/sdk/Libraries/a$a;)V
    .locals 2
    .parameter

    .prologue
    .line 198
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/c;->h:I

    .line 199
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/c;->i:I

    .line 200
    iget v0, p0, Lcom/chartboost/sdk/c;->i:I

    iget v1, p0, Lcom/chartboost/sdk/c;->e:I

    if-ne v0, v1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/chartboost/sdk/c;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Z)V

    .line 158
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    const-string v1, "paramNoMemoryCache"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    iget-object v1, p0, Lcom/chartboost/sdk/c;->f:Lorg/json/JSONObject;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/chartboost/sdk/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/c;->i:I

    iput v0, p0, Lcom/chartboost/sdk/c;->j:I

    iput v0, p0, Lcom/chartboost/sdk/c;->h:I

    .line 147
    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->f:Lorg/json/JSONObject;

    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/c;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    .line 153
    :cond_0
    return-void
.end method

.method protected a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 172
    iget v1, p0, Lcom/chartboost/sdk/c;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/chartboost/sdk/c;->j:I

    .line 173
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, "checksum"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    const-string v3, "scale"

    const-wide/high16 v5, 0x3ff0

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 177
    if-nez p4, :cond_1

    .line 178
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v5, v3

    .line 179
    :goto_0
    const-string v3, "paramAssetScale"

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/impl/o;->a()Lcom/chartboost/sdk/impl/o;

    move-result-object v0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    .line 188
    :goto_1
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/a$a;)V

    goto :goto_1

    :cond_1
    move-object v5, p4

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/chartboost/sdk/c;->h:I

    iget v1, p0, Lcom/chartboost/sdk/c;->j:I

    if-eq v0, v1, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    .line 215
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/c;->g:Lcom/chartboost/sdk/impl/a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 241
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/c;->g:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/impl/a;)V

    .line 230
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v0

    .line 231
    if-nez v0, :cond_1

    .line 232
    iput-object v3, p0, Lcom/chartboost/sdk/c;->k:Lcom/chartboost/sdk/c$b;

    move v0, v2

    .line 233
    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/c;->a(Landroid/content/Context;)Lcom/chartboost/sdk/c$b;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/c;->k:Lcom/chartboost/sdk/c$b;

    .line 237
    iget-object v1, p0, Lcom/chartboost/sdk/c;->k:Lcom/chartboost/sdk/c$b;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/c$b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    iput-object v3, p0, Lcom/chartboost/sdk/c;->k:Lcom/chartboost/sdk/c$b;

    move v0, v2

    .line 241
    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->e()V

    .line 253
    iput-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/c$a;

    .line 254
    iput-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    .line 255
    iput-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/c$c;

    .line 256
    iput-object v0, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/c$a;

    .line 257
    iput-object v0, p0, Lcom/chartboost/sdk/c;->f:Lorg/json/JSONObject;

    .line 258
    return-void
.end method

.method public d()Lcom/chartboost/sdk/c$b;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/c;->k:Lcom/chartboost/sdk/c$b;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/c;->k:Lcom/chartboost/sdk/c$b;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/c;->k:Lcom/chartboost/sdk/c$b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c$b;->b()V

    .line 270
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->k:Lcom/chartboost/sdk/c$b;

    .line 271
    return-void
.end method
