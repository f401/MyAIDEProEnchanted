.class public Lorg/apache/commons/lang3/text/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 373
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 406
    if-nez p1, :cond_e

    const/4 v0, -0x1

    .line 407
    :goto_5
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez v0, :cond_10

    .line 421
    :cond_d
    :goto_d
    return-object p0

    .line 406
    :cond_e
    array-length v0, p1

    goto :goto_5

    .line 410
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v3

    .line 412
    :goto_16
    array-length v5, v4

    if-ge v2, v5, :cond_2f

    .line 413
    aget-char v5, v4, v2

    .line 414
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_25

    move v0, v1

    .line 412
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 416
    :cond_25
    if-eqz v0, :cond_22

    .line 417
    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    aput-char v0, v4, v2

    move v0, v3

    .line 418
    goto :goto_22

    .line 421
    :cond_2f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_d
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 445
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 4

    .line 475
    if-nez p1, :cond_c

    const/4 v0, -0x1

    .line 476
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v0, :cond_e

    .line 480
    :cond_b
    :goto_b
    return-object p0

    .line 475
    :cond_c
    array-length v0, p1

    goto :goto_3

    .line 479
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method

.method public static varargs containsAllWords(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x0

    .line 702
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 714
    :cond_d
    :goto_d
    return v0

    .line 705
    :cond_e
    array-length v2, p1

    move v1, v0

    :goto_10
    if-ge v1, v2, :cond_41

    aget-object v3, p1, v1

    .line 706
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\\b.*"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 710
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 714
    :cond_41
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 622
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 652
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 674
    :goto_8
    return-object p0

    .line 655
    :cond_9
    if-eqz p1, :cond_11

    array-length v0, p1

    if-nez v0, :cond_11

    .line 656
    const-string p0, ""

    goto :goto_8

    .line 658
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 659
    div-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [C

    move v1, v2

    move v0, v3

    move v4, v3

    .line 662
    :goto_1e
    if-ge v4, v5, :cond_36

    .line 663
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 665
    invoke-static {v7, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v8

    if-eqz v8, :cond_2e

    move v1, v2

    .line 662
    :cond_2b
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 667
    :cond_2e
    if-eqz v1, :cond_2b

    .line 668
    aput-char v7, v6, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_2b

    .line 674
    :cond_36
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v6, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_8
.end method

.method private static isDelimiter(C[C)Z
    .registers 6

    const/4 v0, 0x0

    .line 726
    if-nez p1, :cond_8

    .line 727
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    .line 734
    :cond_7
    :goto_7
    return v0

    .line 729
    :cond_8
    array-length v2, p1

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_7

    aget-char v3, p1, v1

    .line 730
    if-ne p0, v3, :cond_12

    .line 731
    const/4 v0, 0x1

    goto :goto_7

    .line 729
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    .line 573
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 596
    :goto_7
    return-object p0

    .line 576
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 578
    const/4 v0, 0x1

    move v1, v2

    .line 580
    :goto_e
    array-length v4, v3

    if-ge v1, v4, :cond_45

    .line 581
    aget-char v4, v3, v1

    .line 582
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-static {v4}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 583
    :cond_1f
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aput-char v0, v3, v1

    move v0, v2

    .line 580
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 585
    :cond_29
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 586
    if-eqz v0, :cond_39

    .line 587
    invoke-static {v4}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    aput-char v0, v3, v1

    move v0, v2

    .line 588
    goto :goto_26

    .line 590
    :cond_39
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v3, v1

    goto :goto_26

    .line 593
    :cond_40
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    goto :goto_26

    .line 596
    :cond_45
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_7
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 502
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 531
    if-nez p1, :cond_e

    const/4 v0, -0x1

    .line 532
    :goto_5
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez v0, :cond_10

    .line 546
    :cond_d
    :goto_d
    return-object p0

    .line 531
    :cond_e
    array-length v0, p1

    goto :goto_5

    .line 535
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v3

    .line 537
    :goto_16
    array-length v5, v4

    if-ge v2, v5, :cond_2f

    .line 538
    aget-char v5, v4, v2

    .line 539
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_25

    move v0, v1

    .line 537
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 541
    :cond_25
    if-eqz v0, :cond_22

    .line 542
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aput-char v0, v4, v2

    move v0, v3

    .line 543
    goto :goto_22

    .line 546
    :cond_2f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_d
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 180
    const-string v0, " "

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 17

    .line 274
    if-nez p0, :cond_4

    .line 275
    const/4 v0, 0x0

    .line 345
    :goto_3
    return-object v0

    .line 277
    :cond_4
    if-nez p2, :cond_a

    .line 278
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    .line 280
    :cond_a
    const/4 v0, 0x1

    if-ge p1, v0, :cond_e

    .line 281
    const/4 p1, 0x1

    .line 283
    :cond_e
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 284
    const-string p4, " "

    .line 286
    :cond_16
    invoke-static/range {p4 .. p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 288
    const/4 v0, 0x0

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x20

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v0

    .line 291
    :goto_27
    if-ge v2, v1, :cond_60

    .line 292
    const/4 v0, -0x1

    .line 293
    add-int v5, v2, p1

    int-to-long v6, v5

    .line 294
    const-wide/32 v8, 0x7fffffff

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 295
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 296
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    if-nez v0, :cond_57

    .line 297
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 298
    goto :goto_27

    .line 300
    :cond_57
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int/2addr v0, v2

    .line 304
    :cond_5c
    sub-int v6, v1, v2

    if-gt v6, p1, :cond_6c

    .line 343
    :cond_60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 308
    :cond_6c
    :goto_6c
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 309
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_6c

    .line 312
    :cond_78
    if-lt v0, v2, :cond_84

    .line 314
    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v0, v0, 0x1

    :goto_82
    move v2, v0

    .line 340
    goto :goto_27

    .line 319
    :cond_84
    if-eqz p3, :cond_91

    .line 321
    add-int v0, p1, v2

    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    add-int v0, v2, p1

    goto :goto_82

    .line 326
    :cond_91
    add-int v5, v2, p1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 327
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 328
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 331
    :cond_a7
    if-ltz v0, :cond_b2

    .line 332
    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 336
    :cond_b2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v0, v1

    .line 337
    goto :goto_82
.end method
