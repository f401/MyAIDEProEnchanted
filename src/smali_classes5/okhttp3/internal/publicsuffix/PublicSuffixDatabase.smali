.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final EXCEPTION_MARKER:B = 0x21t

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    const/16 v1, 0x2a

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .registers 14

    array-length v0, p0

    const/4 v1, 0x0

    move v5, v0

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_89

    add-int v0, v6, v5

    div-int/lit8 v0, v0, 0x2

    :goto_a
    const/4 v1, -0x1

    if-le v0, v1, :cond_16

    aget-byte v1, p0, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_16

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_16
    add-int/lit8 v7, v0, 0x1

    const/4 v0, 0x1

    :goto_19
    add-int v8, v7, v0

    aget-byte v1, p0, v8

    const/16 v2, 0xa

    if-eq v1, v2, :cond_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_24
    sub-int v9, v8, v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v3, v0

    move v2, p2

    :goto_2b
    if-eqz v1, :cond_42

    const/16 v0, 0x2e

    const/4 v1, 0x0

    :goto_30
    add-int v10, v7, v3

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    sub-int v10, v0, v10

    if-eqz v10, :cond_49

    move v0, v3

    move v1, v4

    :goto_3c
    if-gez v10, :cond_5d

    :cond_3e
    add-int/lit8 v0, v7, -0x1

    move v5, v0

    goto :goto_4

    :cond_42
    aget-object v0, p1, v2

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    goto :goto_30

    :cond_49
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    if-ne v0, v9, :cond_51

    move v1, v4

    goto :goto_3c

    :cond_51
    aget-object v3, p1, v2

    array-length v3, v3

    if-ne v3, v4, :cond_87

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_81

    move v1, v4

    goto :goto_3c

    :cond_5d
    if-lez v10, :cond_63

    :cond_5f
    add-int/lit8 v0, v8, 0x1

    move v6, v0

    goto :goto_4

    :cond_63
    sub-int v3, v9, v0

    aget-object v0, p1, v2

    array-length v0, v0

    sub-int v1, v0, v1

    move v0, v2

    :goto_6b
    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    if-ge v0, v2, :cond_75

    aget-object v2, p1, v0

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_6b

    :cond_75
    if-lt v1, v3, :cond_3e

    if-gt v1, v3, :cond_5f

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v7, v9, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_80
    return-object v0

    :cond_81
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    const/4 v4, -0x1

    move v3, v0

    goto :goto_2b

    :cond_87
    move v3, v0

    goto :goto_2b

    :cond_89
    const/4 v0, 0x0

    goto :goto_80
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    :goto_16
    monitor-enter p0

    :try_start_17
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_bf

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_c7

    array-length v6, p1

    new-array v7, v6, [[B

    move v0, v1

    :goto_20
    array-length v2, p1

    if-ge v0, v2, :cond_3f

    aget-object v2, p1, v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-object v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_30
    :try_start_30
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_16

    :catch_36
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_16

    :cond_3f
    move v2, v1

    :goto_40
    if-ge v2, v6, :cond_92

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v0, v7, v2}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8e

    move-object v5, v0

    :goto_4b
    if-le v6, v8, :cond_97

    invoke-virtual {v7}, [[B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v2, v1

    :goto_54
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_97

    sget-object v4, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v4, v0, v2

    iget-object v4, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v4, v0, v2}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_94

    move-object v2, v4

    :goto_66
    if-eqz v2, :cond_ca

    :goto_68
    add-int/lit8 v0, v6, -0x1

    if-ge v1, v0, :cond_ca

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {v0, v7, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_99

    :goto_74
    if-eqz v0, :cond_9c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_8d
    :goto_8d
    return-object v0

    :cond_8e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_40

    :cond_92
    move-object v5, v3

    goto :goto_4b

    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_97
    move-object v2, v3

    goto :goto_66

    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_9c
    if-nez v5, :cond_a3

    if-nez v2, :cond_a3

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    goto :goto_8d

    :cond_a3
    if-eqz v5, :cond_b9

    const-string v0, "\\."

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_ab
    if-eqz v2, :cond_bc

    const-string v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_b3
    array-length v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_8d

    move-object v0, v1

    goto :goto_8d

    :cond_b9
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_ab

    :cond_bc
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_b3

    :cond_bf
    :try_start_bf
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_c7
    move-exception v0

    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_bf .. :try_end_c9} :catchall_c7

    throw v0

    :cond_ca
    move-object v0, v3

    goto :goto_74
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "/assets/okhttp3/internal/publicsuffix/publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v1, Lokio/GzipSource;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    :try_start_18
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {v1, v0}, Lokio/BufferedSource;->readFully([B)V

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {v1, v2}, Lokio/BufferedSource;->readFully([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3e

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Lokio/BufferedSource;->close()V

    :cond_2f
    monitor-enter p0

    :try_start_30
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_3b

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_a

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    :catchall_3e
    move-exception v0

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v2

    if-eqz v1, :cond_46

    :try_start_43
    invoke-interface {v1}, Lokio/BufferedSource;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    :cond_46
    :goto_46
    throw v2

    :catchall_47
    move-exception v1

    invoke-static {v0, v1}, Lokhttp3/Cache$2$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_46
.end method

.method private readTheListUninterruptibly()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_2
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_5
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_5} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_f
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    if-eqz v1, :cond_e

    :goto_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-void

    :catch_f
    move-exception v0

    :try_start_10
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_e

    goto :goto_7

    :catch_1d
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_24

    const/4 v0, 0x1

    move v1, v0

    goto :goto_2

    :catchall_24
    move-exception v0

    if-eqz v1, :cond_2e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2e
    throw v0
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x21

    const/4 v4, 0x0

    if-eqz p1, :cond_59

    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_21

    aget-object v2, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_21

    const/4 v0, 0x0

    :goto_20
    return-object v0

    :cond_21
    aget-object v2, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    array-length v3, v0

    array-length v0, v1

    if-ne v2, v5, :cond_48

    :goto_2b
    sub-int v0, v3, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_38
    array-length v3, v2

    if-ge v0, v3, :cond_4b

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setListBytes([B[B)V
    .registers 5

    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
