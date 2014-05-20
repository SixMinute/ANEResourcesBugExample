.class Lcom/chartboost/sdk/Libraries/e$k;
.super Lcom/chartboost/sdk/Libraries/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:[Lcom/chartboost/sdk/Libraries/e$a;


# direct methods
.method public constructor <init>([Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 1
    .parameter

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/e$a;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/e$k;->a:Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/e$k;->b:[Lcom/chartboost/sdk/Libraries/e$a;

    .line 303
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$k;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$k;->a:Ljava/lang/String;

    .line 325
    :goto_0
    return-object v0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    const-string v1, "object must match ALL of the following: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/e$k;->b:[Lcom/chartboost/sdk/Libraries/e$a;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/e$k;->b:[Lcom/chartboost/sdk/Libraries/e$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/e$k;->b:[Lcom/chartboost/sdk/Libraries/e$a;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 323
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 305
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/e$k;->b:[Lcom/chartboost/sdk/Libraries/e$a;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 311
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/e$k;->b:[Lcom/chartboost/sdk/Libraries/e$a;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "object failed to match: <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/e$k;->b:[Lcom/chartboost/sdk/Libraries/e$a;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/e$k;->a:Ljava/lang/String;

    move v0, v3

    .line 308
    goto :goto_1

    .line 305
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
