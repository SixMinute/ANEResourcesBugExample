.class Lcom/chartboost/sdk/impl/s$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/s;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/s;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    .line 150
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 153
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/s;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v3, v6

    .line 154
    :goto_0
    if-lt v3, v2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/s;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->e(Lcom/chartboost/sdk/impl/s;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    move v4, v6

    .line 166
    :goto_1
    if-lt v4, v3, :cond_1

    .line 193
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/s;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 194
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->b(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 156
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/s;->d(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 157
    iget-object v4, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v4}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/s;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 158
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->e(Lcom/chartboost/sdk/impl/s;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v2

    .line 168
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->b(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 169
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/s;->d(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 170
    iget-object v5, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v5}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/s;)Ljava/util/List;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v2, 0x0

    .line 173
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 174
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 175
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v1, v2

    .line 177
    :goto_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/s;->e(Lcom/chartboost/sdk/impl/s;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget-object v5, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v5}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/s;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v2, v4, v1, v5}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->f(Lcom/chartboost/sdk/impl/s;)I

    move-result v0

    if-nez v0, :cond_3

    .line 183
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    :goto_3
    sub-int v2, v3, v9

    if-ge v4, v2, :cond_2

    .line 189
    invoke-virtual {v0, v6, v6, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/s;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 186
    :cond_3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method
