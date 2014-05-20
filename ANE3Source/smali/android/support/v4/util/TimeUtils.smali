.class public Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1
    .parameter "amt"
    .parameter "suffix"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    .line 39
    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    .line 40
    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 48
    :goto_0
    return v0

    .line 42
    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    .line 43
    :cond_2
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    .line 45
    :cond_3
    if-nez p2, :cond_4

    if-lez p0, :cond_5

    .line 46
    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 48
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 3
    .parameter "time"
    .parameter "now"
    .parameter "pw"

    .prologue
    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    goto :goto_0
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1
    .parameter "duration"
    .parameter "pw"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 165
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5
    .parameter "duration"
    .parameter "pw"
    .parameter "fieldLen"

    .prologue
    .line 156
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 158
    .local v0, len:I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    .end local v0           #len:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .parameter "duration"
    .parameter "builder"

    .prologue
    .line 148
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v2}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 150
    .local v0, len:I
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    .end local v0           #len:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static formatDurationLocked(JI)I
    .locals 18
    .parameter "duration"
    .parameter "fieldLen"

    .prologue
    .line 76
    sget-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move v0, v4

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 77
    move/from16 v0, p2

    new-array v0, v0, [C

    move-object v4, v0

    sput-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 80
    :cond_0
    sget-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 82
    .local v4, formatStr:[C
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-nez v5, :cond_2

    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, pos:I
    add-int/lit8 p2, p2, -0x1

    .line 85
    .end local p0
    :goto_0
    move v0, v7

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 86
    const/16 p0, 0x20

    aput-char p0, v4, v7

    goto :goto_0

    .line 88
    :cond_1
    const/16 p0, 0x30

    aput-char p0, v4, v7

    .line 89
    add-int/lit8 p0, v7, 0x1

    .line 143
    :goto_1
    return p0

    .line 93
    .end local v7           #pos:I
    .restart local p0
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-lez v5, :cond_5

    .line 94
    const/16 v5, 0x2b

    .local v5, prefix:C
    move v8, v5

    .line 100
    .end local v5           #prefix:C
    .local v8, prefix:C
    :goto_2
    const-wide/16 v5, 0x3e8

    rem-long v5, p0, v5

    long-to-int v14, v5

    .line 101
    .local v14, millis:I
    const-wide/16 v5, 0x3e8

    div-long p0, p0, v5

    .end local p0
    move-wide/from16 v0, p0

    long-to-double v0, v0

    move-wide/from16 p0, v0

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    move-wide/from16 v0, p0

    double-to-int v0, v0

    move v6, v0

    .line 102
    .local v6, seconds:I
    const/4 v5, 0x0

    .local v5, days:I
    const/16 p0, 0x0

    .local p0, hours:I
    const/16 p1, 0x0

    .line 104
    .local p1, minutes:I
    const v7, 0x15180

    if-le v6, v7, :cond_3

    .line 105
    const v5, 0x15180

    div-int v5, v6, v5

    .line 106
    const v7, 0x15180

    mul-int/2addr v7, v5

    sub-int/2addr v6, v7

    .line 108
    :cond_3
    const/16 v7, 0xe10

    if-le v6, v7, :cond_4

    .line 109
    move v0, v6

    div-int/lit16 v0, v0, 0xe10

    move/from16 p0, v0

    .line 110
    move/from16 v0, p0

    mul-int/lit16 v0, v0, 0xe10

    move v7, v0

    sub-int/2addr v6, v7

    .line 112
    :cond_4
    const/16 v7, 0x3c

    if-le v6, v7, :cond_13

    .line 113
    div-int/lit8 p1, v6, 0x3c

    .line 114
    mul-int/lit8 v7, p1, 0x3c

    sub-int/2addr v6, v7

    move v15, v6

    .line 117
    .end local v6           #seconds:I
    .local v15, seconds:I
    :goto_3
    const/4 v7, 0x0

    .line 119
    .restart local v7       #pos:I
    if-eqz p2, :cond_a

    .line 120
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v6, v9, v10}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v6

    .line 121
    .local v6, myLen:I
    const/4 v9, 0x1

    if-lez v6, :cond_6

    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x2

    move/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    .line 122
    const/4 v9, 0x1

    if-lez v6, :cond_7

    const/4 v10, 0x1

    :goto_5
    const/4 v11, 0x2

    move/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    .line 123
    const/4 v9, 0x1

    if-lez v6, :cond_8

    const/4 v10, 0x1

    :goto_6
    const/4 v11, 0x2

    invoke-static {v15, v9, v10, v11}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    .line 124
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lez v6, :cond_9

    const/4 v11, 0x3

    :goto_7
    invoke-static {v14, v9, v10, v11}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v6, v9

    .line 125
    :goto_8
    move v0, v6

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    .line 126
    const/16 v9, 0x20

    aput-char v9, v4, v7

    .line 127
    add-int/lit8 v7, v7, 0x1

    .line 128
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 96
    .end local v5           #days:I
    .end local v6           #myLen:I
    .end local v7           #pos:I
    .end local v8           #prefix:C
    .end local v14           #millis:I
    .end local v15           #seconds:I
    .end local p1           #minutes:I
    .local p0, duration:J
    :cond_5
    const/16 v5, 0x2d

    .line 97
    .local v5, prefix:C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    move v8, v5

    .end local v5           #prefix:C
    .restart local v8       #prefix:C
    goto/16 :goto_2

    .line 121
    .local v5, days:I
    .restart local v6       #myLen:I
    .restart local v7       #pos:I
    .restart local v14       #millis:I
    .restart local v15       #seconds:I
    .local p0, hours:I
    .restart local p1       #minutes:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 122
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 123
    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .line 124
    :cond_9
    const/4 v11, 0x0

    goto :goto_7

    .line 132
    .end local v6           #myLen:I
    :cond_a
    aput-char v8, v4, v7

    .line 133
    add-int/lit8 v7, v7, 0x1

    .line 135
    move/from16 v16, v7

    .line 136
    .local v16, start:I
    if-eqz p2, :cond_b

    const/4 v6, 0x1

    move/from16 v17, v6

    .line 137
    .local v17, zeropad:Z
    :goto_9
    const/16 v6, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    .end local v8           #prefix:C
    move-result v7

    .line 138
    const/16 v10, 0x68

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_c

    const/4 v5, 0x1

    move v12, v5

    .end local v5           #days:I
    :goto_a
    if-eqz v17, :cond_d

    const/4 v5, 0x2

    move v13, v5

    :goto_b
    move-object v8, v4

    move/from16 v9, p0

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 139
    const/16 v10, 0x6d

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    const/16 p0, 0x1

    move/from16 v12, p0

    .end local p0           #hours:I
    :goto_c
    if-eqz v17, :cond_f

    const/16 p0, 0x2

    move/from16 v13, p0

    :goto_d
    move-object v8, v4

    move/from16 v9, p1

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 140
    const/16 v10, 0x73

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_10

    const/16 p0, 0x1

    move/from16 v12, p0

    :goto_e
    if-eqz v17, :cond_11

    const/16 p0, 0x2

    move/from16 v13, p0

    :goto_f
    move-object v8, v4

    move v9, v15

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 141
    const/16 v10, 0x6d

    const/4 v12, 0x1

    if-eqz v17, :cond_12

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_12

    const/16 p0, 0x3

    move/from16 v13, p0

    :goto_10
    move-object v8, v4

    move v9, v14

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 142
    const/16 p0, 0x73

    aput-char p0, v4, v7

    .line 143
    add-int/lit8 p0, v7, 0x1

    goto/16 :goto_1

    .line 136
    .end local v17           #zeropad:Z
    .restart local v5       #days:I
    .restart local v8       #prefix:C
    .restart local p0       #hours:I
    :cond_b
    const/4 v6, 0x0

    move/from16 v17, v6

    goto :goto_9

    .line 138
    .end local v8           #prefix:C
    .restart local v17       #zeropad:Z
    :cond_c
    const/4 v5, 0x0

    move v12, v5

    goto :goto_a

    .end local v5           #days:I
    :cond_d
    const/4 v5, 0x0

    move v13, v5

    goto :goto_b

    .line 139
    :cond_e
    const/16 p0, 0x0

    move/from16 v12, p0

    goto :goto_c

    .end local p0           #hours:I
    :cond_f
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_d

    .line 140
    :cond_10
    const/16 p0, 0x0

    move/from16 v12, p0

    goto :goto_e

    :cond_11
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_f

    .line 141
    :cond_12
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_10

    .end local v7           #pos:I
    .end local v15           #seconds:I
    .end local v16           #start:I
    .end local v17           #zeropad:Z
    .restart local v5       #days:I
    .local v6, seconds:I
    .restart local v8       #prefix:C
    .restart local p0       #hours:I
    :cond_13
    move v15, v6

    .end local v6           #seconds:I
    .restart local v15       #seconds:I
    goto/16 :goto_3
.end method

.method private static printField([CICIZI)I
    .locals 3
    .parameter "formatStr"
    .parameter "amt"
    .parameter "suffix"
    .parameter "pos"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    .line 53
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 54
    :cond_0
    move v1, p3

    .line 55
    .local v1, startPos:I
    if-eqz p4, :cond_1

    const/4 v2, 0x3

    if-ge p5, v2, :cond_2

    :cond_1
    const/16 v2, 0x63

    if-le p1, v2, :cond_3

    .line 56
    :cond_2
    div-int/lit8 v0, p1, 0x64

    .line 57
    .local v0, dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 58
    add-int/lit8 p3, p3, 0x1

    .line 59
    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    .line 61
    .end local v0           #dig:I
    :cond_3
    if-eqz p4, :cond_4

    const/4 v2, 0x2

    if-ge p5, v2, :cond_5

    :cond_4
    const/16 v2, 0x9

    if-gt p1, v2, :cond_5

    if-eq v1, p3, :cond_6

    .line 62
    :cond_5
    div-int/lit8 v0, p1, 0xa

    .line 63
    .restart local v0       #dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 64
    add-int/lit8 p3, p3, 0x1

    .line 65
    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    .line 67
    .end local v0           #dig:I
    :cond_6
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 68
    add-int/lit8 p3, p3, 0x1

    .line 69
    aput-char p2, p0, p3

    .line 70
    add-int/lit8 p3, p3, 0x1

    .line 72
    .end local v1           #startPos:I
    :cond_7
    return p3
.end method
