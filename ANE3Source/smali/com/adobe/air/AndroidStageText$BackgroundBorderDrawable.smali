.class public Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "AndroidStageText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundBorderDrawable"
.end annotation


# instance fields
.field public mBkgColor:I

.field public mBkgPaint:Landroid/graphics/Paint;

.field public mBorderColor:I

.field public mHaveBkg:Z

.field public mHaveBorder:Z

.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageText;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 118
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 159
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    .line 160
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgColor:I

    .line 162
    const/high16 v0, -0x100

    iput v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBorderColor:I

    .line 119
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->init()V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/graphics/drawable/shapes/Shape;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 123
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 124
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 159
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    .line 160
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgColor:I

    .line 162
    const/high16 v0, -0x100

    iput v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBorderColor:I

    .line 125
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->init()V

    .line 126
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    if-eqz v0, :cond_1

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 135
    :cond_1
    return-void
.end method

.method public setBkgColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iput p1, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgColor:I

    .line 150
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iput p1, p0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBorderColor:I

    .line 156
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    return-void
.end method
