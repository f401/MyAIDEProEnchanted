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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/db;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->a8()Lcom/google/android/gms/internal/ads/C;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->U2()I

    move-result v1

    :try_start_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/C;->j6(Lcom/google/android/gms/internal/ads/db;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/db; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    throw v0
.end method

.method private final j6(Ljava/io/InputStream;I)[B
    .registers 8

    const/4 v4, 0x0

    new-instance v2, Lcom/google/android/gms/internal/ads/hj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/hj;-><init>(Lcom/google/android/gms/internal/ads/Zd;I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/Zd;->j6(I)[B

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/hj;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/Zd;->j6([B)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hj;->close()V

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yd;->Hw:Lcom/google/android/gms/internal/ads/Zd;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/Zd;->j6([B)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hj;->close()V

    return-object v0

    :catch_0
    move-exception v3

    const-string v3, "Error occurred when closing InputStream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Db;->FH(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ea;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v3

    const-string v3, "Error occurred when closing InputStream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Db;->FH(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/nD;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;)",
            "Lcom/google/android/gms/internal/ads/nD;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->aM()Lcom/google/android/gms/internal/ads/Ow;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yd;->FH:Lcom/google/android/gms/internal/ads/Yc;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/Yc;->DW(Lcom/google/android/gms/internal/ads/lE;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Og;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v9

    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/Og;->FH()I

    move-result v3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/Og;->Hw()Ljava/util/List;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v8

    const/16 v2, 0x130

    if-ne v3, v2, :cond_a

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->aM()Lcom/google/android/gms/internal/ads/Ow;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/ads/nD;

    const/16 v3, 0x130

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BZJLjava/util/List;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-object v2

    :cond_1
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/Ow;->DW:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, "If-None-Match"

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/Ow;->DW:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/Ow;->Hw:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    const-string v5, "If-Modified-Since"

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/Ow;->Hw:J

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/pg;->j6(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v2, "socket"

    new-instance v3, Lcom/google/android/gms/internal/ads/Ea;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/Ea;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/yd;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/db;)V

    goto :goto_0

    :cond_3
    :try_start_4
    new-instance v5, Ljava/util/TreeSet;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v5, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lB;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lB;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->VH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "Bad URL "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    :try_start_5
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lB;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lB;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v2, v8

    :goto_6
    move-object v3, v9

    move-object v5, v4

    :goto_7
    const/4 v4, 0x0

    move-object v8, v2

    move-object v9, v3

    :goto_8
    if-eqz v9, :cond_15

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/Og;->FH()I

    move-result v3

    const-string v2, "Unexpected response code %d for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->VH()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/Db;->DW(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_14

    new-instance v2, Lcom/google/android/gms/internal/ads/nD;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BZJLjava/util/List;)V

    const/16 v4, 0x191

    if-eq v3, v4, :cond_6

    const/16 v4, 0x193

    if-ne v3, v4, :cond_10

    :cond_6
    const-string v3, "auth"

    new-instance v4, Lcom/google/android/gms/internal/ads/a;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/a;-><init>(Lcom/google/android/gms/internal/ads/nD;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/ads/yd;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/db;)V

    goto/16 :goto_0

    :cond_7
    :try_start_6
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v7, Lcom/google/android/gms/internal/ads/lB;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v3, v2}, Lcom/google/android/gms/internal/ads/lB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    new-instance v10, Lcom/google/android/gms/internal/ads/nD;

    const/16 v11, 0x130

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    const/4 v13, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v14, v2, v18

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BZJLjava/util/List;)V

    move-object v2, v10

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/Og;->j6()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/Og;->DW()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/ads/yd;->j6(Ljava/io/InputStream;I)[B
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v4

    :goto_a
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    sget-boolean v2, Lcom/google/android/gms/internal/ads/yd;->j6:Z

    if-nez v2, :cond_b

    const-wide/16 v10, 0xbb8

    cmp-long v2, v6, v10

    if-lez v2, :cond_c

    :cond_b
    if-eqz v4, :cond_e

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_b
    const-string v5, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v6, 0x2

    aput-object v2, v10, v6

    const/4 v2, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v2

    const/4 v2, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/lE;->a8()Lcom/google/android/gms/internal/ads/C;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/C;->DW()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v2

    invoke-static {v5, v10}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v2, 0xc8

    if-lt v3, v2, :cond_f

    const/16 v2, 0x12b

    if-gt v3, v2, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/ads/nD;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BZJLjava/util/List;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v2

    move-object v5, v2

    goto/16 :goto_8

    :cond_d
    const/4 v2, 0x0

    :try_start_8
    new-array v4, v2, [B
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_a

    :cond_e
    const-string v2, "null"

    goto :goto_b

    :cond_f
    :try_start_9
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_4
    move-exception v4

    const/4 v3, 0x0

    move-object v5, v4

    goto/16 :goto_7

    :cond_10
    const/16 v4, 0x190

    if-lt v3, v4, :cond_11

    const/16 v4, 0x1f3

    if-le v3, v4, :cond_12

    :cond_11
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_13

    const/16 v4, 0x257

    if-gt v3, v4, :cond_13

    new-instance v3, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/ea;-><init>(Lcom/google/android/gms/internal/ads/nD;)V

    throw v3

    :cond_12
    new-instance v3, Lcom/google/android/gms/internal/ads/Py;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/Py;-><init>(Lcom/google/android/gms/internal/ads/nD;)V

    throw v3

    :cond_13
    new-instance v3, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/ea;-><init>(Lcom/google/android/gms/internal/ads/nD;)V

    throw v3

    :cond_14
    const-string v2, "network"

    new-instance v3, Lcom/google/android/gms/internal/ads/NC;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/NC;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/yd;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/db;)V

    goto/16 :goto_0

    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/ads/OD;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/OD;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_16
    new-instance v2, Ljava/lang/String;

    const-string v4, "Bad URL "

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_5
    move-exception v4

    goto/16 :goto_6
.end method
