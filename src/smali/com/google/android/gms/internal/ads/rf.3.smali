.class final Lcom/google/android/gms/internal/ads/rf;
.super Ljava/lang/Object;


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:Ljava/lang/String;

.field final Hw:J

.field final VH:J

.field final Zo:J

.field final gn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;"
        }
    .end annotation
.end field

.field j6:J

.field final v5:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ow;)V
    .registers 19

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ow;->DW:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/Ow;->FH:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/Ow;->Hw:J

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/Ow;->v5:J

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/Ow;->Zo:J

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    if-eqz v14, :cond_1

    :cond_0
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/rf;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    array-length v2, v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/rf;->j6:J

    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v15, Lcom/google/android/gms/internal/ads/lB;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v15, v2, v3}, Lcom/google/android/gms/internal/ads/lB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rf;->FH:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/rf;->Hw:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/rf;->v5:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/rf;->Zo:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/rf;->VH:J

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/rf;->gn:Ljava/util/List;

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Pf;)Lcom/google/android/gms/internal/ads/rf;
    .registers 14

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/rf;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->j6(Lcom/google/android/gms/internal/ads/Pf;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->j6(Lcom/google/android/gms/internal/ads/Pf;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/io/InputStream;)J

    move-result-wide v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/io/InputStream;)J

    move-result-wide v6

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/io/InputStream;)J

    move-result-wide v8

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/io/InputStream;)J

    move-result-wide v10

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Lcom/google/android/gms/internal/ads/Pf;)Ljava/util/List;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/rf;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method


# virtual methods
.method final j6(Ljava/io/OutputStream;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x20150306

    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    :try_start_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/rf;->Hw:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;J)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/rf;->v5:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;J)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/rf;->Zo:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;J)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/rf;->VH:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->gn:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lB;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lB;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :goto_2
    return v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->FH:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;I)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_2
.end method
