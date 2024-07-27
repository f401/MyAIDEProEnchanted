.class public final Lcom/google/android/gms/internal/ads/pg;
.super Ljava/lang/Object;


# direct methods
.method private static j6(Ljava/lang/String;)J
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/pg;->j6()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to parse dateStr: %s, falling back to 0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/Ow;
    .registers 20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/nD;->FH:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v2, "Date"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/pg;->j6(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    :goto_0
    const-string v2, "Cache-Control"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_8

    const-string v3, ","

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    :goto_1
    array-length v11, v10

    if-ge v8, v11, :cond_7

    aget-object v11, v10, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "no-cache"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "no-store"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    return-object v2

    :cond_1
    const-wide/16 v2, 0x0

    move-wide v4, v2

    goto :goto_0

    :cond_2
    const-string v12, "max-age="

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x8

    :try_start_0
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    const-string v12, "stale-while-revalidate="

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x17

    :try_start_1
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    goto :goto_3

    :cond_5
    const-string v12, "must-revalidate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "proxy-revalidate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_6
    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x1

    move-wide v10, v2

    :goto_4
    const-string v2, "Expires"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/pg;->j6(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v12, v2

    :goto_5
    const-string v2, "Last-Modified"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/pg;->j6(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v14, v2

    :goto_6
    const-string v2, "ETag"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v8, :cond_c

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long v10, v10, v16

    if-eqz v9, :cond_b

    move-wide v6, v10

    :goto_7
    move-wide v8, v6

    move-wide v10, v6

    :goto_8
    new-instance v3, Lcom/google/android/gms/internal/ads/Ow;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/Ow;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/nD;->DW:[B

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/Ow;->DW:Ljava/lang/String;

    iput-wide v10, v3, Lcom/google/android/gms/internal/ads/Ow;->Zo:J

    iput-wide v8, v3, Lcom/google/android/gms/internal/ads/Ow;->v5:J

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/Ow;->FH:J

    iput-wide v14, v3, Lcom/google/android/gms/internal/ads/Ow;->Hw:J

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/nD;->Hw:Ljava/util/List;

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    move-object v2, v3

    goto/16 :goto_2

    :cond_8
    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v10, v2

    goto :goto_4

    :cond_9
    const-wide/16 v2, 0x0

    move-wide v12, v2

    goto :goto_5

    :cond_a
    const-wide/16 v2, 0x0

    move-wide v14, v2

    goto :goto_6

    :cond_b
    invoke-static {v6, v7}, Ljava/lang/Long;->signum(J)I

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v10

    move-wide v8, v6

    goto :goto_8

    :cond_c
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_d

    cmp-long v3, v12, v4

    if-ltz v3, :cond_d

    sub-long v6, v12, v4

    add-long v6, v6, v16

    move-wide v8, v6

    move-wide v10, v6

    goto :goto_8

    :cond_d
    const-wide/16 v6, 0x0

    goto :goto_7

    :catch_0
    move-exception v11

    goto/16 :goto_3
.end method

.method static j6(J)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/pg;->j6()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j6()Ljava/text/SimpleDateFormat;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method
