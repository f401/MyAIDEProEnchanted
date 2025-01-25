.class public Lorg/apache/commons/lang3/RandomStringUtils;
.super Ljava/lang/Object;
.source "RandomStringUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static random(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ)Ljava/lang/String;
    .registers 12

    .line 297
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(IIIZZ[C)Ljava/lang/String;
    .registers 13

    .line 323
    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .registers 13

    const/16 v3, 0x41

    const/16 v2, 0x30

    .line 363
    if-nez p0, :cond_9

    .line 364
    const-string v0, ""

    .line 433
    :goto_8
    return-object v0

    .line 365
    :cond_9
    if-ltz p0, :cond_e3

    .line 368
    if-eqz p5, :cond_10

    array-length v0, p5

    if-eqz v0, :cond_46

    .line 372
    :cond_10
    if-nez p1, :cond_5b

    if-nez p2, :cond_5b

    .line 373
    if-eqz p5, :cond_4e

    .line 374
    array-length p2, p5

    .line 385
    :cond_17
    :goto_17
    if-nez p5, :cond_21

    if-eqz p4, :cond_1d

    if-le p2, v2, :cond_81

    :cond_1d
    if-eqz p3, :cond_21

    if-le p2, v3, :cond_81

    .line 394
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    sub-int v3, p2, p1

    .line 397
    :goto_28
    add-int/lit8 v1, p0, -0x1

    if-eqz p0, :cond_dd

    .line 399
    if-nez p5, :cond_b1

    .line 400
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 402
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_100

    .line 414
    :goto_3a
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 415
    if-nez v1, :cond_b9

    const/4 v5, 0x1

    if-le v4, v5, :cond_b9

    .line 416
    add-int/lit8 p0, v1, 0x1

    goto :goto_28

    .line 369
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The chars array must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_4e
    if-nez p3, :cond_56

    if-nez p4, :cond_56

    .line 376
    const p2, 0x10ffff

    goto :goto_17

    .line 378
    :cond_56
    const/16 p2, 0x7b

    .line 379
    const/16 p1, 0x20

    goto :goto_17

    .line 381
    :cond_5b
    if-gt p2, p1, :cond_17

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameter end ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") must be greater than start ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameter end ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") must be greater then ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") for generating digits or greater then ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") for generating letters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :sswitch_ad
    add-int/lit8 p0, v1, 0x1

    goto/16 :goto_28

    .line 411
    :cond_b1
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    aget-char v0, p5, v0

    goto :goto_3a

    .line 420
    :cond_b9
    if-eqz p3, :cond_c1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-nez v5, :cond_cd

    :cond_c1
    if-eqz p4, :cond_c9

    .line 421
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_cd

    :cond_c9
    if-nez p3, :cond_da

    if-nez p4, :cond_da

    .line 423
    :cond_cd
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 425
    const/4 v0, 0x2

    if-ne v4, v0, :cond_d8

    .line 426
    add-int/lit8 v0, v1, -0x1

    :goto_d5
    move p0, v0

    .line 432
    goto/16 :goto_28

    :cond_d8
    move v0, v1

    .line 425
    goto :goto_d5

    .line 430
    :cond_da
    add-int/lit8 v0, v1, 0x1

    goto :goto_d5

    .line 433
    :cond_dd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 366
    :cond_e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested random string length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is less than 0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    nop

    :sswitch_data_100
    .sparse-switch
        0x0 -> :sswitch_ad
        0x12 -> :sswitch_ad
        0x13 -> :sswitch_ad
    .end sparse-switch
.end method

.method public static random(ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    .line 452
    if-nez p1, :cond_f

    .line 453
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(I[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static random(IZZ)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 277
    invoke-static {p0, v0, v0, p1, p2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(I[C)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    .line 471
    if-nez p1, :cond_f

    .line 472
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    .line 474
    :goto_e
    return-object v0

    :cond_f
    array-length v2, p1

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v3, v1

    move v4, v1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static randomAlphabetic(I)Ljava/lang/String;
    .registers 3

    .line 125
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphabetic(II)Ljava/lang/String;
    .registers 3

    .line 140
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 154
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(II)Ljava/lang/String;
    .registers 3

    .line 170
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAlphanumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(I)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    .line 95
    const/16 v0, 0x20

    const/16 v1, 0x7f

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(II)Ljava/lang/String;
    .registers 3

    .line 111
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAscii(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomGraph(I)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    .line 185
    const/16 v0, 0x21

    const/16 v1, 0x7e

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomGraph(II)Ljava/lang/String;
    .registers 3

    .line 200
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomGraph(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(I)Ljava/lang/String;
    .registers 3

    .line 214
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(II)Ljava/lang/String;
    .registers 3

    .line 229
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomPrint(I)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    .line 244
    const/16 v0, 0x20

    const/16 v1, 0x7e

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomPrint(II)Ljava/lang/String;
    .registers 3

    .line 259
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomPrint(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
