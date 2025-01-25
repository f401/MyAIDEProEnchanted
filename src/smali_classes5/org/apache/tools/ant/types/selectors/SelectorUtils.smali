.class public final Lorg/apache/tools/ant/types/selectors/SelectorUtils;
.super Ljava/lang/Object;
.source "SelectorUtils.java"


# static fields
.field public static final DEEP_TREE_MATCH:Ljava/lang/String; = "**"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final instance:Lorg/apache/tools/ant/types/selectors/SelectorUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->instance:Lorg/apache/tools/ant/types/selectors/SelectorUtils;

    .line 47
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static allStars([CII)Z
    .registers 5

    .line 465
    :goto_0
    if-gt p1, p2, :cond_d

    .line 466
    aget-char v0, p0, p1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_a

    .line 467
    const/4 v0, 0x0

    .line 470
    :goto_9
    return v0

    .line 465
    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 470
    :cond_d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static different(ZCC)Z
    .registers 7

    const/4 v1, 0x0

    .line 475
    const/4 v0, 0x1

    if-eqz p0, :cond_9

    .line 476
    if-eq p1, p2, :cond_7

    .line 475
    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    .line 476
    goto :goto_6

    .line 477
    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public static getInstance()Lorg/apache/tools/ant/types/selectors/SelectorUtils;
    .registers 1

    .line 60
    sget-object v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->instance:Lorg/apache/tools/ant/types/selectors/SelectorUtils;

    return-object v0
.end method

.method public static hasWildcards(Ljava/lang/String;)Z
    .registers 2

    .line 652
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isOutOfDate(Ljava/io/File;Ljava/io/File;I)Z
    .registers 7

    .line 581
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 582
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    int-to-long v2, p2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 581
    :goto_1b
    return v0

    .line 582
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;I)Z
    .registers 5

    .line 601
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result v0

    return v0
.end method

