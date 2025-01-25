.class public Lorg/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/String; = "H"

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

.field static final M:Ljava/lang/String; = "M"

.field static final S:Ljava/lang/String; = "S"

.field static final d:Ljava/lang/String; = "d"

.field static final m:Ljava/lang/String; = "m"

.field static final s:Ljava/lang/String; = "s"

.field static final y:Ljava/lang/String; = "y"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .registers 27

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    const/4 v3, 0x0

    .line 429
    array-length v6, p0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v6, :cond_c7

    aget-object v7, p0, v4

    .line 430
    invoke-virtual {v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 431
    invoke-virtual {v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v7

    .line 432
    instance-of v9, v8, Ljava/lang/StringBuilder;

    if-eqz v9, :cond_22

    .line 433
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_1f
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 434
    :cond_22
    const-string v9, "y"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 435
    move/from16 v0, p15

    invoke-static {p1, p2, v0, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const/4 v3, 0x0

    goto :goto_1f

    .line 437
    :cond_35
    const-string v9, "M"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 438
    move/from16 v0, p15

    invoke-static {p3, p4, v0, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const/4 v3, 0x0

    goto :goto_1f

    .line 440
    :cond_48
    const-string v9, "d"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 441
    move-wide/from16 v0, p5

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const/4 v3, 0x0

    goto :goto_1f

    .line 443
    :cond_5d
    const-string v9, "H"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 444
    move-wide/from16 v0, p7

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const/4 v3, 0x0

    goto :goto_1f

    .line 446
    :cond_72
    const-string v9, "m"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 447
    move-wide/from16 v0, p9

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/4 v3, 0x0

    goto :goto_1f

    .line 449
    :cond_87
    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 450
    move-wide/from16 v0, p11

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const/4 v3, 0x1

    goto :goto_1f

    .line 452
    :cond_9c
    const-string v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 453
    if-eqz v3, :cond_bb

    .line 455
    const/4 v3, 0x3

    if-eqz p15, :cond_ae

    const/4 v3, 0x3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 456
    :cond_ae
    const/4 v7, 0x1

    move-wide/from16 v0, p13

    invoke-static {v0, v1, v7, v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :goto_b8
    const/4 v3, 0x0

    goto/16 :goto_1f

    .line 458
    :cond_bb
    move-wide/from16 v0, p13

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b8

    .line 463
    :cond_c7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 113
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .registers 22

    .line 130
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const-string v6, "durationMillis must not be negative"

    move-wide/from16 v4, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/Validate;->inclusiveBetween(JJJLjava/lang/String;)V

    .line 132
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v1

    .line 134
    const-wide/16 v6, 0x0

    .line 135
    const-wide/16 v8, 0x0

    .line 136
    const-wide/16 v10, 0x0

    .line 137
    const-string v0, "d"

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 141
    const-wide/32 v2, 0x5265c00

    div-long v6, p0, v2

    .line 142
    const-wide/32 v2, 0x5265c00

    mul-long/2addr v2, v6

    sub-long p0, p0, v2

    .line 144
    :cond_2b
    const-string v0, "H"

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 145
    const-wide/32 v2, 0x36ee80

    div-long v8, p0, v2

    .line 146
    const-wide/32 v2, 0x36ee80

    mul-long/2addr v2, v8

    sub-long p0, p0, v2

    .line 148
    :cond_3e
    const-string v0, "m"

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 149
    const-wide/32 v2, 0xea60

    div-long v10, p0, v2

    .line 150
    const-wide/32 v2, 0xea60

    mul-long/2addr v2, v10

    sub-long p0, p0, v2

    .line 152
    :cond_51
    const-string v0, "s"

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 153
    const-wide/16 v2, 0x3e8

    div-long v12, p0, v2

    .line 154
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v12

    sub-long v14, p0, v2

    .line 157
    :goto_62
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move/from16 v16, p3

    invoke-static/range {v1 .. v16}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_6d
    const-wide/16 v12, 0x0

    move-wide/from16 v14, p0

    goto :goto_62
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .registers 4

    .line 82
    const-string v0, "HH:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .registers 4

    .line 98
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .registers 8

    .line 180
    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    if-eqz p2, :cond_62

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v0, " 0 days"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_da

    .line 186
    const-string v1, " 0 hours"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_57

    .line 189
    const-string v0, " 0 minutes"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_57

    .line 193
    const-string v1, " 0 seconds"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_57
    :goto_57
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    .line 199
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_62
    if-eqz p3, :cond_a2

    .line 203
    const-string v1, " 0 seconds"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a2

    .line 206
    const-string v0, " 0 minutes"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_d8

    .line 209
    const-string v1, " 0 hours"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a2

    .line 211
    const-string v0, " 0 days"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_a2
    :goto_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, " 1 seconds"

    const-string v2, " 1 second"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, " 1 minutes"

    const-string v2, " 1 minute"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v1, " 1 hours"

    const-string v2, " 1 hour"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, " 1 days"

    const-string v2, " 1 day"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d8
    move-object v0, v1

    goto :goto_a2

    :cond_da
    move-object v0, v1

    goto/16 :goto_57
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 251
    const/4 v5, 0x1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 27

    .line 280
    cmp-long v2, p0, p2

    if-gtz v2, :cond_8f

    const/4 v2, 0x1

    :goto_5
    const-string v3, "startMillis must not be greater than endMillis"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v3

    .line 293
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 294
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 295
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 296
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 299
    const/16 v2, 0xe

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xe

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v13, v2, v4

    .line 300
    const/16 v2, 0xd

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xd

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v11, v2, v4

    .line 301
    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v9, v2, v4

    .line 302
    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xb

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v7, v2, v4

    .line 303
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v4, v2, v4

    .line 304
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v5, v2, v5

    .line 305
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v2, v10

    .line 308
    :goto_88
    if-gez v13, :cond_92

    .line 309
    add-int/lit16 v13, v13, 0x3e8

    .line 310
    add-int/lit8 v11, v11, -0x1

    goto :goto_88

    .line 280
    :cond_8f
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 312
    :cond_92
    :goto_92
    if-gez v11, :cond_99

    .line 313
    add-int/lit8 v11, v11, 0x3c

    .line 314
    add-int/lit8 v9, v9, -0x1

    goto :goto_92

    .line 316
    :cond_99
    :goto_99
    if-gez v9, :cond_a0

    .line 317
    add-int/lit8 v9, v9, 0x3c

    .line 318
    add-int/lit8 v7, v7, -0x1

    goto :goto_99

    .line 320
    :cond_a0
    :goto_a0
    if-gez v7, :cond_a7

    .line 321
    add-int/lit8 v7, v7, 0x18

    .line 322
    add-int/lit8 v4, v4, -0x1

    goto :goto_a0

    .line 325
    :cond_a7
    const-string v10, "M"

    invoke-static {v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_124

    .line 326
    :goto_af
    if-gez v4, :cond_bf

    .line 327
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    add-int/2addr v4, v8

    .line 328
    add-int/lit8 v5, v5, -0x1

    .line 329
    const/4 v8, 0x2

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_af

    .line 332
    :cond_bf
    :goto_bf
    if-gez v5, :cond_c6

    .line 333
    add-int/lit8 v5, v5, 0xc

    .line 334
    add-int/lit8 v2, v2, -0x1

    goto :goto_bf

    .line 337
    :cond_c6
    const-string v6, "y"

    invoke-static {v3, v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_122

    if-eqz v2, :cond_122

    .line 338
    :goto_d0
    if-eqz v2, :cond_d7

    .line 339
    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v5, v2

    .line 340
    const/4 v2, 0x0

    goto :goto_d0

    :cond_d7
    move v6, v5

    .line 390
    :goto_d8
    const-string v5, "d"

    invoke-static {v3, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a5

    .line 391
    mul-int/lit8 v4, v4, 0x18

    add-int v5, v7, v4

    .line 392
    const/4 v4, 0x0

    move v8, v4

    .line 394
    :goto_e6
    const-string v4, "H"

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_198

    .line 395
    mul-int/lit8 v4, v5, 0x3c

    add-int/2addr v4, v9

    .line 396
    const/4 v5, 0x0

    move v10, v5

    .line 398
    :goto_f3
    const-string v5, "m"

    invoke-static {v3, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a1

    .line 399
    mul-int/lit8 v4, v4, 0x3c

    add-int v5, v11, v4

    .line 400
    const/4 v4, 0x0

    move v12, v4

    .line 402
    :goto_101
    const-string v4, "s"

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19c

    .line 403
    mul-int/lit16 v4, v5, 0x3e8

    add-int/2addr v4, v13

    const/4 v5, 0x0

    move/from16 v16, v4

    move v14, v5

    .line 407
    :goto_110
    int-to-long v4, v2

    int-to-long v6, v6

    int-to-long v8, v8

    int-to-long v10, v10

    int-to-long v12, v12

    int-to-long v14, v14

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, p5

    invoke-static/range {v3 .. v18}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_122
    move v6, v5

    .line 390
    goto :goto_d8

    .line 346
    :cond_124
    const-string v10, "y"

    invoke-static {v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16c

    .line 347
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 348
    if-gez v5, :cond_135

    .line 350
    add-int/lit8 v2, v2, -0x1

    .line 353
    :cond_135
    :goto_135
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v5, v2, :cond_16b

    .line 354
    const/4 v5, 0x6

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    const/4 v10, 0x6

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v5, v10

    add-int/2addr v4, v5

    .line 357
    instance-of v5, v6, Ljava/util/GregorianCalendar;

    if-eqz v5, :cond_15f

    .line 358
    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_15f

    .line 359
    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v10, 0x1d

    if-ne v5, v10, :cond_15f

    .line 360
    add-int/lit8 v4, v4, 0x1

    .line 363
    :cond_15f
    const/4 v5, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v5, v10}, Ljava/util/Calendar;->add(II)V

    .line 365
    const/4 v5, 0x6

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_135

    .line 368
    :cond_16b
    const/4 v2, 0x0

    .line 371
    :cond_16c
    :goto_16c
    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v5, v10, :cond_184

    .line 372
    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 373
    const/4 v5, 0x2

    const/4 v10, 0x1

    invoke-virtual {v6, v5, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_16c

    .line 376
    :cond_184
    const/4 v5, 0x0

    .line 378
    :goto_185
    if-gez v4, :cond_195

    .line 379
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    add-int/2addr v4, v8

    .line 380
    add-int/lit8 v5, v5, -0x1

    .line 381
    const/4 v8, 0x2

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_185

    :cond_195
    move v6, v5

    .line 378
    goto/16 :goto_d8

    :cond_198
    move v10, v5

    move v4, v9

    .line 394
    goto/16 :goto_f3

    :cond_19c
    move/from16 v16, v13

    move v14, v5

    .line 402
    goto/16 :goto_110

    :cond_1a1
    move v12, v4

    move v5, v11

    goto/16 :goto_101

    :cond_1a5
    move v8, v4

    move v5, v7

    goto/16 :goto_e6
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .registers 12

    .line 237
    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .registers 10

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 495
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    move-object v1, v2

    move v4, v5

    move v3, v5

    .line 502
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_82

    .line 503
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 504
    if-eqz v3, :cond_25

    const/16 v8, 0x27

    if-eq v6, v8, :cond_25

    .line 505
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    :cond_22
    :goto_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 509
    :cond_25
    sparse-switch v6, :sswitch_data_a6

    .line 543
    if-nez v1, :cond_37

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    new-instance v8, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v8, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_37
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v6, v2

    .line 550
    :goto_3b
    if-eqz v6, :cond_22

    .line 551
    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 552
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    :goto_4c
    move-object v1, v2

    .line 556
    goto :goto_22

    .line 522
    :sswitch_4e
    const-string v6, "y"

    goto :goto_3b

    .line 537
    :sswitch_51
    const-string v6, "s"

    goto :goto_3b

    .line 534
    :sswitch_54
    const-string v6, "m"

    goto :goto_3b

    .line 528
    :sswitch_57
    const-string v6, "d"

    goto :goto_3b

    .line 540
    :sswitch_5a
    const-string v6, "S"

    goto :goto_3b

    .line 525
    :sswitch_5d
    const-string v6, "M"

    goto :goto_3b

    .line 531
    :sswitch_60
    const-string v6, "H"

    goto :goto_3b

    .line 512
    :sswitch_63
    if-eqz v3, :cond_69

    move-object v1, v2

    move-object v6, v2

    move v3, v5

    .line 514
    goto :goto_3b

    .line 516
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    new-instance v3, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v3, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    const/4 v3, 0x1

    move-object v6, v2

    .line 520
    goto :goto_3b

    .line 554
    :cond_79
    new-instance v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 555
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 561
    :cond_82
    if-nez v3, :cond_8f

    .line 564
    invoke-static {}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->access$000()[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object v0

    .line 562
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched quote in format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :sswitch_data_a6
    .sparse-switch
        0x27 -> :sswitch_63
        0x48 -> :sswitch_60
        0x4d -> :sswitch_5d
        0x53 -> :sswitch_5a
        0x64 -> :sswitch_57
        0x6d -> :sswitch_54
        0x73 -> :sswitch_51
        0x79 -> :sswitch_4e
    .end sparse-switch
.end method

.method private static paddedValue(JZI)Ljava/lang/String;
    .registers 6

    .line 476
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 477
    if-eqz p2, :cond_c

    const/16 v1, 0x30

    invoke-static {v0, p3, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0
.end method
