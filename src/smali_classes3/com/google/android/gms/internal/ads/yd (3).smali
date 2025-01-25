.class public Lcom/google/android/gms/internal/ads/yd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/MB;


# static fields
.field private static final j6:Z


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/oh;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final FH:Lcom/google/android/gms/internal/ads/Yc;

.field private final Hw:Lcom/google/android/gms/internal/ads/Zd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/Db;->DW:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/yd;->j6:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Yc;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/Zd;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Zd;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/yd;-><init>(Lcom/google/android/gms/internal/ads/Yc;Lcom/google/android/gms/internal/ads/Zd;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/Yc;Lcom/google/android/gms/internal/ads/Zd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yd;->FH:Lcom/google/android/gms/internal/ads/Yc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yd;->DW:Lcom/google/android/gms/internal/ads/oh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Zd;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Zd;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/yd;-><init>(Lcom/google/android/gms/internal/ads/oh;Lcom/google/android/gms/internal/ads/Zd;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/oh;Lcom/google/android/gms/internal/ads/Zd;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yd;->DW:Lcom/google/android/gms/internal/ads/oh;

    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/oh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->FH:Lcom/google/android/gms/internal/ads/Yc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    return-void
.end method

.method private static j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/db;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/db;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->a8()Lcom/google/android/gms/internal/ads/C;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->U2()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_b
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/C;->j6(Lcom/google/android/gms/internal/ads/db;)V
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/db; {:try_start_b .. :try_end_e} :catch_22

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    throw p2
.end method

.method private final j6(Ljava/io/InputStream;I)[B
    .registers 8

    new-instance v0, Lcom/google/android/gms/internal/ads/hj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/hj;-><init>(Lcom/google/android/gms/internal/ads/Zd;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_39

    :try_start_d
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/Zd;->j6(I)[B

    move-result-object v2

    :goto_15
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/hj;->write([BII)V

    goto :goto_15

    :cond_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_3f

    if-eqz p1, :cond_30

    :try_start_26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p1

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/Db;->FH(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Zd;->j6([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hj;->close()V

    return-object v3

    :cond_39
    :try_start_39
    new-instance v3, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/ea;-><init>()V

    throw v3
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v3

    if-eqz p1, :cond_4c

    :try_start_42
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4c

    :catch_46
    move-exception p1

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/Db;->FH(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    :goto_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Zd;->j6([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hj;->close()V

    goto :goto_56

    :goto_55
    throw v3

    :goto_56
    goto :goto_55
.end method


# virtual methods
.method public j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/nD;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/nD;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x0

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->aM()Lcom/google/android/gms/internal/ads/Ow;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_3e

    :cond_1a
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Ow;->DW:Ljava/lang/String;

    if-eqz v11, :cond_2a

    const-string v11, "If-None-Match"

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Ow;->DW:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/Ow;->Hw:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_3d

    const-string v11, "If-Modified-Since"

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/Ow;->Hw:J

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/pg;->j6(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    move-object v0, v10

    :goto_3e
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yd;->FH:Lcom/google/android/gms/internal/ads/Yc;

    invoke-virtual {v10, v2, v0}, Lcom/google/android/gms/internal/ads/Yc;->DW(Lcom/google/android/gms/internal/ads/lE;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Og;

    move-result-object v10
    :try_end_44
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_44} :catch_21f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_44} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_44} :catch_18e

    :try_start_44
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/Og;->FH()I

    move-result v12

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/Og;->Hw()Ljava/util/List;

    move-result-object v5

    const/16 v0, 0x130

    if-ne v12, v0, :cond_116

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->aM()Lcom/google/android/gms/internal/ads/Ow;

    move-result-object v0

    if-nez v0, :cond_6a

    new-instance v0, Lcom/google/android/gms/internal/ads/nD;

    const/16 v14, 0x130

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v17, v11, v3

    move-object v13, v0

    move-object/from16 v19, v5

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_6a
    new-instance v11, Ljava/util/TreeSet;

    sget-object v12, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v11, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8f

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/lB;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/lB;->j6()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_8f
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    if-eqz v13, :cond_c0

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_ff

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_a6
    :goto_a6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ff

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/lB;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/lB;->j6()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a6

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_c0
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_ff

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d2
    :goto_d2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ff

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d2

    new-instance v15, Lcom/google/android/gms/internal/ads/lB;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v8, v14}, Lcom/google/android/gms/internal/ads/lB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    :cond_ff
    new-instance v8, Lcom/google/android/gms/internal/ads/nD;

    const/16 v15, 0x130

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    const/16 v17, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v18, v13, v3

    move-object v14, v8

    move-object/from16 v16, v0

    move-object/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BZJLjava/util/List;)V

    return-object v8

    :cond_116
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/Og;->j6()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_125

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/Og;->DW()I

    move-result v8

    invoke-direct {v1, v0, v8}, Lcom/google/android/gms/internal/ads/yd;->j6(Ljava/io/InputStream;I)[B

    move-result-object v0

    goto :goto_127

    :cond_125
    new-array v0, v9, [B
    :try_end_127
    .catch Ljava/net/SocketTimeoutException; {:try_start_44 .. :try_end_127} :catch_21f
    .catch Ljava/net/MalformedURLException; {:try_start_44 .. :try_end_127} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_127} :catch_18c

    :goto_127
    move-object v8, v0

    :try_start_128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v13, v3

    sget-boolean v0, Lcom/google/android/gms/internal/ads/yd;->j6:Z

    if-nez v0, :cond_137

    const-wide/16 v15, 0xbb8

    cmp-long v0, v13, v15

    if-lez v0, :cond_169

    :cond_137
    if-eqz v8, :cond_13f

    array-length v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_13e
    .catch Ljava/net/SocketTimeoutException; {:try_start_128 .. :try_end_13e} :catch_21f
    .catch Ljava/net/MalformedURLException; {:try_start_128 .. :try_end_13e} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_13e} :catch_187

    goto :goto_141

    :cond_13f
    const-string v0, "null"

    :goto_141
    :try_start_141
    const-string v11, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v2, v15, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v15, v6

    aput-object v0, v15, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v13, 0x3

    aput-object v0, v15, v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->a8()Lcom/google/android/gms/internal/ads/C;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/C;->DW()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v13, 0x4

    aput-object v0, v15, v13

    invoke-static {v11, v15}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_169
    const/16 v0, 0xc8

    if-lt v12, v0, :cond_181

    const/16 v0, 0x12b

    if-gt v12, v0, :cond_181

    new-instance v0, Lcom/google/android/gms/internal/ads/nD;

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v3

    move-object v11, v0

    move-object v13, v8

    move-object/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_181
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_187
    .catch Ljava/net/SocketTimeoutException; {:try_start_141 .. :try_end_187} :catch_21f
    .catch Ljava/net/MalformedURLException; {:try_start_141 .. :try_end_187} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_187} :catch_187

    :catch_187
    move-exception v0

    move-object/from16 v16, v5

    move-object v12, v8

    goto :goto_193

    :catch_18c
    move-exception v0

    goto :goto_190

    :catch_18e
    move-exception v0

    const/4 v10, 0x0

    :goto_190
    move-object/from16 v16, v5

    const/4 v12, 0x0

    :goto_193
    if-eqz v10, :cond_1f8

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/Og;->FH()I

    move-result v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->VH()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Unexpected response code %d for %s"

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/Db;->DW(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_1f0

    new-instance v5, Lcom/google/android/gms/internal/ads/nD;

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v6, v3

    move-object v10, v5

    move v11, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BZJLjava/util/List;)V

    const/16 v6, 0x191

    if-eq v0, v6, :cond_1e8

    const/16 v6, 0x193

    if-ne v0, v6, :cond_1c5

    goto :goto_1e8

    :cond_1c5
    const/16 v2, 0x190

    if-lt v0, v2, :cond_1d4

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_1ce

    goto :goto_1d4

    :cond_1ce
    new-instance v0, Lcom/google/android/gms/internal/ads/Py;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/Py;-><init>(Lcom/google/android/gms/internal/ads/nD;)V

    throw v0

    :cond_1d4
    :goto_1d4
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_1e2

    const/16 v2, 0x257

    if-gt v0, v2, :cond_1e2

    new-instance v0, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/ea;-><init>(Lcom/google/android/gms/internal/ads/nD;)V

    throw v0

    :cond_1e2
    new-instance v0, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/ea;-><init>(Lcom/google/android/gms/internal/ads/nD;)V

    throw v0

    :cond_1e8
    :goto_1e8
    new-instance v0, Lcom/google/android/gms/internal/ads/a;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/a;-><init>(Lcom/google/android/gms/internal/ads/nD;)V

    const-string v5, "auth"

    goto :goto_227

    :cond_1f0
    new-instance v0, Lcom/google/android/gms/internal/ads/NC;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/NC;-><init>()V

    const-string v5, "network"

    goto :goto_227

    :cond_1f8
    new-instance v2, Lcom/google/android/gms/internal/ads/OD;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/OD;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1fe
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->VH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Bad URL "

    if-eqz v3, :cond_214

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_219

    :cond_214
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_219
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_21f
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ads/Ea;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Ea;-><init>()V

    const-string v5, "socket"

    :goto_227
    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/ads/yd;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/db;)V

    goto/16 :goto_8
.end method
