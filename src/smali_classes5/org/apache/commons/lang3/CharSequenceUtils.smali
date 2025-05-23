.class public Lorg/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# static fields
.field private static final NOT_FOUND:I = -0x1

.field static final TO_STRING_LIMIT:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static checkLaterThan1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z
    .registers 9

    const/4 v0, 0x1

    .line 294
    add-int/lit8 v2, p2, -0x1

    move v1, v0

    :goto_4
    if-gt v1, v2, :cond_1f

    .line 295
    add-int v3, p3, v1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1e

    .line 297
    add-int v3, p3, v2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_20

    .line 299
    :cond_1e
    const/4 v0, 0x0

    .line 302
    :cond_1f
    return v0

    .line 294
    :cond_20
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_4
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .registers 11

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 99
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 100
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 125
    :cond_c
    :goto_c
    return v0

    .line 102
    :cond_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 103
    if-gez p2, :cond_4a

    move v0, v2

    .line 106
    :goto_14
    const/high16 v4, 0x10000

    if-ge p1, v4, :cond_25

    .line 107
    :goto_18
    if-ge v0, v3, :cond_23

    .line 108
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_c

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_23
    move v0, v1

    .line 112
    goto :goto_c

    .line 115
    :cond_25
    const v4, 0x10ffff

    if-gt p1, v4, :cond_48

    .line 116
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    .line 117
    :goto_2e
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_48

    .line 118
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 119
    add-int/lit8 v6, v0, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 120
    aget-char v7, v4, v2

    if-ne v5, v7, :cond_45

    const/4 v5, 0x1

    aget-char v5, v4, v5

    if-eq v6, v5, :cond_c

    .line 117
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_48
    move v0, v1

    .line 125
    goto :goto_c

    :cond_4a
    move v0, p2

    goto :goto_14
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 5

    .line 137
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 138
    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 144
    :goto_e
    return v0

    .line 139
    :cond_f
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1e

    .line 140
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_e

    .line 141
    :cond_1e
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2d

    .line 142
    check-cast p0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_e

    .line 144
    :cond_2d
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_e
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 9

    const/4 v0, -0x1

    .line 183
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 184
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 217
    :cond_b
    :goto_b
    return v0

    .line 186
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 187
    if-ltz p2, :cond_b

    .line 190
    if-lt p2, v2, :cond_4f

    .line 191
    add-int/lit8 v1, v2, -0x1

    .line 193
    :goto_16
    const/high16 v3, 0x10000

    if-ge p1, v3, :cond_27

    .line 194
    :goto_1a
    if-ltz v1, :cond_b

    .line 195
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_24

    move v0, v1

    .line 196
    goto :goto_b

    .line 194
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 203
    :cond_27
    const v3, 0x10ffff

    if-gt p1, v3, :cond_b

    .line 204
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    .line 206
    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_b

    .line 209
    :goto_34
    if-ltz v1, :cond_b

    .line 210
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 211
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 212
    const/4 v5, 0x0

    aget-char v5, v3, v5

    if-ne v5, v2, :cond_4c

    const/4 v2, 0x1

    aget-char v2, v3, v2

    if-ne v2, v4, :cond_4c

    move v0, v1

    .line 213
    goto :goto_b

    .line 209
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_4f
    move v1, p2

    goto :goto_16
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 8

    const/4 v1, -0x1

    .line 231
    if-eqz p1, :cond_5

    if-nez p0, :cond_7

    :cond_5
    move v0, v1

    .line 288
    :cond_6
    :goto_6
    return v0

    .line 234
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 235
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 236
    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    .line 237
    :cond_18
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_25

    .line 238
    check-cast p0, Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    .line 239
    :cond_25
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_32

    .line 240
    check-cast p0, Ljava/lang/StringBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    .line 244
    :cond_32
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 245
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 247
    if-le p2, v2, :cond_9d

    move v0, v2

    .line 251
    :goto_3d
    if-ltz v0, :cond_43

    if-ltz v3, :cond_43

    if-le v3, v2, :cond_45

    :cond_43
    move v0, v1

    .line 252
    goto :goto_6

    .line 255
    :cond_45
    if-eqz v3, :cond_6

    .line 259
    const/16 v4, 0x10

    if-gt v3, v4, :cond_78

    .line 260
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_5a

    .line 261
    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    .line 262
    :cond_5a
    instance-of v4, p0, Ljava/lang/StringBuilder;

    if-eqz v4, :cond_69

    .line 263
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    .line 264
    :cond_69
    instance-of v4, p0, Ljava/lang/StringBuffer;

    if-eqz v4, :cond_78

    .line 265
    check-cast p0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    .line 269
    :cond_78
    add-int v4, v0, v3

    if-le v4, v2, :cond_7e

    .line 270
    sub-int v0, v2, v3

    .line 273
    :cond_7e
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 275
    :cond_83
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_90

    .line 278
    add-int/lit8 v0, v0, -0x1

    .line 279
    if-gez v0, :cond_83

    move v0, v1

    .line 280
    goto/16 :goto_6

    .line 283
    :cond_90
    invoke-static {p0, p1, v3, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->checkLaterThan1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 286
    add-int/lit8 v0, v0, -0x1

    .line 287
    if-gez v0, :cond_83

    move v0, v1

    .line 288
    goto/16 :goto_6

    :cond_9d
    move v0, p2

    goto :goto_3d
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .registers 12

    const/4 v0, 0x0

    .line 340
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_18

    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_18

    move-object v0, p0

    .line 341
    check-cast v0, Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 381
    :cond_17
    :goto_17
    return v0

    .line 348
    :cond_18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 349
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 352
    if-ltz p2, :cond_17

    if-ltz p4, :cond_17

    if-ltz p5, :cond_17

    .line 357
    sub-int/2addr v1, p2

    if-lt v1, p5, :cond_17

    sub-int v1, v2, p4

    if-lt v1, p5, :cond_17

    .line 361
    :goto_2d
    if-lez p5, :cond_57

    .line 362
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 363
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 365
    if-ne v1, v2, :cond_40

    .line 379
    :cond_39
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p5, p5, -0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_2d

    .line 369
    :cond_40
    if-eqz p1, :cond_17

    .line 374
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 375
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 376
    if-eq v1, v2, :cond_39

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_39

    goto :goto_17

    .line 381
    :cond_57
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3

    .line 56
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3
.end method

.method public static toCharArray(Ljava/lang/CharSequence;)[C
    .registers 5

    .line 313
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v2

    .line 314
    if-nez v2, :cond_9

    .line 315
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 324
    :cond_8
    :goto_8
    return-object v0

    .line 317
    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 318
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_8

    .line 320
    :cond_14
    new-array v0, v2, [C

    .line 321
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v2, :cond_8

    .line 322
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method
