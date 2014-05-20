.class Lcom/chartboost/sdk/impl/o$c;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chartboost/sdk/impl/o$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/o$a;)V
    .locals 1
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 270
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 269
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$c;->a:Ljava/lang/ref/WeakReference;

    .line 271
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/o$a;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/o$a;

    return-object p0
.end method
