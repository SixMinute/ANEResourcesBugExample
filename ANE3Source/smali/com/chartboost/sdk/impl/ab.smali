.class public Lcom/chartboost/sdk/impl/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 97
    .end local p1
    :goto_0
    return v0

    .line 90
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 92
    :cond_2
    check-cast p1, Lcom/chartboost/sdk/impl/ab;

    .line 94
    .end local p1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->a:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ab;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ab;->a:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ab;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_8
    move v0, v3

    .line 97
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 103
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 104
    return v0

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"$ref\" : \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"$id\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
