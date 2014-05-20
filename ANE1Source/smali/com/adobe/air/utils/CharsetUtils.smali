.class public Lcom/adobe/air/utils/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# static fields
.field public static final EMPTY_BARRAY:[B

.field public static final EMPTY_CARRAY:[C

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-class v0, Lcom/adobe/air/utils/CharsetUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/utils/CharsetUtils;->LOG_TAG:Ljava/lang/String;

    .line 48
    new-array v0, v1, [C

    sput-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_CARRAY:[C

    .line 49
    new-array v0, v1, [B

    sput-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertMBCStoUTF16([BLjava/lang/String;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0, p1}, Lcom/adobe/air/utils/CharsetUtils;->DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 112
    const-string v1, "UTF-16LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    sget-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    goto :goto_0
.end method

.method public static ConvertMBCStoUTF8([BLjava/lang/String;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 166
    :try_start_0
    invoke-static {p0, p1}, Lcom/adobe/air/utils/CharsetUtils;->DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 168
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 175
    sget-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    goto :goto_0
.end method

.method public static ConvertUTF16toMBCS([BLjava/lang/String;)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 126
    :try_start_0
    const-string v0, "UTF-16LE"

    invoke-static {p0, v0}, Lcom/adobe/air/utils/CharsetUtils;->DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 128
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 130
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 131
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    sget-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    goto :goto_0
.end method

.method public static ConvertUTF8toMBCS([BLjava/lang/String;)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 145
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/adobe/air/utils/CharsetUtils;->DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 147
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 149
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 150
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    sget-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    goto :goto_0
.end method

.method public static DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 103
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 104
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static QueryAvailableCharsets()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    const-string v0, ""

    .line 184
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    .line 186
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 189
    goto :goto_0

    .line 190
    :cond_0
    return-object v2
.end method

.method public static mbcsToUtf16([B)[C
    .locals 2
    .parameter

    .prologue
    .line 75
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 78
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_CARRAY:[C

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    sget-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_CARRAY:[C

    goto :goto_0
.end method

.method public static mbcsToUtf8([B)[B
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-static {p0}, Lcom/adobe/air/utils/CharsetUtils;->mbcsToUtf16([B)[C

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/adobe/air/utils/CharsetUtils;->utf16ToUtf8([C)[B

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public static utf16ToUtf8([C)[B
    .locals 2
    .parameter

    .prologue
    .line 55
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 58
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    sget-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    goto :goto_0
.end method
