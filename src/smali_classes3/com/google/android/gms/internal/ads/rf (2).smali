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
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;"
        }
    .end annotation
.end field

.field j6:J

.field final v5:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ow;)V
    .registers 18

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ow;->DW:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/Ow;->FH:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/Ow;->Hw:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/Ow;->v5:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/Ow;->Zo:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;

    if-eqz v1, :cond_12

    move-object v12, v1

    goto :goto_47

    :cond_12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v12

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    new-instance v13, Lcom/google/android/gms/internal/ads/lB;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v13, v14, v12}, Lcom/google/android/gms/internal/ads/lB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_46
    move-object v12, v2

    :goto_47
    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/rf;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    array-length v0, v0

    int-to-long v0, v0

    move-object v2, p0

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/rf;->j6:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p2, 0x0

    :cond_e
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rf;->FH:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/rf;->Hw:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/rf;->v5:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/rf;->Zo:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/rf;->VH:J

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/rf;->gn:Ljava/util/List;

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Pf;)Lcom/google/android/gms/internal/ads/rf;
    .registers 15

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_2c

    new-instance v0, Lcom/google/android/gms/internal/ads/rf;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->j6(Lcom/google/android/gms/internal/ads/Pf;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->j6(Lcom/google/android/gms/internal/ads/Pf;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/io/InputStream;)J

    move-result-wide v5

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/io/InputStream;)J

    move-result-wide v11

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Lcom/google/android/gms/internal/ads/Pf;)Ljava/util/List;

    move-result-object v13

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/rf;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v0

    :cond_2c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method final j6(Ljava/io/OutputStream;)Z
    .registers 7

    const v0, 0x20150306

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->FH:Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_5b

    if-nez v0, :cond_13

    const-string v0, ""

    :cond_13
    :try_start_13
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/rf;->Hw:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/rf;->v5:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/rf;->Zo:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/rf;->VH:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->gn:Ljava/util/List;

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/lB;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lB;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lB;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_39

    :cond_54
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;I)V

    :cond_57
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_5a} :catch_5b

    return v1

    :catch_5b
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
