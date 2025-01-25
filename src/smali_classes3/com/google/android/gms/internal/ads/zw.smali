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
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zw;->j6()V

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zw;->v5:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_10

    :catch_e
    move-exception v0

    const/4 v0, 0x0

    :goto_10
    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    sget-object v0, Lcom/google/android/gms/internal/ads/zw;->DW:Ljava/security/MessageDigest;

    if-nez v0, :cond_19

    return-object v1

    :cond_19
    return-object v0
.end method

.method private static j6(J)Lcom/google/android/gms/internal/ads/br;
    .registers 4

    new-instance p0, Lcom/google/android/gms/internal/ads/br;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/br;-><init>()V

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/br;->a8:Ljava/lang/Long;

    return-object p0
.end method

.method static j6(Lcom/google/android/gms/internal/ads/br;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->b:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_48

    sget-object v0, Lcom/google/android/gms/internal/ads/Fx;->j6:Lcom/google/android/gms/internal/ads/tq;

    if-eqz v0, :cond_42

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_25

    :cond_23
    new-array p1, v1, [B

    :goto_25
    sget-object v0, Lcom/google/android/gms/internal/ads/Fx;->j6:Lcom/google/android/gms/internal/ads/tq;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/tq;->j6([B[B)[B

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/Eu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Eu;-><init>()V

    new-array v0, v2, [[B

    aput-object p0, v0, v1

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/Eu;->Zo:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object p0

    goto :goto_98

    :cond_42
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p0

    :cond_48
    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zw;->j6([BI)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_57

    goto :goto_8a

    :cond_57
    new-instance v3, Lcom/google/android/gms/internal/ads/Eu;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/Eu;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [[B

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, p1, v1}, Lcom/google/android/gms/internal/ads/zw;->j6([BLjava/lang/String;Z)[B

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/Eu;->FH:[[B

    aput-object v5, v6, v4

    add-int/2addr v4, v2

    goto :goto_69

    :cond_7f
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zw;->j6([B)[B

    move-result-object p0

    iput-object p0, v3, Lcom/google/android/gms/internal/ads/Eu;->Hw:[B

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object p0

    goto :goto_98

    :cond_8a
    :goto_8a
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zw;->j6(J)Lcom/google/android/gms/internal/ads/br;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object p0

    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zw;->j6([BLjava/lang/String;Z)[B

    move-result-object p0

    :goto_98
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/Dv;->j6([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/ads/zw;->DW:Ljava/security/MessageDigest;

    return-object p0
.end method

.method private static j6([BI)Ljava/util/Vector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p0, :cond_2d

    array-length v0, p0

    if-gtz v0, :cond_7

    goto :goto_2d

    :cond_7
    array-length v0, p0

    const/16 v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_2c

    mul-int/lit16 v4, v3, 0xff

    :try_start_18
    array-length v5, p0

    sub-int/2addr v5, v4

    if-le v5, v1, :cond_1f

    add-int/lit16 v5, v4, 0xff

    goto :goto_20

    :cond_1f
    array-length v5, p0

    :goto_20
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_27} :catch_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catch_2a
    move-exception p0

    return-object p1

    :cond_2c
    return-object v2

    :cond_2d
    :goto_2d
    return-object p1
.end method

.method static j6()V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zw;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zw;->j6:Z

    if-nez v1, :cond_18

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/internal/ads/zw;->j6:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/ads/Mw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/Mw;-><init>(Lcom/google/android/gms/internal/ads/Lw;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static j6([B)[B
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zw;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zw;->DW()Ljava/security/MessageDigest;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zw;->DW:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_17
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot compute hash"

    invoke-direct {p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private static j6([BLjava/lang/String;Z)[B
    .registers 8

    if-eqz p2, :cond_5

    const/16 v0, 0xef

    goto :goto_7

    :cond_5
    const/16 v0, 0xff

    :goto_7
    array-length v1, p0

    if-le v1, v0, :cond_14

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zw;->j6(J)Lcom/google/android/gms/internal/ads/br;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object p0

    :cond_14
    array-length v1, p0

    if-ge v1, v0, :cond_39

    array-length v1, p0

    sub-int v1, v0, v1

    new-array v1, v1, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p0

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_49

    :cond_39
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/16 v0, 0x100

    if-eqz p2, :cond_65

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zw;->j6([B)[B

    move-result-object p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    :cond_65
    new-array p2, v0, [B

    new-instance v0, Lcom/google/android/gms/internal/ads/Nw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Nw;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Nw;->ee:[Lcom/google/android/gms/internal/ads/Qw;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_71
    if-ge v3, v1, :cond_7b

    aget-object v4, v0, v3

    invoke-interface {v4, p0, p2}, Lcom/google/android/gms/internal/ads/Qw;->j6([B[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    :cond_7b
    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_8f

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_8f
    new-instance p0, Lcom/google/android/gms/internal/ads/ot;

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ot;-><init>([B)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ot;->j6([B)V

    :cond_9d
    return-object p2
.end method
