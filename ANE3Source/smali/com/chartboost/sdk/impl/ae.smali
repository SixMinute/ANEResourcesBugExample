.class public Lcom/chartboost/sdk/impl/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-static {p0, v0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->a()Lcom/chartboost/sdk/impl/ah;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/impl/ah;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 57
    return-void
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "\""

    .line 85
    const-string v0, "\""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 105
    const-string v0, "\""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 88
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_2

    .line 89
    const-string v1, "\\\\"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    const/16 v2, 0x22

    if-ne v1, v2, :cond_3

    .line 91
    const-string v1, "\\\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 92
    :cond_3
    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 93
    const-string v1, "\\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 94
    :cond_4
    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    .line 95
    const-string v1, "\\r"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 96
    :cond_5
    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    .line 97
    const-string v1, "\\t"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 98
    :cond_6
    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 99
    const-string v1, "\\b"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 100
    :cond_7
    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
