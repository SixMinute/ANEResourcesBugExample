.class public Lcom/chartboost/sdk/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/a$a;,
        Lcom/chartboost/sdk/impl/a$b;,
        Lcom/chartboost/sdk/impl/a$c;
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Ljava/util/Date;

.field public c:Lcom/chartboost/sdk/impl/a$b;

.field public d:Lcom/chartboost/sdk/impl/a$c;

.field public e:Ljava/lang/String;

.field public f:Lcom/chartboost/sdk/c;

.field public g:Lcom/chartboost/sdk/impl/a$a;

.field public h:Lcom/chartboost/sdk/impl/u;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/a$c;Lcom/chartboost/sdk/impl/a$a;Lcom/chartboost/sdk/impl/a$b;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p1, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    :goto_0
    iput-object p4, p0, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 82
    iput-object p5, p0, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    .line 84
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/a;->b:Ljava/util/Date;

    .line 85
    iput-object p3, p0, Lcom/chartboost/sdk/impl/a;->g:Lcom/chartboost/sdk/impl/a$a;

    .line 86
    iput-object p2, p0, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    .line 87
    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/a;->l:Z

    .line 88
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/a;->i:Z

    .line 89
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/a;->j:Z

    .line 90
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/a;->k:Z

    .line 91
    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "native"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 93
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v3, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne v2, v3, :cond_0

    .line 94
    new-instance v1, Lcom/chartboost/sdk/impl/b;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/b;-><init>(Lcom/chartboost/sdk/impl/a;)V

    .line 95
    iput-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    .line 109
    :goto_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    new-instance v2, Lcom/chartboost/sdk/impl/a$1;

    invoke-direct {v2, p0, p0}, Lcom/chartboost/sdk/impl/a$1;-><init>(Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/a;)V

    iput-object v2, v1, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/c$a;

    .line 116
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    new-instance v2, Lcom/chartboost/sdk/impl/a$2;

    invoke-direct {v2, p0, p0}, Lcom/chartboost/sdk/impl/a$2;-><init>(Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/a;)V

    iput-object v2, v1, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/c$a;

    .line 123
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    new-instance v2, Lcom/chartboost/sdk/impl/a$3;

    invoke-direct {v2, p0, p0}, Lcom/chartboost/sdk/impl/a$3;-><init>(Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/a;)V

    iput-object v2, v1, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/c$c;

    .line 143
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    new-instance v2, Lcom/chartboost/sdk/impl/a$4;

    invoke-direct {v2, p0, p0}, Lcom/chartboost/sdk/impl/a$4;-><init>(Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/a;)V

    iput-object v2, v1, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    .line 151
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/c;->a(Lorg/json/JSONObject;)V

    .line 152
    return-void

    .line 97
    :cond_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne v1, v2, :cond_1

    .line 98
    new-instance v1, Lcom/chartboost/sdk/impl/h;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/h;-><init>(Lcom/chartboost/sdk/impl/a;)V

    .line 99
    iput-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    goto :goto_1

    .line 103
    :cond_1
    new-instance v1, Lcom/chartboost/sdk/impl/x;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/x;-><init>(Lcom/chartboost/sdk/impl/a;)V

    .line 104
    iput-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/a;->i:Z

    .line 159
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/a;->j:Z

    .line 160
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/a;->k:Z

    .line 161
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->a()Z

    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/a;->i:Z

    .line 167
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/a;->j:Z

    .line 168
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/a;->k:Z

    move v0, v1

    .line 169
    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->a()V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/c$b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/c$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()V

    .line 185
    :cond_1
    iput-object v2, p0, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    .line 186
    iput-object v2, p0, Lcom/chartboost/sdk/impl/a;->b:Ljava/util/Date;

    .line 187
    iput-object v2, p0, Lcom/chartboost/sdk/impl/a;->g:Lcom/chartboost/sdk/impl/a$a;

    .line 188
    iput-object v2, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    .line 189
    iput-object v2, p0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    .line 190
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->a()V

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/c$b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/c$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->e()V

    .line 204
    :cond_1
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method
