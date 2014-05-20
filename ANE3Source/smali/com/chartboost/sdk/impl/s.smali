.class public Lcom/chartboost/sdk/impl/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/widget/HorizontalScrollView;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/BaseAdapter;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lcom/chartboost/sdk/impl/s$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/s$1;-><init>(Lcom/chartboost/sdk/impl/s;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->j:Landroid/database/DataSetObserver;

    .line 53
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    .line 54
    iput p2, p0, Lcom/chartboost/sdk/impl/s;->i:I

    .line 55
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    if-nez p2, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/s;->a(Landroid/content/Context;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->f:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->g:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->h:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/chartboost/sdk/impl/s$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/s$2;-><init>(Lcom/chartboost/sdk/impl/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/s;->b(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Landroid/widget/HorizontalScrollView;
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Landroid/widget/HorizontalScrollView;

    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/s;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Landroid/widget/ScrollView;
    .locals 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Landroid/widget/ScrollView;

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->h:Ljava/util/List;

    return-object v0
.end method

.method private d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/s;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/s;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/s;->i:I

    return v0
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/chartboost/sdk/impl/s;->i:I

    if-eq p1, v0, :cond_0

    .line 134
    iput p1, p0, Lcom/chartboost/sdk/impl/s;->i:I

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    if-nez p1, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/s;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/s;->a(Landroid/content/Context;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/s;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/s;->b(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public a(Landroid/widget/BaseAdapter;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->j:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/BaseAdapter;

    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->j:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 121
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->f:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->g:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->a:Landroid/widget/ScrollView;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->b:Landroid/widget/HorizontalScrollView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_0
.end method
