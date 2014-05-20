.class Lcom/adobe/air/AndroidStageText$RestrictFilter;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictFilter"
.end annotation


# static fields
.field private static final kMapSize:I = 0x2000


# instance fields
.field private mPattern:Ljava/lang/String;

.field private m_map:[B

.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1154
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    .line 1149
    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    .line 1156
    iput-object p2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    .line 1157
    if-eqz p2, :cond_5

    .line 1159
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1161
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    .line 1162
    invoke-virtual {p0, v7}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetAll(Z)V

    .line 1167
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_0

    .line 1170
    invoke-virtual {p0, v8}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetAll(Z)V

    :cond_0
    move v0, v7

    move v1, v7

    move v2, v8

    move v3, v7

    move v4, v7

    .line 1172
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 1174
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1176
    if-nez v4, :cond_2

    .line 1178
    sparse-switch v5, :sswitch_data_0

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v8

    .line 1201
    :goto_1
    if-eqz v2, :cond_6

    .line 1202
    if-eqz v4, :cond_4

    .line 1203
    :goto_2
    if-gt v1, v5, :cond_3

    .line 1204
    invoke-virtual {p0, v1, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetCode(CZ)V

    .line 1203
    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    :sswitch_0
    move v3, v2

    move v6, v4

    move v4, v8

    move v2, v7

    .line 1181
    goto :goto_1

    .line 1183
    :sswitch_1
    if-nez v2, :cond_1

    move v2, v8

    :goto_3
    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v7

    .line 1184
    goto :goto_1

    :cond_1
    move v2, v7

    .line 1183
    goto :goto_3

    :sswitch_2
    move v4, v3

    move v6, v8

    move v3, v2

    move v2, v7

    .line 1188
    goto :goto_1

    :cond_2
    move v4, v3

    move v6, v7

    move v3, v2

    move v2, v8

    .line 1199
    goto :goto_1

    :cond_3
    move v1, v7

    move v2, v7

    .line 1172
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v4, v6

    move v9, v2

    move v2, v3

    move v3, v9

    goto :goto_0

    .line 1209
    :cond_4
    invoke-virtual {p0, v5, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetCode(CZ)V

    move v1, v5

    move v2, v4

    .line 1210
    goto :goto_4

    .line 1216
    :cond_5
    return-void

    :cond_6
    move v2, v4

    goto :goto_4

    .line 1178
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x5c -> :sswitch_2
        0x5e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method IsCharAvailable(C)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1270
    .line 1271
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    if-nez v0, :cond_1

    move v0, v2

    .line 1283
    :goto_0
    return v0

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v1, p1, 0x7

    shl-int v1, v3, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method IsEmpty()Z
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method SetAll(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1297
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    int-to-byte v0, v0

    .line 1298
    :goto_1
    const/16 v2, 0x2000

    if-ge v1, v2, :cond_1

    .line 1300
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    aput-byte v0, v2, v1

    .line 1298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 1297
    goto :goto_0

    .line 1302
    :cond_1
    return-void
.end method

.method SetCode(CZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1288
    if-eqz p2, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v2, v0, v1

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1293
    :goto_0
    return-void

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v2, v0, v1

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v4, v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1223
    const/4 v0, 0x0

    .line 1260
    :goto_0
    return-object v0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    if-nez v0, :cond_1

    .line 1227
    const-string v0, ""

    goto :goto_0

    .line 1231
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v1, p3, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, p2

    .line 1232
    :goto_1
    if-ge v1, p3, :cond_5

    .line 1234
    const/4 v2, 0x1

    .line 1235
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1236
    invoke-virtual {p0, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->IsCharAvailable(C)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1242
    const/16 v2, 0x41

    if-lt v3, v2, :cond_3

    const/16 v2, 0x5a

    if-gt v3, v2, :cond_3

    .line 1243
    add-int/lit8 v2, v3, 0x20

    int-to-char v2, v2

    .line 1244
    invoke-virtual {p0, v2}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->IsCharAvailable(C)Z

    move-result v3

    .line 1252
    :goto_2
    if-eqz v3, :cond_2

    .line 1254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1232
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1245
    :cond_3
    const/16 v2, 0x61

    if-lt v3, v2, :cond_4

    const/16 v2, 0x7a

    if-gt v3, v2, :cond_4

    .line 1246
    const/16 v2, 0x20

    sub-int v2, v3, v2

    int-to-char v2, v2

    .line 1247
    invoke-virtual {p0, v2}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->IsCharAvailable(C)Z

    move-result v3

    goto :goto_2

    .line 1249
    :cond_4
    const/4 v2, 0x0

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_2

    .line 1257
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_2
.end method
