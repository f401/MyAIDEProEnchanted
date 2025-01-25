.class public Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;
    }
.end annotation


# static fields
.field public static final ANDROID_COMMON_PAGE_ALIGNMENT_BYTES:I = 0x1000

.field public static final APK_SIGNING_BLOCK_MAGIC:[B

.field private static final CONTENT_DIGESTED_CHUNK_MAX_SIZE_BYTES:J = 0x100000L

.field private static final HEX_DIGITS:[C

.field private static final V4_CONTENT_DIGEST_ALGORITHMS:[Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

.field private static final VERITY_PADDING_BLOCK_ID:I = 0x42726577

.field public static final VERSION_APK_SIGNATURE_SCHEME_V2:I = 0x2

.field public static final VERSION_APK_SIGNATURE_SCHEME_V3:I = 0x3

.field public static final VERSION_APK_SIGNATURE_SCHEME_V4:I = 0x4

.field public static final VERSION_JAR_SIGNATURE_SCHEME:I = 0x1

.field public static final VERSION_SOURCE_STAMP:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->HEX_DIGITS:[C

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->APK_SIGNING_BLOCK_MAGIC:[B

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->V4_CONTENT_DIGEST_ALGORITHMS:[Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    return-void

    :array_26
    .array-data 1
        0x41t
        0x50t
        0x4bt
        0x20t
        0x53t
        0x69t
        0x67t
        0x20t
        0x42t
        0x6ct
        0x6ft
        0x63t
        0x6bt
        0x20t
        0x34t
        0x32t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(JJ)J
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getChunkCount(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(I[BI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->setUnsignedInt32LittleEndian(I[BI)V

    return-void
.end method

.method public static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static compareContentDigestAlgorithm(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)I
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_74

    if-eq v1, v3, :cond_4f

    if-ne v1, v4, :cond_38

    sget-object v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_20

    if-eq v1, v3, :cond_82

    if-ne v1, v4, :cond_21

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    :goto_20
    return v0

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown alg2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown alg1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    sget-object v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_20

    if-eq v1, v3, :cond_1f

    if-eq v1, v4, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown alg2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_74
    sget-object v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_1f

    if-eq v1, v3, :cond_82

    if-ne v1, v4, :cond_84

    :cond_82
    const/4 v0, -0x1

    goto :goto_20

    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown alg2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static compareSignatureAlgorithm(Lcom/android/apksig/internal/apk/SignatureAlgorithm;Lcom/android/apksig/internal/apk/SignatureAlgorithm;)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->compareContentDigestAlgorithm(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)I

    move-result v0

    return v0
.end method

.method private static computeApkVerityDigest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->createVerityDigestBuffer(Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/android/apksig/internal/util/VerityTreeBuilder;

    const/16 v2, 0x8

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/util/VerityTreeBuilder;-><init>([B)V

    :try_start_e
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->generateVerityTreeRootHash(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-interface {p2}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_33

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->close()V

    return-void

    :catchall_33
    move-exception v0

    :try_start_34
    throw v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    :try_start_36
    invoke-virtual {v1}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    :goto_39
    throw v0

    :catchall_3a
    move-exception v1

    goto :goto_39
.end method

.method public static computeChunkVerityTreeAndDigest(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->createVerityDigestBuffer(Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/android/apksig/internal/util/VerityTreeBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/util/VerityTreeBuilder;-><init>([B)V

    :try_start_b
    invoke-virtual {v1, p0}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->generateVerityTree(Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->getRootHashFromTree(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;

    sget-object v4, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v3, v4, v0, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;-><init>(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;[B[B)V
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_29

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->close()V

    return-object v3

    :catchall_29
    move-exception v0

    :try_start_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    :try_start_2c
    invoke-virtual {v1}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    :goto_2f
    throw v0

    :catchall_30
    move-exception v1

    goto :goto_2f
.end method

.method public static computeContentDigests(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;)Lcom/android/apksig/internal/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;)",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    new-instance v1, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    iget-object v0, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_36
    :try_start_36
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeContentDigests(Lcom/android/apksig/util/RunnablesExecutor;Ljava/util/Set;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Ljava/util/Map;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_48
    .catch Ljava/security/DigestException; {:try_start_36 .. :try_end_39} :catch_3f

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    return-object v0

    :catch_3f
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to compute digests of APK"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_48
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to read APK being signed"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No signer configs provided. At least one is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeContentDigests(Lcom/android/apksig/util/RunnablesExecutor;Ljava/util/Set;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    sget-object v4, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-eq v0, v4, :cond_22

    sget-object v4, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-ne v0, v4, :cond_e

    :cond_22
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/apksig/util/DataSource;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    const/4 v3, 0x1

    aput-object p3, v0, v3

    const/4 v3, 0x2

    aput-object p4, v0, v3

    invoke-static {p0, v2, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeOneMbChunkContentDigests(Lcom/android/apksig/util/RunnablesExecutor;Ljava/util/Set;[Lcom/android/apksig/util/DataSource;Ljava/util/Map;)V

    sget-object v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {p2, p3, p4, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeApkVerityDigest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/Map;)V

    :cond_40
    return-object v1
.end method

.method static computeOneMbChunkContentDigests(Lcom/android/apksig/util/RunnablesExecutor;Ljava/util/Set;[Lcom/android/apksig/util/DataSource;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;[",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    const/4 v8, 0x0

    array-length v3, p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_18

    aget-object v4, p2, v2

    invoke-interface {v4}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    invoke-static {v4, v5, v6, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getChunkCount(JJ)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_73

    long-to-int v1, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-direct {v4, v0, v1, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;-><init>(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_42
    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;

    invoke-direct {v1, p2, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;-><init>([Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;Ljava/util/List;)V

    invoke-interface {p0, v0}, Lcom/android/apksig/util/RunnablesExecutor;->execute(Lcom/android/apksig/util/RunnablesProvider;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->access$200(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->access$300(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v3

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->access$400(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-interface {p3, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " chunks"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/DigestException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    return-void
.end method

.method static computeOneMbChunkContentDigests(Ljava/util/Set;[Lcom/android/apksig/util/DataSource;Ljava/util/Map;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;[",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v0, p1

    array-length v7, v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v7, :cond_19

    aget-object v8, p1, v6

    invoke-interface {v8}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    invoke-static {v8, v9, v10, v11}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getChunkCount(JJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_19
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_146

    long-to-int v6, v4

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    array-length v0, v4

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/security/MessageDigest;

    move-object/from16 v17, v0

    array-length v5, v4

    new-array v0, v5, [[B

    move-object/from16 v18, v0

    array-length v5, v4

    new-array v0, v5, [I

    move-object/from16 v19, v0

    const/4 v5, 0x0

    :goto_43
    array-length v7, v4

    if-ge v5, v7, :cond_70

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->getChunkDigestOutputSizeBytes()I

    move-result v8

    aput v8, v19, v5

    mul-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x5

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/16 v10, 0x5a

    int-to-byte v10, v10

    int-to-byte v10, v10

    int-to-byte v10, v10

    int-to-byte v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->setUnsignedInt32LittleEndian(I[BI)V

    aput-object v8, v18, v5

    invoke-virtual {v7}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->getJcaMessageDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    aput-object v7, v17, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_70
    invoke-static/range {v17 .. v17}, Lcom/android/apksig/util/DataSinks;->asDataSink([Ljava/security/MessageDigest;)Lcom/android/apksig/util/DataSink;

    move-result-object v10

    const/4 v5, 0x5

    new-array v0, v5, [B

    move-object/from16 v20, v0

    const/4 v5, 0x0

    const/16 v6, -0x5b

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v20, v5

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move v15, v5

    :goto_8b
    move/from16 v0, v21

    if-ge v15, v0, :cond_130

    aget-object v5, p1, v15

    invoke-interface {v5}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    move-wide v12, v8

    move v14, v11

    :goto_99
    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-lez v8, :cond_12a

    const-wide/32 v8, 0x100000

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v9, v8

    const/4 v8, 0x1

    move-object/from16 v0, v20

    invoke-static {v9, v0, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->setUnsignedInt32LittleEndian(I[BI)V

    const/4 v8, 0x0

    :goto_ae
    move/from16 v0, v16

    if-ge v8, v0, :cond_bc

    aget-object v11, v17, v8

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_ae

    :cond_bc
    int-to-long v8, v9

    :try_start_bd
    invoke-interface/range {v5 .. v10}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_112

    const/4 v11, 0x0

    :goto_c1
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_10c

    aget-object v22, v17, v11

    aget-object v23, v18, v11

    aget v24, v19, v11

    mul-int v25, v14, v24

    add-int/lit8 v25, v25, 0x5

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e7

    add-int/lit8 v11, v11, 0x1

    goto :goto_c1

    :cond_e7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected output size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " digest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10c
    add-int/lit8 v11, v14, 0x1

    sub-long/2addr v12, v8

    add-long/2addr v6, v8

    move v14, v11

    goto :goto_99

    :catch_112
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read chunk #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_12a
    add-int/lit8 v5, v15, 0x1

    move v11, v14

    move v15, v5

    goto/16 :goto_8b

    :cond_130
    const/4 v5, 0x0

    :goto_131
    array-length v6, v4

    if-ge v5, v6, :cond_162

    aget-object v6, v4, v5

    aget-object v7, v18, v5

    aget-object v8, v17, v5

    invoke-virtual {v8, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_131

    :cond_146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " chunks"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/security/DigestException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_162
    return-void
.end method

.method public static copyWithModifiedCDOffset(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/util/DataSource;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x0

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-interface {p1, v4, v5, v3, v2}, Lcom/android/apksig/util/DataSource;->copyTo(JILjava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v2, v0, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    invoke-static {v2}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    return-object v0
.end method

.method private static createVerityDigestBuffer(Z)Ljava/nio/ByteBuffer;
    .registers 3

    sget-object v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->getChunkDigestOutputSizeBytes()I

    move-result v0

    if-eqz p0, :cond_a

    add-int/lit8 v0, v0, 0x8

    :cond_a
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static encodeAsLengthPrefixedElement([B)[B
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeAsSequenceOfLengthPrefixedElements(Ljava/util/List;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)[B"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeAsSequenceOfLengthPrefixedElements([[B)[B
    .registers 6

    const/4 v0, 0x0

    array-length v3, p0

    move v1, v0

    move v2, v0

    :goto_4
    if-ge v2, v3, :cond_f

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v2, p0

    :goto_19
    if-ge v0, v2, :cond_27

    aget-object v3, p0, v0

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_27
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "[B>;>;)[B"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    :cond_1e
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v4, v1

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v0, v1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2b

    :cond_58
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeCertificates(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v1
.end method

.method public static encodePublicKey(Ljava/security/PublicKey;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v8, 0x0

    const-string v0, "X.509"

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    const-string v0, "RSA"

    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    :try_start_1d
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-class v1, Lcom/android/apksig/internal/x509/SubjectPublicKeyInfo;

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/x509/SubjectPublicKeyInfo;

    iget-object v1, v0, Lcom/android/apksig/internal/x509/SubjectPublicKeyInfo;->subjectPublicKey:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const-class v4, Lcom/android/apksig/internal/x509/RSAPublicKey;

    invoke-static {v1, v4}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/x509/RSAPublicKey;

    iget-object v4, v1, Lcom/android/apksig/internal/x509/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_109

    iget-object v2, v1, Lcom/android/apksig/internal/x509/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [B
    :try_end_4c
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_1d .. :try_end_4c} :catch_9c
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_1d .. :try_end_4c} :catch_107

    int-to-byte v5, v8

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_55
    array-length v7, v2

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v2, v1, Lcom/android/apksig/internal/x509/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B
    :try_end_69
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_55 .. :try_end_69} :catch_9c
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_55 .. :try_end_69} :catch_107

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_72
    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/apksig/internal/x509/SubjectPublicKeyInfo;->subjectPublicKey:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B
    :try_end_7f
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_72 .. :try_end_7f} :catch_9c
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_72 .. :try_end_7f} :catch_107

    move-result-object v0

    :goto_80
    if-nez v0, :cond_96

    :try_start_82
    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    const-class v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B
    :try_end_95
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_82 .. :try_end_95} :catch_b8

    move-result-object v0

    :cond_96
    if-eqz v0, :cond_e0

    array-length v1, v0

    if-eqz v1, :cond_e0

    return-object v0

    :catch_9c
    move-exception v0

    :goto_9d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught a exception encoding the public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b6
    const/4 v0, 0x0

    goto :goto_80

    :catch_b8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to obtain X.509 encoded form of public key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to obtain X.509 encoded form of public key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_107
    move-exception v0

    goto :goto_9d

    :cond_109
    move-object v0, v2

    goto/16 :goto_80
.end method

.method public static findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/nio/ByteBuffer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;
        }
    .end annotation

    const/16 v6, 0x8

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    invoke-static {p0, v6, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_ad

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v6, :cond_96

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_77

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_77

    long-to-int v2, v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v2, v4, :cond_4c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-ne v4, p1, :cond_47

    add-int/lit8 v0, v2, -0x4

    invoke-static {v1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_47
    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_10

    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK Signing Block entry #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " size out of range: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK Signing Block entry #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " size out of range: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme block in APK Signing Block with ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/apksig/apk/ApkUtils;->findApkSigningBlock(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;->getContents()Lcom/android/apksig/util/DataSource;
    :try_end_b
    .catch Lcom/android/apksig/apk/ApkSigningBlockNotFoundException; {:try_start_0 .. :try_end_b} :catch_32

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    long-to-int v1, v6

    invoke-interface {v0, v4, v5, v1}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/android/apksig/internal/apk/SignatureInfo;

    invoke-static {v1, p2, p3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipEndOfCentralDirectoryOffset()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipEndOfCentralDirectory()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-object v0

    :catch_32
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;

    invoke-virtual {v0}, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static generateApkSigningBlock(Ljava/util/List;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/util/Pair",
            "<[B",
            "Ljava/lang/Integer;",
            ">;>;)[B"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    :cond_1e
    add-int/lit8 v0, v1, 0x8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v0, 0x10

    rem-int/lit16 v0, v3, 0x1000

    if-eqz v0, :cond_8d

    rsub-int v0, v0, 0x1000

    const/16 v1, 0xc

    if-ge v0, v1, :cond_30

    add-int/lit16 v0, v0, 0x1000

    :cond_30
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    add-int/lit8 v2, v0, -0x8

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const v2, 0x42726577

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/2addr v0, v3

    move-object v2, v1

    move v3, v0

    :goto_4c
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-long v0, v3

    const-wide/16 v6, 0x8

    sub-long v6, v0, v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    array-length v5, v0

    int-to-long v8, v5

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_61

    :cond_8d
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_4c

    :cond_90
    if-eqz v2, :cond_95

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_95
    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->APK_SIGNING_BLOCK_MAGIC:[B

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static generateApkSigningBlockPadding(Lcom/android/apksig/util/DataSource;Z)Lcom/android/apksig/internal/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Z)",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v6, 0x1000

    if-eqz p1, :cond_37

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    rem-long/2addr v0, v6

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_37

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    rem-long/2addr v0, v6

    sub-long v0, v6, v0

    long-to-int v1, v0

    new-instance v0, Lcom/android/apksig/internal/util/ChainedDataSource;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/apksig/util/DataSource;

    aput-object p0, v3, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {v0, v3}, Lcom/android/apksig/internal/util/ChainedDataSource;-><init>([Lcom/android/apksig/util/DataSource;)V

    move-object p0, v0

    :goto_2e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    return-object v0

    :cond_37
    move v1, v2

    goto :goto_2e
.end method

.method public static generatePkcs7DerEncodedMessage([BLjava/nio/ByteBuffer;Ljava/util/List;Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;",
            "Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v1, Lcom/android/apksig/internal/pkcs7/SignerInfo;

    invoke-direct {v1}, Lcom/android/apksig/internal/pkcs7/SignerInfo;-><init>()V

    iput v6, v1, Lcom/android/apksig/internal/pkcs7/SignerInfo;->version:I

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    new-instance v2, Lcom/android/apksig/internal/pkcs7/SignerIdentifier;

    new-instance v3, Lcom/android/apksig/internal/pkcs7/IssuerAndSerialNumber;

    new-instance v4, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;-><init>([B)V

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/apksig/internal/pkcs7/IssuerAndSerialNumber;-><init>(Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3}, Lcom/android/apksig/internal/pkcs7/SignerIdentifier;-><init>(Lcom/android/apksig/internal/pkcs7/IssuerAndSerialNumber;)V

    iput-object v2, v1, Lcom/android/apksig/internal/pkcs7/SignerInfo;->sid:Lcom/android/apksig/internal/pkcs7/SignerIdentifier;

    iput-object p3, v1, Lcom/android/apksig/internal/pkcs7/SignerInfo;->digestAlgorithm:Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;

    iput-object p4, v1, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signatureAlgorithm:Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signature:Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/android/apksig/internal/pkcs7/SignedData;

    invoke-direct {v2}, Lcom/android/apksig/internal/pkcs7/SignedData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v2, Lcom/android/apksig/internal/pkcs7/SignedData;->certificates:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iget-object v4, v2, Lcom/android/apksig/internal/pkcs7/SignedData;->certificates:Ljava/util/List;

    new-instance v5, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;-><init>([B)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_65
    iput v6, v2, Lcom/android/apksig/internal/pkcs7/SignedData;->version:I

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/android/apksig/internal/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    new-instance v0, Lcom/android/apksig/internal/pkcs7/EncapsulatedContentInfo;

    const-string v3, "1.2.840.113549.1.7.1"

    invoke-direct {v0, v3}, Lcom/android/apksig/internal/pkcs7/EncapsulatedContentInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, v2, Lcom/android/apksig/internal/pkcs7/SignedData;->encapContentInfo:Lcom/android/apksig/internal/pkcs7/EncapsulatedContentInfo;

    iget-object v0, v2, Lcom/android/apksig/internal/pkcs7/SignedData;->encapContentInfo:Lcom/android/apksig/internal/pkcs7/EncapsulatedContentInfo;

    iput-object p1, v0, Lcom/android/apksig/internal/pkcs7/EncapsulatedContentInfo;->content:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/android/apksig/internal/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    new-instance v0, Lcom/android/apksig/internal/pkcs7/ContentInfo;

    invoke-direct {v0}, Lcom/android/apksig/internal/pkcs7/ContentInfo;-><init>()V

    const-string v1, "1.2.840.113549.1.7.2"

    iput-object v1, v0, Lcom/android/apksig/internal/pkcs7/ContentInfo;->contentType:Ljava/lang/String;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-static {v2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;-><init>([B)V

    iput-object v1, v0, Lcom/android/apksig/internal/pkcs7/ContentInfo;->content:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateSignaturesOverData(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;[B)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            "[B)",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;

    :try_start_3a
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    iget-object v7, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v6, v7}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    if-eqz v2, :cond_48

    invoke-virtual {v6, v2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_48
    invoke-virtual {v6, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v6}, Ljava/security/Signature;->sign()[B
    :try_end_4e
    .catch Ljava/security/InvalidKeyException; {:try_start_3a .. :try_end_4e} :catch_e2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3a .. :try_end_4e} :catch_ca
    .catch Ljava/security/SignatureException; {:try_start_3a .. :try_end_4e} :catch_fb

    move-result-object v6

    :try_start_4f
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v2, :cond_5b

    invoke-virtual {v7, v2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_5b
    invoke-virtual {v7, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v7, v6}, Ljava/security/Signature;->verify([B)Z
    :try_end_61
    .catch Ljava/security/InvalidKeyException; {:try_start_4f .. :try_end_61} :catch_90
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4f .. :try_end_61} :catch_ad
    .catch Ljava/security/SignatureException; {:try_start_4f .. :try_end_61} :catch_fd

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_74
    :try_start_74
    new-instance v0, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify generated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signature using public key from certificate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_90
    .catch Ljava/security/InvalidKeyException; {:try_start_74 .. :try_end_90} :catch_90
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_74 .. :try_end_90} :catch_ad
    .catch Ljava/security/SignatureException; {:try_start_74 .. :try_end_90} :catch_fd

    :catch_90
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify generated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signature using public key from certificate"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_ad
    move-exception v0

    :goto_ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify generated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signature using public key from certificate"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_ca
    move-exception v0

    :goto_cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to sign using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_e2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to sign using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_fa
    return-object v3

    :catch_fb
    move-exception v0

    goto :goto_cb

    :catch_fd
    move-exception v0

    goto :goto_ae
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 6

    if-ltz p1, :cond_30

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int v2, p1, v0

    if-lt v2, v0, :cond_2a

    if-gt v2, v1, :cond_2a

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_25

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v0

    :catchall_25
    move-exception v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    :cond_2a
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getChunkCount(JJ)J
    .registers 8

    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method public static getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_43

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_3b

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_18

    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remaining: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSignaturesToVerify(Ljava/util/List;II)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException;
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const v0, 0x7fffffff

    move v1, v0

    :cond_d
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    iget-object v6, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getMinSdkVersion()I

    move-result v3

    if-gt v3, p2, :cond_d

    if-ge v3, v1, :cond_81

    move v2, v3

    :goto_24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    if-eqz v1, :cond_38

    iget-object v1, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {v6, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(Lcom/android/apksig/internal/apk/SignatureAlgorithm;Lcom/android/apksig/internal/apk/SignatureAlgorithm;)I

    move-result v1

    if-lez v1, :cond_7f

    :cond_38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_d

    :cond_41
    if-lt p1, v1, :cond_60

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda1;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :cond_58
    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException;

    const-string v1, "No supported signature"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum provided signature version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > minSdkVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7f
    move v1, v2

    goto :goto_d

    :cond_81
    move v2, v1

    goto :goto_24
.end method

.method static synthetic lambda$computeOneMbChunkContentDigests$0(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;Ljava/util/List;)Ljava/lang/Runnable;
    .registers 4

    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;Ljava/util/List;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;)V

    return-object v0
.end method

.method static synthetic lambda$getSignaturesToVerify$1(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;)I
    .registers 4

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v0

    iget-object v1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    return v0
.end method

.method public static pickBestDigestForV4(Ljava/util/Map;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)[B"
        }
    .end annotation

    sget-object v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->V4_CONTENT_DIGEST_ALGORITHMS:[Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_18

    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_14
    return-object v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_35

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_12

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Negative length"

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setUnsignedInt32LittleEndian(I[BI)V
    .registers 5

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 8

    const/4 v4, 0x0

    if-ltz p1, :cond_7f

    if-lt p2, p1, :cond_60

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_41

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_36

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0

    :catchall_36
    move-exception v0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end > capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end < start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_25

    aget-byte v3, p0, v0

    aget-byte v4, p0, v0

    sget-object v5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->HEX_DIGITS:[C

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v5, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v4, 0xf

    aget-char v3, v5, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verifyIntegrity(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14e

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/apksig/internal/zip/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    :try_start_27
    new-instance v1, Lcom/android/apksig/internal/util/ByteBufferDataSource;

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p0, p4, p1, p2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeContentDigests(Lcom/android/apksig/util/RunnablesExecutor;Ljava/util/Set;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    const-wide/16 v4, 0x1000

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_e9

    invoke-static {p3}, Lcom/android/apksig/internal/zip/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J
    :try_end_4c
    .catch Ljava/security/DigestException; {:try_start_27 .. :try_end_4c} :catch_e0

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1000

    rem-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_c9

    :cond_58
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_156

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7a
    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    move-result v5

    invoke-static {v5}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v5

    if-eqz v5, :cond_7a

    invoke-virtual {v5}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_124

    iget v7, p5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signatureSchemeVersion:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_104

    sget-object v7, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_APK_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    invoke-static {v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const/4 v5, 0x2

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-virtual {v0, v7, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_7a

    :cond_c9
    :try_start_c9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK Signing Block size is not multiple of page size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e0
    .catch Ljava/security/DigestException; {:try_start_c9 .. :try_end_e0} :catch_e0

    :catch_e0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to compute content digests"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e9
    :try_start_e9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK Signing Block is not aligned on 4k boundary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_104
    .catch Ljava/security/DigestException; {:try_start_e9 .. :try_end_104} :catch_e0

    :cond_104
    iget v7, p5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signatureSchemeVersion:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7a

    sget-object v7, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_APK_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    invoke-static {v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const/4 v5, 0x2

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-virtual {v0, v7, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_7a

    :cond_124
    iget-object v6, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedContentDigests:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7a

    :cond_12b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mismatch between sets of requested and computed content digests . Requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", computed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No content digests found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_156
    return-void
.end method