.method public static isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z
    .registers 12

    const-wide/16 v6, 0x0

    .line 619
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    .line 620
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    .line 621
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v4

    if-eqz v4, :cond_1f

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1d

    cmp-long v4, v2, v6

    if-eqz v4, :cond_1d

    sub-long/2addr v0, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 327
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 16

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 351
    const/4 v1, 0x0

    .line 352
    array-length v0, v8

    add-int/lit8 v2, v0, -0x1

    .line 353
    const/4 v0, 0x0

    .line 354
    array-length v3, v9

    add-int/lit8 v3, v3, -0x1

    .line 356
    const/4 v4, 0x0

    .line 357
    array-length v6, v8

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v6, :cond_1c

    aget-char v7, v8, v5

    .line 358
    const/16 v10, 0x2a

    if-ne v7, v10, :cond_22

    .line 359
    const/4 v4, 0x1

    .line 364
    :cond_1c
    if-nez v4, :cond_3d

    .line 366
    if-eq v2, v3, :cond_25

    .line 367
    const/4 v0, 0x0

    .line 461
    :goto_21
    return v0

    .line 357
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 369
    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-gt v0, v2, :cond_3b

    .line 370
    aget-char v1, v8, v0

    .line 371
    const/16 v3, 0x3f

    if-eq v1, v3, :cond_38

    aget-char v3, v9, v0

    invoke-static {p2, v1, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->different(ZCC)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 372
    const/4 v0, 0x0

    goto :goto_21

    .line 369
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 375
    :cond_3b
    const/4 v0, 0x1

    goto :goto_21

    .line 378
    :cond_3d
    if-nez v2, :cond_45

    .line 379
    const/4 v0, 0x1

    goto :goto_21

    .line 392
    :cond_41
    add-int/lit8 v1, v1, 0x1

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 384
    :cond_45
    aget-char v4, v8, v1

    .line 385
    const/16 v5, 0x2a

    if-eq v4, v5, :cond_4d

    if-le v0, v3, :cond_54

    .line 395
    :cond_4d
    if-le v0, v3, :cond_66

    .line 398
    invoke-static {v8, v1, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->allStars([CII)Z

    move-result v0

    goto :goto_21

    .line 388
    :cond_54
    const/16 v5, 0x3f

    if-eq v4, v5, :cond_41

    aget-char v5, v9, v0

    .line 389
    invoke-static {p2, v4, v5}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->different(ZCC)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 390
    const/4 v0, 0x0

    goto :goto_21

    .line 410
    :cond_62
    add-int/lit8 v2, v2, -0x1

    .line 411
    add-int/lit8 v3, v3, -0x1

    .line 403
    :cond_66
    aget-char v4, v8, v2

    .line 404
    const/16 v5, 0x2a

    if-eq v4, v5, :cond_6e

    if-le v0, v3, :cond_75

    .line 413
    :cond_6e
    if-le v0, v3, :cond_df

    .line 416
    invoke-static {v8, v1, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->allStars([CII)Z

    move-result v0

    goto :goto_21

    .line 407
    :cond_75
    const/16 v5, 0x3f

    if-eq v4, v5, :cond_62

    aget-char v5, v9, v3

    invoke-static {p2, v4, v5}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->different(ZCC)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 408
    const/4 v0, 0x0

    goto :goto_21

    .line 421
    :goto_83
    if-eq v7, v2, :cond_d7

    if-gt v6, v3, :cond_d7

    .line 422
    const/4 v1, -0x1

    .line 423
    add-int/lit8 v0, v7, 0x1

    :goto_8a
    if-gt v0, v2, :cond_dd

    .line 424
    aget-char v4, v8, v0

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_9b

    move v5, v0

    .line 429
    :goto_93
    add-int/lit8 v0, v7, 0x1

    if-ne v5, v0, :cond_9e

    .line 431
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    .line 432
    goto :goto_83

    .line 423
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 436
    :cond_9e
    sub-int v0, v5, v7

    add-int/lit8 v10, v0, -0x1

    .line 437
    const/4 v0, -0x1

    .line 440
    const/4 v1, 0x0

    move v4, v1

    :goto_a5
    sub-int v1, v3, v6

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v10

    if-gt v4, v1, :cond_cd

    .line 441
    const/4 v1, 0x0

    :goto_ad
    if-ge v1, v10, :cond_cb

    .line 442
    add-int v11, v7, v1

    add-int/lit8 v11, v11, 0x1

    aget-char v11, v8, v11

    .line 443
    const/16 v12, 0x3f

    if-eq v11, v12, :cond_c8

    add-int v12, v6, v4

    add-int/2addr v12, v1

    aget-char v12, v9, v12

    invoke-static {p2, v11, v12}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->different(ZCC)Z

    move-result v11

    if-eqz v11, :cond_c8

    .line 445
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_a5

    .line 441
    :cond_c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 448
    :cond_cb
    add-int v0, v6, v4

    .line 452
    :cond_cd
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d3

    .line 453
    const/4 v0, 0x0

    goto/16 :goto_21

    .line 456
    :cond_d3
    add-int/2addr v0, v10

    move v6, v0

    move v7, v5

    .line 457
    goto :goto_83

    .line 461
    :cond_d7
    invoke-static {v8, v7, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->allStars([CII)Z

    move-result v0

    goto/16 :goto_21

    :cond_dd
    move v5, v1

    goto :goto_93

    :cond_df
    move v6, v0

    move v7, v1

    goto :goto_83
.end method

.method public static matchPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 179
    invoke-static {p0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 203
    invoke-static {p0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static matchPath([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .registers 16

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 213
    .line 214
    array-length v2, p0

    add-int/lit8 v6, v2, -0x1

    .line 216
    array-length v2, p1

    add-int/lit8 v5, v2, -0x1

    move v4, v0

    move v2, v0

    .line 219
    :goto_b
    if-gt v2, v6, :cond_19

    if-gt v4, v5, :cond_19

    .line 220
    aget-object v7, p0, v2

    .line 221
    const-string v8, "**"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 230
    :cond_19
    if-le v4, v5, :cond_3a

    .line 232
    :goto_1b
    if-gt v2, v6, :cond_38

    .line 233
    aget-object v3, p0, v2

    const-string v4, "**"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 309
    :cond_27
    :goto_27
    return v0

    .line 224
    :cond_28
    aget-object v8, p1, v4

    invoke-static {v7, v8, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 227
    add-int/lit8 v2, v2, 0x1

    .line 228
    add-int/lit8 v4, v4, 0x1

    .line 229
    goto :goto_b

    .line 232
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_38
    move v0, v1

    .line 237
    goto :goto_27

    .line 239
    :cond_3a
    if-gt v2, v6, :cond_27

    move v8, v5

    move v9, v6

    .line 245
    :goto_3e
    if-gt v2, v9, :cond_4c

    if-gt v4, v8, :cond_4c

    .line 246
    aget-object v5, p0, v9

    .line 247
    const-string v6, "**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 256
    :cond_4c
    if-le v4, v8, :cond_d2

    .line 258
    :goto_4e
    if-gt v2, v9, :cond_6c

    .line 259
    aget-object v3, p0, v2

    const-string v4, "**"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 250
    :cond_5d
    aget-object v6, p1, v8

    invoke-static {v5, v6, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 253
    add-int/lit8 v6, v9, -0x1

    .line 254
    add-int/lit8 v5, v8, -0x1

    move v8, v5

    move v9, v6

    .line 255
    goto :goto_3e

    :cond_6c
    move v0, v1

    .line 263
    goto :goto_27

    .line 266
    :goto_6e
    if-eq v2, v9, :cond_bd

    if-gt v7, v8, :cond_bd

    .line 268
    add-int/lit8 v4, v2, 0x1

    :goto_74
    if-gt v4, v9, :cond_d0

    .line 269
    aget-object v5, p0, v4

    const-string v6, "**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    move v6, v4

    .line 274
    :goto_81
    add-int/lit8 v4, v2, 0x1

    if-ne v6, v4, :cond_8b

    .line 276
    add-int/lit8 v2, v2, 0x1

    .line 277
    goto :goto_6e

    .line 268
    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 281
    :cond_8b
    sub-int v4, v6, v2

    add-int/lit8 v10, v4, -0x1

    move v5, v0

    .line 285
    :goto_90
    sub-int v4, v8, v7

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v4, v10

    if-gt v5, v4, :cond_ce

    move v4, v0

    .line 286
    :goto_98
    if-ge v4, v10, :cond_b2

    .line 287
    add-int v11, v2, v4

    add-int/lit8 v11, v11, 0x1

    aget-object v11, p0, v11

    .line 288
    add-int v12, v7, v5

    add-int/2addr v12, v4

    aget-object v12, p1, v12

    .line 289
    invoke-static {v11, v12, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_af

    .line 290
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_90

    .line 286
    :cond_af
    add-int/lit8 v4, v4, 0x1

    goto :goto_98

    .line 293
    :cond_b2
    add-int v2, v7, v5

    .line 296
    :goto_b4
    if-eq v2, v3, :cond_27

    .line 300
    add-int v4, v2, v10

    move v7, v4

    move v2, v6

    .line 302
    goto :goto_6e

    .line 304
    :cond_bb
    add-int/lit8 v2, v2, 0x1

    :cond_bd
    if-gt v2, v9, :cond_cb

    .line 305
    const-string v3, "**"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    goto/16 :goto_27

    :cond_cb
    move v0, v1

    .line 309
    goto/16 :goto_27

    :cond_ce
    move v2, v3

    goto :goto_b4

    :cond_d0
    move v6, v3

    goto :goto_81

    :cond_d2
    move v7, v4

    goto :goto_6e
.end method

.method public static matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 80
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 107
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_10

    .line 109
    const/4 v0, 0x0

    .line 114
    :goto_f
    return v0

    .line 112
    :cond_10
    invoke-static {p0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_f
.end method

.method static matchPatternStart([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .registers 11

    const/4 v1, 0x0

    .line 138
    .line 139
    array-length v2, p0

    const/4 v0, 0x1

    add-int/lit8 v4, v2, -0x1

    .line 141
    array-length v2, p1

    add-int/lit8 v5, v2, -0x1

    move v2, v1

    move v3, v1

    .line 144
    :goto_a
    if-gt v2, v4, :cond_18

    if-gt v3, v5, :cond_18

    .line 145
    aget-object v6, p0, v2

    .line 146
    const-string v7, "**"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 159
    :cond_18
    if-gt v3, v5, :cond_1c

    if-gt v2, v4, :cond_2b

    :cond_1c
    :goto_1c
    move v1, v0

    :cond_1d
    return v1

    .line 149
    :cond_1e
    aget-object v7, p1, v3

    invoke-static {v6, v7, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    add-int/lit8 v3, v3, 0x1

    .line 154
    goto :goto_a

    :cond_2b
    move v0, v1

    .line 159
    goto :goto_1c
.end method

.method public static removeWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 637
    if-eqz p0, :cond_1a

    .line 638
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 639
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 640
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 643
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rtrimWildcardTokens(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 661
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->rtrimWildcardTokens()Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tokenizePath(Ljava/lang/String;)Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 503
    invoke-static {p0}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 504
    sget-object v1, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/util/FileUtils;->dissect(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 505
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 506
    const/4 v2, 0x1

    aget-object p0, v1, v2

    .line 508
    :cond_1a
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_1f
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 510
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1f

    .line 512
    :cond_2d
    return-object v0
.end method

.method static tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    const/4 v0, 0x0

    .line 521
    invoke-static {p0}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 522
    sget-object v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/FileUtils;->dissect(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 523
    aget-object v0, v1, v3

    .line 524
    aget-object p0, v1, v4

    .line 526
    :cond_13
    sget-char v6, Ljava/io/File;->separatorChar:C

    .line 528
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v3

    move v5, v3

    move v1, v3

    .line 530
    :goto_1c
    if-ge v5, v7, :cond_2d

    .line 531
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_2a

    .line 532
    if-eq v5, v2, :cond_28

    .line 533
    add-int/lit8 v1, v1, 0x1

    .line 535
    :cond_28
    add-int/lit8 v2, v5, 0x1

    .line 530
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 538
    :cond_2d
    if-eq v7, v2, :cond_64

    .line 539
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 541
    :goto_32
    if-nez v0, :cond_62

    move v1, v3

    :goto_35
    add-int/2addr v1, v2

    new-array v5, v1, [Ljava/lang/String;

    .line 543
    if-eqz v0, :cond_57

    .line 544
    aput-object v0, v5, v3

    :goto_3c
    move v1, v3

    move v2, v3

    move v0, v4

    .line 550
    :goto_3f
    if-ge v2, v7, :cond_59

    .line 551
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_53

    .line 552
    if-eq v2, v1, :cond_51

    .line 553
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 554
    aput-object v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    .line 556
    :cond_51
    add-int/lit8 v1, v2, 0x1

    .line 550
    :cond_53
    add-int/lit8 v3, v2, 0x1

    move v2, v3

    goto :goto_3f

    :cond_57
    move v4, v3

    .line 547
    goto :goto_3c

    .line 559
    :cond_59
    if-eq v7, v1, :cond_61

    .line 560
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 561
    aput-object v1, v5, v0

    .line 563
    :cond_61
    return-object v5

    :cond_62
    move v1, v4

    goto :goto_35

    :cond_64
    move v2, v1

    goto :goto_32
.end method
