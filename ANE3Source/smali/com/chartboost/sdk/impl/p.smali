.class public Lcom/chartboost/sdk/impl/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/p$a;,
        Lcom/chartboost/sdk/impl/p$b;
    }
.end annotation


# static fields
.field private static synthetic a:[I

.field private static synthetic b:[I


# direct methods
.method public static a(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/chartboost/sdk/impl/p;->a(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;)V

    .line 48
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/p;->b(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;Ljava/lang/Boolean;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/p;->c(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/chartboost/sdk/impl/p;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->values()[Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/chartboost/sdk/impl/p;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static b(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/p;->c(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;Ljava/lang/Boolean;)V

    .line 61
    return-void
.end method

.method private static b(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;Ljava/lang/Boolean;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    sget-object v0, Lcom/chartboost/sdk/impl/p$b;->f:Lcom/chartboost/sdk/impl/p$b;

    if-ne p0, v0, :cond_1

    .line 67
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/chartboost/sdk/impl/p$a;->a(Lcom/chartboost/sdk/impl/a;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->c()Landroid/view/View;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 84
    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/chartboost/sdk/impl/p$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/p$1;-><init>(Landroid/view/View;Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;Ljava/lang/Boolean;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/chartboost/sdk/impl/p;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/p$b;->values()[Lcom/chartboost/sdk/impl/p$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/p$b;->b:Lcom/chartboost/sdk/impl/p$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/p$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/impl/p$b;->f:Lcom/chartboost/sdk/impl/p$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/p$b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/chartboost/sdk/impl/p$b;->a:Lcom/chartboost/sdk/impl/p$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/p$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/chartboost/sdk/impl/p$b;->c:Lcom/chartboost/sdk/impl/p$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/p$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/chartboost/sdk/impl/p$b;->d:Lcom/chartboost/sdk/impl/p$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/p$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/chartboost/sdk/impl/p$b;->e:Lcom/chartboost/sdk/impl/p$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/p$b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/chartboost/sdk/impl/p;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private static c(Lcom/chartboost/sdk/impl/p$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/p$a;Ljava/lang/Boolean;)V
    .locals 22
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    const-wide/16 v14, 0x258

    .line 98
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 99
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 102
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/u;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/u;->c()Landroid/view/View;

    move-result-object v17

    .line 108
    if-eqz v17, :cond_0

    .line 114
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v12, v5

    .line 115
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v13, v5

    .line 116
    const/high16 v7, 0x4270

    .line 117
    const v18, 0x3ecccccd

    .line 118
    const/high16 v5, 0x3f80

    sub-float v5, v5, v18

    const/high16 v6, 0x4000

    div-float v19, v5, v6

    .line 125
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v20

    .line 127
    invoke-static {}, Lcom/chartboost/sdk/impl/p;->b()[I

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/impl/p$b;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 326
    :goto_1
    sget-object p3, Lcom/chartboost/sdk/impl/p$b;->f:Lcom/chartboost/sdk/impl/p$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_25

    .line 327
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/p$a;->a(Lcom/chartboost/sdk/impl/a;)V

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-static {}, Lcom/chartboost/sdk/impl/p;->a()[I

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 144
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/chartboost/sdk/impl/r;

    neg-float v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    .line 148
    :goto_2
    invoke-virtual {v5, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 149
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 150
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    move-object v0, v5

    move/from16 v1, v18

    move v2, v6

    move/from16 v3, v18

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 154
    :goto_3
    invoke-virtual {v5, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 156
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 158
    invoke-static {}, Lcom/chartboost/sdk/impl/p;->a()[I

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 173
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p3, Landroid/view/animation/TranslateAnimation;

    mul-float v5, v12, v19

    const/4 v6, 0x0

    neg-float v7, v13

    mul-float v7, v7, v18

    const/4 v8, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 177
    :goto_4
    move-object/from16 v0, p3

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 178
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 179
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 131
    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/chartboost/sdk/impl/r;

    neg-float v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_2

    .line 132
    :cond_2
    new-instance v5, Lcom/chartboost/sdk/impl/r;

    const/4 v6, 0x0

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_2

    .line 135
    :pswitch_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v6, Lcom/chartboost/sdk/impl/r;

    const/4 v8, 0x0

    const/high16 v5, 0x4000

    div-float v9, v12, v5

    const/high16 v5, 0x4000

    div-float v10, v13, v5

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    move-object v5, v6

    goto/16 :goto_2

    .line 136
    :cond_3
    new-instance v5, Lcom/chartboost/sdk/impl/r;

    const/4 v6, 0x0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_2

    .line 139
    :pswitch_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v6, Lcom/chartboost/sdk/impl/r;

    const/4 v8, 0x0

    const/high16 v5, 0x4000

    div-float v9, v12, v5

    const/high16 v5, 0x4000

    div-float v10, v13, v5

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    move-object v5, v6

    goto/16 :goto_2

    .line 140
    :cond_4
    new-instance v5, Lcom/chartboost/sdk/impl/r;

    const/4 v6, 0x0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_2

    .line 145
    :cond_5
    new-instance v5, Lcom/chartboost/sdk/impl/r;

    const/4 v6, 0x0

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_2

    .line 153
    :cond_6
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    move-object v0, v5

    move v1, v6

    move/from16 v2, v18

    move v3, v7

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto/16 :goto_3

    .line 160
    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    mul-float v6, v13, v19

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v12

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 161
    :cond_7
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    neg-float v6, v12

    mul-float v6, v6, v18

    const/4 v7, 0x0

    mul-float v8, v13, v19

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 164
    :pswitch_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_8

    new-instance p3, Landroid/view/animation/TranslateAnimation;

    mul-float v5, v12, v19

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v13

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 165
    :cond_8
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    mul-float v6, v12, v19

    const/4 v7, 0x0

    neg-float v8, v13

    mul-float v8, v8, v18

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 168
    :pswitch_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_9

    new-instance p3, Landroid/view/animation/TranslateAnimation;

    neg-float v5, v12

    mul-float v5, v5, v18

    const/4 v6, 0x0

    mul-float v7, v13, v19

    const/4 v8, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 169
    :cond_9
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    mul-float v7, v13, v19

    move-object/from16 v0, p3

    move v1, v5

    move v2, v12

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 174
    :cond_a
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    mul-float v6, v12, v19

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 184
    :pswitch_7
    invoke-static {}, Lcom/chartboost/sdk/impl/p;->a()[I

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_3

    .line 199
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Lcom/chartboost/sdk/impl/r;

    neg-float v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    .line 203
    :goto_5
    invoke-virtual {v5, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 204
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 205
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    move-object v0, v5

    move/from16 v1, v18

    move v2, v6

    move/from16 v3, v18

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 209
    :goto_6
    invoke-virtual {v5, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 210
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 211
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 213
    invoke-static {}, Lcom/chartboost/sdk/impl/p;->a()[I

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_4

    .line 228
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_13

    new-instance p3, Landroid/view/animation/TranslateAnimation;

    neg-float v5, v12

    mul-float v5, v5, v18

    const/4 v6, 0x0

    mul-float v7, v13, v19

    const/4 v8, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 232
    :goto_7
    move-object/from16 v0, p3

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 233
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 234
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 186
    :pswitch_8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v6, Lcom/chartboost/sdk/impl/r;

    const/4 v8, 0x0

    const/high16 v5, 0x4000

    div-float v9, v12, v5

    const/high16 v5, 0x4000

    div-float v10, v13, v5

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    move-object v5, v6

    goto/16 :goto_5

    .line 187
    :cond_b
    new-instance v5, Lcom/chartboost/sdk/impl/r;

    const/4 v6, 0x0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_5

    .line 190
    :pswitch_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v6, Lcom/chartboost/sdk/impl/r;

    const/4 v8, 0x0

    const/high16 v5, 0x4000

    div-float v9, v12, v5

    const/high16 v5, 0x4000

    div-float v10, v13, v5

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    move-object v5, v6

    goto/16 :goto_5

    .line 191
    :cond_c
    new-instance v5, Lcom/chartboost/sdk/impl/r;

    const/4 v6, 0x0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_5

    .line 194
    :pswitch_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Lcom/chartboost/sdk/impl/r;

    neg-float v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_5

    .line 195
    :cond_d
    new-instance v5, Lcom/chartboost/sdk/impl/r;

    const/4 v6, 0x0

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_5

    .line 200
    :cond_e
    new-instance v5, Lcom/chartboost/sdk/impl/r;

    const/4 v6, 0x0

    const/high16 v8, 0x4000

    div-float v8, v12, v8

    const/high16 v9, 0x4000

    div-float v9, v13, v9

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/r;-><init>(FFFFZ)V

    goto/16 :goto_5

    .line 208
    :cond_f
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    move-object v0, v5

    move v1, v6

    move/from16 v2, v18

    move v3, v7

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto/16 :goto_6

    .line 215
    :pswitch_b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_10

    new-instance p3, Landroid/view/animation/TranslateAnimation;

    mul-float v5, v12, v19

    const/4 v6, 0x0

    neg-float v7, v13

    mul-float v7, v7, v18

    const/4 v8, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 216
    :cond_10
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    mul-float v6, v12, v19

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 219
    :pswitch_c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_11

    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    mul-float v6, v13, v19

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v12

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 220
    :cond_11
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    neg-float v6, v12

    mul-float v6, v6, v18

    const/4 v7, 0x0

    mul-float v8, v13, v19

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 223
    :pswitch_d
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_12

    new-instance p3, Landroid/view/animation/TranslateAnimation;

    mul-float v5, v12, v19

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v13

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 224
    :cond_12
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    mul-float v6, v12, v19

    const/4 v7, 0x0

    neg-float v8, v13

    mul-float v8, v8, v18

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 229
    :cond_13
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    mul-float v7, v13, v19

    move-object/from16 v0, p3

    move v1, v5

    move v2, v12

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 239
    :pswitch_e
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 240
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 241
    invoke-static {}, Lcom/chartboost/sdk/impl/p;->a()[I

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_5

    move/from16 p3, v8

    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    .line 259
    :goto_8
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    move-object v0, v8

    move v1, v7

    move v2, v6

    move v3, v5

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 260
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 261
    const/16 p3, 0x1

    move-object v0, v8

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 262
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 243
    :pswitch_f
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v13

    .line 244
    :goto_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_15

    const/16 p3, 0x0

    :goto_a
    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    .line 245
    goto :goto_8

    .line 243
    :cond_14
    const/4 v7, 0x0

    goto :goto_9

    :cond_15
    move/from16 p3, v13

    .line 244
    goto :goto_a

    .line 247
    :pswitch_10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_16

    neg-float v5, v12

    .line 248
    :goto_b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_17

    const/16 p3, 0x0

    :goto_c
    move/from16 v6, p3

    move/from16 p3, v8

    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    .line 249
    goto :goto_8

    .line 247
    :cond_16
    const/4 v5, 0x0

    goto :goto_b

    .line 248
    :cond_17
    move v0, v12

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_c

    .line 251
    :pswitch_11
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_18

    neg-float v7, v13

    .line 252
    :goto_d
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_19

    const/16 p3, 0x0

    :goto_e
    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    .line 253
    goto :goto_8

    .line 251
    :cond_18
    const/4 v7, 0x0

    goto :goto_d

    .line 252
    :cond_19
    move v0, v13

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_e

    .line 255
    :pswitch_12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v12

    .line 256
    :goto_f
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1b

    const/16 p3, 0x0

    :goto_10
    move/from16 v6, p3

    move/from16 p3, v8

    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    goto/16 :goto_8

    .line 255
    :cond_1a
    const/4 v5, 0x0

    goto :goto_f

    :cond_1b
    move/from16 p3, v12

    .line 256
    goto :goto_10

    .line 267
    :pswitch_13
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 268
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 269
    invoke-static {}, Lcom/chartboost/sdk/impl/p;->a()[I

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_6

    move/from16 p3, v8

    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    .line 287
    :goto_11
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    move-object v0, v8

    move v1, v7

    move v2, v6

    move v3, v5

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 288
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 289
    const/16 p3, 0x1

    move-object v0, v8

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 290
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 271
    :pswitch_14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1c

    neg-float v7, v13

    .line 272
    :goto_12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1d

    const/16 p3, 0x0

    :goto_13
    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    .line 273
    goto :goto_11

    .line 271
    :cond_1c
    const/4 v7, 0x0

    goto :goto_12

    .line 272
    :cond_1d
    move v0, v13

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_13

    .line 275
    :pswitch_15
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v12

    .line 276
    :goto_14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1f

    const/16 p3, 0x0

    :goto_15
    move/from16 v6, p3

    move/from16 p3, v8

    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    .line 277
    goto :goto_11

    .line 275
    :cond_1e
    const/4 v5, 0x0

    goto :goto_14

    :cond_1f
    move/from16 p3, v12

    .line 276
    goto :goto_15

    .line 279
    :pswitch_16
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_20

    move v7, v13

    .line 280
    :goto_16
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_21

    const/16 p3, 0x0

    :goto_17
    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    .line 281
    goto :goto_11

    .line 279
    :cond_20
    const/4 v7, 0x0

    goto :goto_16

    :cond_21
    move/from16 p3, v13

    .line 280
    goto :goto_17

    .line 283
    :pswitch_17
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_22

    neg-float v5, v12

    .line 284
    :goto_18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_23

    const/16 p3, 0x0

    :goto_19
    move/from16 v6, p3

    move/from16 p3, v8

    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    goto/16 :goto_11

    .line 283
    :cond_22
    const/4 v5, 0x0

    goto :goto_18

    .line 284
    :cond_23
    move v0, v12

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_19

    .line 294
    :pswitch_18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_24

    .line 295
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v6, 0x3f19999a

    const v7, 0x3f8ccccd

    const v8, 0x3f19999a

    const v9, 0x3f8ccccd

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 296
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p3, v0

    const v6, 0x3f19999a

    mul-float p3, p3, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 297
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 298
    const/16 p3, 0x1

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 299
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 301
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const v7, 0x3f51745c

    const/high16 v8, 0x3f80

    const v9, 0x3f51745c

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 302
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p3, v0

    const v6, 0x3e4ccccc

    mul-float p3, p3, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 304
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p3, v0

    const v6, 0x3f19999a

    mul-float p3, p3, v6

    .line 303
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 305
    const/16 p3, 0x1

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 306
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 308
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const v7, 0x3f8e38e4

    const/high16 v8, 0x3f80

    const v9, 0x3f8e38e4

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 309
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p3, v0

    const v6, 0x3dccccc8

    mul-float p3, p3, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 310
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p3, v0

    const v6, 0x3f4ccccd

    mul-float p3, p3, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 311
    const/16 p3, 0x1

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 312
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 315
    :cond_24
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 316
    invoke-virtual {v5, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 317
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 318
    const/16 p3, 0x1

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 319
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 331
    :cond_25
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/Chartboost;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p3, Lcom/chartboost/sdk/impl/p$2;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/p$2;-><init>(Lcom/chartboost/sdk/impl/p$a;Lcom/chartboost/sdk/impl/a;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide v2, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_18
        :pswitch_0
        :pswitch_e
        :pswitch_13
    .end packed-switch

    .line 129
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 158
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 184
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 213
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 241
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 269
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
