.class Lcom/chartboost/sdk/impl/s$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/s;-><init>(Landroid/content/Context;I)V
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s$2;->a:Lcom/chartboost/sdk/impl/s;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$2;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/s;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s$2;->a:Lcom/chartboost/sdk/impl/s;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/s;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    const-string v2, "input_method"

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 72
    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return v3

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method
