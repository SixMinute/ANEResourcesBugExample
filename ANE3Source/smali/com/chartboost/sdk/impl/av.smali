.class public Lcom/chartboost/sdk/impl/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:B

.field final b:[B


# virtual methods
.method public a()B
    .locals 1

    .prologue
    .line 57
    iget-byte v0, p0, Lcom/chartboost/sdk/impl/av;->a:B

    return v0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/impl/av;->b:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 86
    .end local p1
    :goto_0
    return v0

    .line 73
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/chartboost/sdk/impl/av;

    if-nez v0, :cond_1

    move v0, v2

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    check-cast p1, Lcom/chartboost/sdk/impl/av;

    .line 79
    .end local p1
    iget-byte v0, p0, Lcom/chartboost/sdk/impl/av;->a:B

    iget-byte v1, p1, Lcom/chartboost/sdk/impl/av;->a:B

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/av;->b:[B

    iget-object v1, p1, Lcom/chartboost/sdk/impl/av;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 83
    goto :goto_0

    :cond_3
    move v0, v3

    .line 86
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 91
    iget-byte v0, p0, Lcom/chartboost/sdk/impl/av;->a:B

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/sdk/impl/av;->b:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/av;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 93
    return v0

    .line 92
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
