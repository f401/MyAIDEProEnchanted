.class public final Lcom/google/android/gms/internal/ads/pg;
.super Ljava/lang/Object;


# direct methods
.method private static j6(Ljava/lang/String;)J
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/pg;->j6()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Unable to parse dateStr: %s, falling back to 0"

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/Ow;
    .registers 22

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/nD;->FH:Ljava/util/Map;

    const-string v0, "Date"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pg;->j6(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_19

    :cond_17
    const-wide/16 v7, 0x0

    :goto_19
    const-string v0, "Cache-Control"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v0, :cond_8b

    const-string v10, ","

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_2f
    array-length v0, v10

    const/16 v16, 0x1

    if-ge v9, v0, :cond_89

    aget-object v0, v10, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "no-cache"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    const-string v5, "no-store"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    goto :goto_87

    :cond_4b
    const-string v5, "max-age="

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/16 v5, 0x8

    :try_start_55
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_5e

    goto :goto_84

    :catch_5e
    move-exception v0

    goto :goto_84

    :cond_60
    const-string v5, "stale-while-revalidate="

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    const/16 v5, 0x17

    :try_start_6a
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_72} :catch_5e

    goto :goto_84

    :cond_73
    const-string v5, "must-revalidate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    const-string v5, "proxy-revalidate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    :cond_83
    const/4 v11, 0x1

    :cond_84
    :goto_84
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :cond_87
    :goto_87
    const/4 v0, 0x0

    return-object v0

    :cond_89
    const/4 v9, 0x1

    goto :goto_90

    :cond_8b
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_90
    const-string v0, "Expires"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pg;->j6(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_a1

    :cond_9f
    const-wide/16 v5, 0x0

    :goto_a1
    const-string v0, "Last-Modified"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pg;->j6(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v19, v17

    goto :goto_b4

    :cond_b2
    const-wide/16 v19, 0x0

    :goto_b4
    const-string v0, "ETag"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v9, :cond_ce

    const-wide/16 v5, 0x3e8

    mul-long v12, v12, v5

    add-long/2addr v2, v12

    if-eqz v11, :cond_c7

    move-wide v5, v2

    goto :goto_dc

    :cond_c7
    invoke-static {v14, v15}, Ljava/lang/Long;->signum(J)I

    mul-long v14, v14, v5

    add-long/2addr v14, v2

    goto :goto_de

    :cond_ce
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_db

    cmp-long v11, v5, v7

    if-ltz v11, :cond_db

    sub-long/2addr v5, v7

    add-long/2addr v2, v5

    goto :goto_dd

    :cond_db
    move-wide v5, v9

    :goto_dc
    move-wide v2, v5

    :goto_dd
    move-wide v14, v2

    :goto_de
    new-instance v5, Lcom/google/android/gms/internal/ads/Ow;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/Ow;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/nD;->DW:[B

    iput-object v6, v5, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/Ow;->DW:Ljava/lang/String;

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/Ow;->Zo:J

    iput-wide v14, v5, Lcom/google/android/gms/internal/ads/Ow;->v5:J

    iput-wide v7, v5, Lcom/google/android/gms/internal/ads/Ow;->FH:J

    move-wide/from16 v2, v19

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/Ow;->Hw:J

    iput-object v4, v5, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/nD;->Hw:Ljava/util/List;

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    return-object v5
.end method

.method static j6(J)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/pg;->j6()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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
