.class public Lcom/chartboost/sdk/impl/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 61
    .end local p1
    :goto_0
    return v0

    .line 46
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 49
    :cond_1
    instance-of v0, p1, Lcom/chartboost/sdk/impl/bb;

    if-eqz v0, :cond_3

    .line 50
    check-cast p1, Lcom/chartboost/sdk/impl/bb;

    .end local p1
    iget-object v0, p1, Lcom/chartboost/sdk/impl/bb;->a:Ljava/lang/String;

    .line 59
    :goto_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    move v0, v2

    goto :goto_0

    .line 52
    .restart local p1
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 53
    check-cast p1, Ljava/lang/String;

    .end local p1
    move-object v0, p1

    goto :goto_1

    .restart local p1
    :cond_4
    move v0, v2

    .line 56
    goto :goto_0

    .line 59
    .end local p1
    :cond_5
    if-nez v0, :cond_2

    :cond_6
    move v0, v3

    .line 61
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Ljava/lang/String;

    return-object v0
.end method
