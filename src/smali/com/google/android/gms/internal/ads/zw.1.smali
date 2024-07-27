.class final Lcom/google/android/gms/internal/ads/zw;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/security/MessageDigest;

.field private static final FH:Ljava/lang/Object;

.field private static final Hw:Ljava/lang/Object;

.field private static j6:Z

.field static v5:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zw;->FH:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zw;->Hw:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zw;->v5:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static DW()Ljava/security/MessageDigest;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zw;->j6()V

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zw;->v5:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zw;->DW:Ljava/security/MessageDigest;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_1
.end method

.method private static j6(J)Lcom/google/android/gms/internal/ads/br;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/br;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/br;-><init>()V

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->a8:Ljava/lang/Long;

    return-object v0
.end method

.method static j6(Lcom/google/android/gms/internal/ads/br;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->b:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/Fx;->j6:Lcom/google/android/gms/internal/ads/tq;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Fx;->j6:Lcom/google/android/gms/internal/ads/tq;

    invoke-interface {v1, v3, v0}, Lcom/google/android/gms/internal/ads/tq;->j6([B[B)[B

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Eu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Eu;-><init>()V

    new-array v3, v7, [[B

    aput-object v0, v3, v2

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Eu;->Zo:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v0

    :goto_1
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/Dv;->j6([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v2, [B

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw v0

    :cond_2
    const/16 v0, 0xff

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zw;->j6([BI)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zw;->j6(J)Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v0

    invoke-static {v0, p1, v7}, Lcom/google/android/gms/internal/ads/zw;->j6([BLjava/lang/String;Z)[B

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/ads/Eu;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/Eu;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [[B

    iput-object v1, v4, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zw;->j6([BLjava/lang/String;Z)[B

    move-result-object v0

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    aput-object v0, v6, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zw;->j6([B)[B

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/ads/Eu;->Hw:[B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic j6(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/ads/zw;->DW:Ljava/security/MessageDigest;

    return-object p0
.end method

.method private static j6([BI)Ljava/util/Vector;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v1, p0

    add-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v4, v1, 0xff

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    mul-int/lit16 v5, v3, 0xff

    :try_start_0
    array-length v2, p0

    sub-int/2addr v2, v5

    const/16 v6, 0xff

    if-le v2, v6, :cond_2

    add-int/lit16 v2, v5, 0xff

    :goto_2
    invoke-static {p0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v2, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static j6()V
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/ads/zw;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zw;->j6:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zw;->j6:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/ads/Mw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/Mw;-><init>(Lcom/google/android/gms/internal/ads/Lw;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static j6([B)[B
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/ads/zw;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zw;->DW()Ljava/security/MessageDigest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zw;->DW:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "Cannot compute hash"

    invoke-direct {v0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static j6([BLjava/lang/String;Z)[B
    .registers 11

    const/16 v6, 0x100

    const/16 v7, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/16 v0, 0xef

    :goto_0
    array-length v1, p0

    if-le v1, v0, :cond_0

    const-wide/16 v4, 0x1000

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zw;->j6(J)Lcom/google/android/gms/internal/ads/br;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object p0

    :cond_0
    array-length v1, p0

    if-ge v1, v0, :cond_3

    array-length v1, p0

    sub-int v1, v0, v1

    new-array v1, v1, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v3, p0

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_1
    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zw;->j6([B)[B

    move-result-object v1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :cond_1
    new-array v3, v6, [B

    new-instance v1, Lcom/google/android/gms/internal/ads/Nw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Nw;-><init>()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Nw;->ee:[Lcom/google/android/gms/internal/ads/Qw;

    array-length v5, v4

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    invoke-interface {v6, v0, v3}, Lcom/google/android/gms/internal/ads/Qw;->j6([B[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0xff

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_5

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/ot;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ot;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ot;->j6([B)V

    :cond_6
    return-object v3
.end method
