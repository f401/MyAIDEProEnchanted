.class public final Lcom/google/android/gms/internal/ads/_e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/El;


# instance fields
.field private DW:J

.field private final FH:Ljava/io/File;

.field private final Hw:I

.field private final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/rf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/_e;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000  # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_e;->j6:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/_e;->DW:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/_e;->FH:Ljava/io/File;

    iput p2, p0, Lcom/google/android/gms/internal/ads/_e;->Hw:I

    return-void
.end method

.method static DW(Ljava/io/InputStream;)J
    .registers 8

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static DW(Lcom/google/android/gms/internal/ads/Pf;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Pf;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_31

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_12

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_30

    new-instance v3, Lcom/google/android/gms/internal/ads/lB;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->j6(Lcom/google/android/gms/internal/ads/Pf;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->j6(Lcom/google/android/gms/internal/ads/Pf;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/lB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_30
    return-object v1

    :cond_31
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "readHeaderList size="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4b

    :goto_4a
    throw v0

    :goto_4b
    goto :goto_4a
.end method

.method private final DW(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/_e;->v5(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/lang/String;)V

    if-nez v0, :cond_20

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/_e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static FH(Ljava/io/InputStream;)I
    .registers 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    return p0

    :cond_8
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private final FH(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_e;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/rf;

    if-eqz p1, :cond_11

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/_e;->DW:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/rf;->j6:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/_e;->DW:J

    :cond_11
    return-void
.end method

.method private static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method static j6(Ljava/io/InputStream;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result v2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/lit8 v0, v0, 0x0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static j6(Ljava/io/File;)Ljava/io/InputStream;
    .registers 2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Pf;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/_e;->j6(Lcom/google/android/gms/internal/ads/Pf;J)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static j6(Ljava/io/OutputStream;I)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static j6(Ljava/io/OutputStream;J)V
    .registers 5

    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static j6(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/OutputStream;J)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/rf;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_e;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/_e;->DW:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/rf;->j6:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/_e;->DW:J

    goto :goto_22

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_e;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rf;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/_e;->DW:J

    iget-wide v3, p2, Lcom/google/android/gms/internal/ads/rf;->j6:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/rf;->j6:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/_e;->DW:J

    :goto_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_e;->j6:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Pf;J)[B
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Pf;->j6()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1f

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-nez v5, :cond_1f

    new-array p1, v2, [B

    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v2, 0x49

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "streamToBytes length="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", maxLength="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final v5(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_e;->FH:Ljava/io/File;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/_e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final iW()V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_e;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_e;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "Unable to create cache dir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/_e;->FH:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Db;->DW(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_62

    :cond_22
    monitor-exit p0

    return-void

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_e;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_62

    if-nez v0, :cond_2e

    monitor-exit p0

    return-void

    :cond_2e
    :try_start_2e
    array-length v2, v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_62

    :goto_2f
    if-ge v1, v2, :cond_60

    aget-object v3, v0, v1

    :try_start_33
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Lcom/google/android/gms/internal/ads/Pf;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v4, v5}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/io/InputStream;J)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_45} :catch_59
    .catchall {:try_start_33 .. :try_end_45} :catchall_62

    :try_start_45
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/rf;->j6(Lcom/google/android/gms/internal/ads/Pf;)Lcom/google/android/gms/internal/ads/rf;

    move-result-object v7

    iput-wide v4, v7, Lcom/google/android/gms/internal/ads/rf;->j6:J

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/rf;)V
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_54

    :try_start_50
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    goto :goto_5d

    :catchall_54
    move-exception v4

    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    throw v4
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_59} :catch_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_62

    :catch_59
    move-exception v4

    :try_start_5a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_62

    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_60
    monitor-exit p0

    return-void

    :catchall_62
    move-exception v0

    monitor-exit p0

    goto :goto_66

    :goto_65
    throw v0

    :goto_66
    goto :goto_65
.end method

.method public final j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ow;
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_e;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rf;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c4

    const/4 v1, 0x0

    if-nez v0, :cond_e

    monitor-exit p0

    return-object v1

    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/_e;->v5(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_c4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_15
    new-instance v6, Lcom/google/android/gms/internal/ads/Pf;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/io/InputStream;J)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_ab
    .catchall {:try_start_15 .. :try_end_27} :catchall_c4

    :try_start_27
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/rf;->j6(Lcom/google/android/gms/internal/ads/Pf;)Lcom/google/android/gms/internal/ads/rf;

    move-result-object v7

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4f

    const-string v0, "%s: key=%s, found=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object p1, v8, v3

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    aput-object v7, v8, v5

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/_e;->FH(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_a6

    :try_start_4a
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_ab
    .catchall {:try_start_4a .. :try_end_4d} :catchall_c4

    monitor-exit p0

    return-object v1

    :cond_4f
    :try_start_4f
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Pf;->j6()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/_e;->j6(Lcom/google/android/gms/internal/ads/Pf;J)[B

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/Ow;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/Ow;-><init>()V

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/rf;->FH:Ljava/lang/String;

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/Ow;->DW:Ljava/lang/String;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/rf;->Hw:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/Ow;->FH:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/rf;->v5:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/Ow;->Hw:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/rf;->Zo:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/Ow;->v5:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/rf;->VH:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/Ow;->Zo:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/rf;->gn:Ljava/util/List;

    new-instance v9, Ljava/util/TreeMap;

    sget-object v10, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v9, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/lB;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/lB;->j6()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/lB;->DW()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    :cond_97
    iput-object v9, v8, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rf;->gn:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/Ow;->gn:Ljava/util/List;
    :try_end_a1
    .catchall {:try_start_4f .. :try_end_a1} :catchall_a6

    :try_start_a1
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_ab
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_c4

    monitor-exit p0

    return-object v8

    :catchall_a6
    move-exception v0

    :try_start_a7
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    throw v0
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ab} :catch_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_c4

    :catch_ab
    move-exception v0

    :try_start_ac
    const-string v6, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/_e;->DW(Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_ac .. :try_end_c2} :catchall_c4

    monitor-exit p0

    return-object v1

    :catchall_c4
    move-exception p1

    monitor-exit p0

    goto :goto_c8

    :goto_c7
    throw p1

    :goto_c8
    goto :goto_c7
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ow;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_7
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    array-length v3, v3

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/_e;->DW:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget v3, v1, Lcom/google/android/gms/internal/ads/_e;->Hw:I

    int-to-long v8, v3

    const/4 v10, 0x0

    cmp-long v11, v4, v8

    if-ltz v11, :cond_bb

    sget-boolean v4, Lcom/google/android/gms/internal/ads/Db;->DW:Z

    if-eqz v4, :cond_21

    const-string v4, "Pruning old cache entries."

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Db;->FH(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/_e;->DW:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/_e;->j6:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_32
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x2

    if-eqz v13, :cond_90

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/rf;

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    invoke-direct {v1, v15}, Lcom/google/android/gms/internal/ads/_e;->v5(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v15

    move-wide/from16 v16, v4

    if-eqz v15, :cond_5d

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/_e;->DW:J

    move-object/from16 v18, v11

    iget-wide v10, v13, Lcom/google/android/gms/internal/ads/rf;->j6:J

    sub-long/2addr v3, v10

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/_e;->DW:J

    goto :goto_74

    :cond_5d
    move-object/from16 v18, v11

    const-string v3, "Could not delete cache entry for key=%s, filename=%s"

    new-array v4, v14, [Ljava/lang/Object;

    iget-object v10, v13, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    iget-object v10, v13, Lcom/google/android/gms/internal/ads/rf;->DW:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/_e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v4, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_74
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v12, v12, 0x1

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/_e;->DW:J

    add-long/2addr v3, v6

    long-to-float v3, v3

    iget v4, v1, Lcom/google/android/gms/internal/ads/_e;->Hw:I

    int-to-float v4, v4

    const v10, 0x3f666666  # 0.9f

    mul-float v4, v4, v10

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8a

    goto :goto_92

    :cond_8a
    move-wide/from16 v4, v16

    move-object/from16 v11, v18

    const/4 v10, 0x0

    goto :goto_32

    :cond_90
    move-wide/from16 v16, v4

    :goto_92
    sget-boolean v3, Lcom/google/android/gms/internal/ads/Db;->DW:Z

    if-eqz v3, :cond_bb

    const-string v3, "pruned %d files, %d bytes, %d ms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v5, 0x0

    aput-object v6, v4, v5

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/_e;->DW:J

    sub-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v14

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Db;->FH(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_bb
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/_e;->v5(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_bf
    .catchall {:try_start_7 .. :try_end_bf} :catchall_111

    :try_start_bf
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/rf;

    invoke-direct {v6, v0, v2}, Lcom/google/android/gms/internal/ads/rf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ow;)V

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/rf;->j6(Ljava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_e1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/internal/ads/_e;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/rf;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_df} :catch_f9
    .catchall {:try_start_bf .. :try_end_df} :catchall_111

    monitor-exit p0

    return-void

    :cond_e1
    :try_start_e1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    const-string v0, "Failed to write header for %s"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_f9} :catch_f9
    .catchall {:try_start_e1 .. :try_end_f9} :catchall_111

    :catch_f9
    move-exception v0

    :try_start_fa
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_10f

    const-string v0, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10f
    .catchall {:try_start_fa .. :try_end_10f} :catchall_111

    :cond_10f
    monitor-exit p0

    return-void

    :catchall_111
    move-exception v0

    monitor-exit p0

    goto :goto_115

    :goto_114
    throw v0

    :goto_115
    goto :goto_114
.end method
