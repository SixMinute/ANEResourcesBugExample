.class public final Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/b$a;,
        Lcom/chartboost/sdk/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/Chartboost;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/chartboost/sdk/impl/t;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/chartboost/sdk/impl/u;

.field private h:Lcom/chartboost/sdk/impl/u;


# direct methods
.method protected constructor <init>(Lcom/chartboost/sdk/Chartboost;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/chartboost/sdk/b;->d:Z

    .line 29
    iput-boolean v0, p0, Lcom/chartboost/sdk/b;->e:Z

    .line 30
    iput-boolean v0, p0, Lcom/chartboost/sdk/b;->f:Z

    .line 37
    iput-object p1, p0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/Chartboost;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/b;->b:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/b;)Lcom/chartboost/sdk/Chartboost;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/Chartboost;

    return-object v0
.end method

.method private b(Lcom/chartboost/sdk/impl/a;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 59
    iget-boolean v0, p0, Lcom/chartboost/sdk/b;->e:Z

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 64
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 65
    :cond_2
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    goto :goto_0

    .line 69
    :cond_3
    iget-boolean v1, p1, Lcom/chartboost/sdk/impl/a;->i:Z

    if-eqz v1, :cond_4

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/chartboost/sdk/impl/a;->i:Z

    .line 71
    new-instance v1, Lcom/chartboost/sdk/impl/u;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/c$b;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/impl/u;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/u$a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    .line 73
    iget-object v1, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    .line 74
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    iput-object v0, p1, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    .line 78
    iput-boolean v4, p0, Lcom/chartboost/sdk/b;->e:Z

    goto :goto_0

    .line 81
    :cond_4
    new-instance v1, Lcom/chartboost/sdk/impl/u;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/c$b;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/impl/u;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/u$a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    .line 82
    iget-object v1, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    .line 83
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->b()Lcom/chartboost/sdk/impl/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->a()V

    .line 87
    sget-object v0, Lcom/chartboost/sdk/impl/p$b;->a:Lcom/chartboost/sdk/impl/p$b;

    .line 88
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne v1, v2, :cond_5

    .line 89
    sget-object v0, Lcom/chartboost/sdk/impl/p$b;->c:Lcom/chartboost/sdk/impl/p$b;

    .line 90
    :cond_5
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p$b;->a(I)Lcom/chartboost/sdk/impl/p$b;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_6

    move-object v0, v1

    .line 93
    :cond_6
    iget-object v1, p0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getAnimationsOff()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 94
    sget-object v0, Lcom/chartboost/sdk/impl/p$b;->f:Lcom/chartboost/sdk/impl/p$b;

    .line 96
    :cond_7
    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    iput-object v1, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 97
    iget-object v1, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    iput-object v1, p1, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    .line 98
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/p;->a(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;)V

    .line 99
    iput-boolean v4, p0, Lcom/chartboost/sdk/b;->e:Z

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne v1, v2, :cond_8

    .line 104
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/ChartboostDelegate;->didShowInterstitial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_8
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne v1, v2, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->didShowMoreApps()V

    goto/16 :goto_0
.end method

.method private c(Lcom/chartboost/sdk/impl/a;)Lcom/chartboost/sdk/impl/p$a;
    .locals 1
    .parameter

    .prologue
    .line 255
    new-instance v0, Lcom/chartboost/sdk/b$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/b$1;-><init>(Lcom/chartboost/sdk/b;)V

    .line 264
    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 164
    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/impl/t;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/t;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/b;->c:Lcom/chartboost/sdk/impl/t;

    .line 172
    new-instance v1, Lcom/chartboost/sdk/impl/u;

    iget-object v2, p0, Lcom/chartboost/sdk/b;->c:Lcom/chartboost/sdk/impl/t;

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/impl/u;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/u$a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/b;->h:Lcom/chartboost/sdk/impl/u;

    .line 173
    iget-object v1, p0, Lcom/chartboost/sdk/b;->h:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/u;->b()Lcom/chartboost/sdk/impl/q;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/chartboost/sdk/impl/q;->a(Z)V

    .line 174
    iget-object v1, p0, Lcom/chartboost/sdk/b;->h:Lcom/chartboost/sdk/impl/u;

    .line 175
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v0, p0, Lcom/chartboost/sdk/b;->h:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->b()Lcom/chartboost/sdk/impl/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->a()V

    .line 177
    iget-object v0, p0, Lcom/chartboost/sdk/b;->h:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->b()Lcom/chartboost/sdk/impl/q;

    move-result-object v1

    iget-object v0, p0, Lcom/chartboost/sdk/b;->c:Lcom/chartboost/sdk/impl/t;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/t;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/q;->a(Landroid/view/View;)V

    .line 179
    iput-boolean v4, p0, Lcom/chartboost/sdk/b;->d:Z

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/b;->b:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/b$a;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p1, Lcom/chartboost/sdk/b$a;->a:Z

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/chartboost/sdk/b;->d()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/b$a;->b:Lcom/chartboost/sdk/impl/a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p1, Lcom/chartboost/sdk/b$a;->b:Lcom/chartboost/sdk/impl/a;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/b;->b(Lcom/chartboost/sdk/impl/a;)V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/impl/a;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/b;->e:Z

    .line 144
    new-instance v0, Lcom/chartboost/sdk/b$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/b$b;-><init>(Lcom/chartboost/sdk/b;Lcom/chartboost/sdk/impl/a;Z)V

    invoke-virtual {v0}, Lcom/chartboost/sdk/b$b;->run()V

    .line 145
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    if-ne v0, v1, :cond_0

    .line 146
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 150
    :goto_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/a;->c()V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    iget-object v1, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    .line 159
    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->a:Lcom/chartboost/sdk/impl/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lcom/chartboost/sdk/impl/a;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/b;->e:Z

    .line 121
    if-nez p2, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/b;->f:Z

    .line 124
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->d:Lcom/chartboost/sdk/impl/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 126
    sget-object v0, Lcom/chartboost/sdk/impl/p$b;->a:Lcom/chartboost/sdk/impl/p$b;

    .line 127
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne v1, v2, :cond_1

    .line 128
    sget-object v0, Lcom/chartboost/sdk/impl/p$b;->c:Lcom/chartboost/sdk/impl/p$b;

    .line 129
    :cond_1
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p$b;->a(I)Lcom/chartboost/sdk/impl/p$b;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getAnimationsOff()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    sget-object v0, Lcom/chartboost/sdk/impl/p$b;->f:Lcom/chartboost/sdk/impl/p$b;

    .line 135
    :cond_3
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/b;->c(Lcom/chartboost/sdk/impl/a;)Lcom/chartboost/sdk/impl/p$a;

    move-result-object v1

    .line 136
    invoke-static {v0, p1, v1}, Lcom/chartboost/sdk/impl/p;->b(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;)V

    .line 137
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/b;->h:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 192
    iget-object v1, p0, Lcom/chartboost/sdk/b;->h:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    iput-object v2, p0, Lcom/chartboost/sdk/b;->c:Lcom/chartboost/sdk/impl/t;

    .line 197
    iput-object v2, p0, Lcom/chartboost/sdk/b;->h:Lcom/chartboost/sdk/impl/u;

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/b;->d:Z

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 201
    iget-boolean v1, p0, Lcom/chartboost/sdk/b;->f:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getImpressionsUseActivities()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/chartboost/sdk/b;->e:Z

    if-nez v1, :cond_0

    .line 203
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->d()V

    .line 205
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 209
    :cond_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/chartboost/sdk/b;->d:Z

    return v0
.end method

.method public b(Lcom/chartboost/sdk/impl/a;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 217
    iget-object v1, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/a;->b()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/b;->g:Lcom/chartboost/sdk/impl/u;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/b;->f:Z

    .line 225
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getImpressionsUseActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/b;->d:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 227
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/chartboost/sdk/b;->e:Z

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
