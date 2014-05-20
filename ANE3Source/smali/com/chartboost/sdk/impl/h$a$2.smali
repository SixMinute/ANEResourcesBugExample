.class Lcom/chartboost/sdk/impl/h$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/h$a;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/h$a;

.field private final synthetic b:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/h$a;Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h$a$2;->a:Lcom/chartboost/sdk/impl/h$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/h$a$2;->b:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$2;->a:Lcom/chartboost/sdk/impl/h$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/h$a;->a(Lcom/chartboost/sdk/impl/h$a;Z)V

    .line 237
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$2;->a:Lcom/chartboost/sdk/impl/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h$a;->requestLayout()V

    .line 238
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$2;->a:Lcom/chartboost/sdk/impl/h$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h$a;->a(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 239
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$2;->a:Lcom/chartboost/sdk/impl/h$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h$a;->a(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$2;->a:Lcom/chartboost/sdk/impl/h$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/h$a;->a(Lcom/chartboost/sdk/impl/h$a;Z)V

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$2;->b:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$2;->b:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-ne v0, v1, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$2;->a:Lcom/chartboost/sdk/impl/h$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h$a;->a(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method
