.class public Lcom/chartboost/sdk/impl/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ak;


# instance fields
.field protected a:Lcom/chartboost/sdk/impl/ar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;I[B)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 386
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 387
    array-length v0, p3

    .line 389
    if-ne p2, v2, :cond_0

    .line 390
    add-int/lit8 v0, v0, 0x4

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 393
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, p2}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 394
    if-ne p2, v2, :cond_1

    .line 395
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    const/4 v2, 0x4

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, p3}, Lcom/chartboost/sdk/impl/ar;->write([B)V

    .line 398
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v1

    .line 399
    sub-int v0, v1, v0

    array-length v1, p3

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ag;->a(II)V

    .line 400
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 289
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v5}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 294
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 301
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/ar;->a(II)V

    .line 302
    return-void

    .line 294
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 295
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-virtual {p0, p3, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 420
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 305
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v1

    .line 307
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 309
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ar;->a(II)V

    .line 314
    return-void

    .line 309
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 432
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/an;->c(Ljava/lang/String;)I

    .line 434
    invoke-virtual {p2}, Ljava/util/regex/Pattern;->flags()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/an;->c(Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 276
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v5}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 280
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    move v2, v5

    .line 281
    :goto_0
    if-lt v2, v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 285
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/ar;->a(II)V

    .line 286
    return-void

    .line 282
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 439
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 442
    const/16 v0, 0x7f

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 443
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    .line 101
    return-void
.end method

.method protected a(BLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 454
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/an;->c(Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/ar;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "in the middle of something"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    .line 97
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 319
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/au;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 326
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/au;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 328
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/au;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 329
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/av;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/av;->a()B

    move-result v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/av;->b()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;I[B)V

    .line 383
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/aw;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 341
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    .line 343
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/aw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/ax;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 332
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 335
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ax;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ax;->b()Lcom/chartboost/sdk/impl/al;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/an;->b(Lcom/chartboost/sdk/impl/al;)I

    .line 337
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/ar;->a(II)V

    .line 338
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/ba;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 424
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ba;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->d(I)V

    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ba;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->d(I)V

    .line 428
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ba;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->d(I)V

    .line 429
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/bb;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/bb;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/String;B)V

    .line 412
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 347
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 349
    return-void

    .line 348
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 357
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 358
    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_0

    .line 359
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_0

    .line 360
    instance-of v0, p2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    .line 361
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 375
    :goto_0
    return-void

    .line 364
    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_3

    .line 365
    :cond_2
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ar;->a(J)V

    goto :goto_0

    .line 368
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_4

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 369
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ar;->a(D)V

    goto :goto_0

    .line 373
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 415
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/String;B)V

    .line 416
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 352
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ar;->a(J)V

    .line 354
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 403
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 406
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ar;->a(J)V

    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ar;->a(J)V

    .line 408
    return-void
.end method

.method protected a(Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;I[B)V

    .line 379
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/al;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/chartboost/sdk/impl/al;)[B
    .locals 1
    .parameter

    .prologue
    .line 85
    new-instance v0, Lcom/chartboost/sdk/impl/aq;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/aq;-><init>()V

    .line 86
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/an;->a(Lcom/chartboost/sdk/impl/ar;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/an;->b(Lcom/chartboost/sdk/impl/al;)I

    .line 88
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->a()V

    .line 89
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aq;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/chartboost/sdk/impl/al;)I
    .locals 1
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/al;)I

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;Lcom/chartboost/sdk/impl/al;)I
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x0

    const-string v8, "_id"

    .line 128
    if-nez p2, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can\'t save a null object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v2

    .line 136
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_f

    .line 137
    const/4 v0, 0x4

    .line 139
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/al;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v0

    sub-int/2addr v0, v2

    .line 195
    :goto_1
    return v0

    .line 142
    :cond_1
    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v3

    .line 147
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v9}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 149
    const/4 v1, 0x0

    .line 150
    if-ne v0, v5, :cond_6

    if-nez p1, :cond_6

    const/4 v4, 0x1

    .line 153
    :goto_2
    if-ne v0, v5, :cond_e

    .line 154
    if-eqz v4, :cond_3

    const-string v0, "_id"

    invoke-interface {p2, v8}, Lcom/chartboost/sdk/impl/al;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    const-string v0, "_id"

    const-string v0, "_id"

    invoke-interface {p2, v8}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_3
    const-string v0, "_transientFields"

    invoke-interface {p2, v0}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    instance-of v5, v0, Ljava/util/List;

    if-eqz v5, :cond_e

    .line 160
    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 165
    :goto_3
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 166
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v9}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 194
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Lcom/chartboost/sdk/impl/ar;->a(II)V

    .line 195
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_6
    move v4, v9

    .line 150
    goto :goto_2

    .line 166
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "_id"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    :cond_8
    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 174
    :cond_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 178
    :cond_a
    invoke-interface {p2}, Lcom/chartboost/sdk/impl/al;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    if-eqz v4, :cond_c

    const-string v6, "_id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 183
    :cond_c
    if-eqz v5, :cond_d

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 186
    :cond_d
    invoke-interface {p2, v0}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 188
    invoke-virtual {p0, v0, v6}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    move-object v5, v1

    goto/16 :goto_3

    :cond_f
    move v0, v5

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->a()I

    move-result v0

    .line 459
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ar;->c(I)V

    .line 460
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/an;->c(Ljava/lang/String;)I

    move-result v1

    .line 461
    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/ar;->a(II)V

    .line 462
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 200
    const-string v1, "_transientFields"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v1, "$where"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 206
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lcom/chartboost/sdk/impl/an;->a(BLjava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {p2}, Lcom/chartboost/sdk/impl/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 213
    if-nez v1, :cond_3

    .line 214
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_3
    instance-of v2, v1, Ljava/util/Date;

    if-eqz v2, :cond_4

    .line 216
    check-cast v1, Ljava/util/Date;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 217
    :cond_4
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_5

    .line 218
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 219
    :cond_5
    instance-of v2, v1, Ljava/lang/Character;

    if-eqz v2, :cond_6

    .line 220
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_6
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_7
    instance-of v2, v1, Lcom/chartboost/sdk/impl/ba;

    if-eqz v2, :cond_8

    .line 224
    check-cast v1, Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/ba;)V

    goto :goto_0

    .line 225
    :cond_8
    instance-of v2, v1, Lcom/chartboost/sdk/impl/al;

    if-eqz v2, :cond_9

    .line 226
    check-cast v1, Lcom/chartboost/sdk/impl/al;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/al;)I

    goto :goto_0

    .line 227
    :cond_9
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    .line 228
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 229
    :cond_a
    instance-of v2, v1, Ljava/util/regex/Pattern;

    if-eqz v2, :cond_b

    .line 230
    check-cast v1, Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    goto :goto_0

    .line 231
    :cond_b
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_c

    .line 232
    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 233
    :cond_c
    instance-of v2, v1, Ljava/lang/Iterable;

    if-eqz v2, :cond_d

    .line 234
    check-cast v1, Ljava/lang/Iterable;

    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Iterable;)V

    goto/16 :goto_0

    .line 235
    :cond_d
    instance-of v2, v1, [B

    if-eqz v2, :cond_e

    .line 236
    check-cast v1, [B

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 237
    :cond_e
    instance-of v2, v1, Lcom/chartboost/sdk/impl/av;

    if-eqz v2, :cond_f

    .line 238
    check-cast v1, Lcom/chartboost/sdk/impl/av;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/av;)V

    goto/16 :goto_0

    .line 239
    :cond_f
    instance-of v2, v1, Ljava/util/UUID;

    if-eqz v2, :cond_10

    .line 240
    check-cast v1, Ljava/util/UUID;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 241
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 242
    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 244
    :cond_11
    instance-of v2, v1, Lcom/chartboost/sdk/impl/bb;

    if-eqz v2, :cond_12

    .line 245
    check-cast v1, Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/bb;)V

    goto/16 :goto_0

    .line 247
    :cond_12
    instance-of v2, v1, Lcom/chartboost/sdk/impl/au;

    if-eqz v2, :cond_13

    .line 248
    check-cast v1, Lcom/chartboost/sdk/impl/au;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/au;)V

    goto/16 :goto_0

    .line 250
    :cond_13
    instance-of v2, v1, Lcom/chartboost/sdk/impl/ax;

    if-eqz v2, :cond_14

    .line 251
    check-cast v1, Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/ax;)V

    goto/16 :goto_0

    .line 253
    :cond_14
    instance-of v2, v1, Lcom/chartboost/sdk/impl/aw;

    if-eqz v2, :cond_15

    .line 254
    check-cast v1, Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/aw;)V

    goto/16 :goto_0

    .line 256
    :cond_15
    instance-of v2, v1, Lcom/chartboost/sdk/impl/ab;

    if-eqz v2, :cond_16

    .line 257
    new-instance v3, Lcom/chartboost/sdk/impl/ao;

    invoke-direct {v3}, Lcom/chartboost/sdk/impl/ao;-><init>()V

    .line 258
    const-string v4, "$ref"

    move-object v0, v1

    check-cast v0, Lcom/chartboost/sdk/impl/ab;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v2, "$id"

    check-cast v1, Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ab;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, p1, v3}, Lcom/chartboost/sdk/impl/an;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/al;)I

    goto/16 :goto_0

    .line 262
    :cond_16
    instance-of v2, v1, Lcom/chartboost/sdk/impl/az;

    if-eqz v2, :cond_17

    .line 263
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/an;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_17
    instance-of v2, v1, Lcom/chartboost/sdk/impl/ay;

    if-eqz v2, :cond_18

    .line 265
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/an;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_18
    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t serialize "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected c(Ljava/lang/String;)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 474
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v6

    move v2, v6

    .line 477
    :goto_0
    if-lt v1, v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 507
    add-int/lit8 v0, v2, 0x1

    .line 508
    return v0

    .line 478
    :cond_0
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 480
    const/16 v4, 0x80

    if-ge v3, v4, :cond_1

    .line 481
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    int-to-byte v5, v3

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    .line 503
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 484
    :cond_1
    const/16 v4, 0x800

    if-ge v3, v4, :cond_2

    .line 485
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    shr-int/lit8 v5, v3, 0x6

    add-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 486
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    and-int/lit8 v5, v3, 0x3f

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 487
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 489
    :cond_2
    const/high16 v4, 0x1

    if-ge v3, v4, :cond_3

    .line 490
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    shr-int/lit8 v5, v3, 0xc

    add-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 491
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 492
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    and-int/lit8 v5, v3, 0x3f

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 493
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 496
    :cond_3
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    shr-int/lit8 v5, v3, 0x12

    add-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 497
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 498
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 499
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ar;

    and-int/lit8 v5, v3, 0x3f

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ar;->write(I)V

    .line 500
    add-int/lit8 v2, v2, 0x4

    goto :goto_1
.end method
