.class public Lcom/android/apksig/SigningCertificateLineage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/SigningCertificateLineage$Builder;,
        Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;,
        Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;,
        Lcom/android/apksig/SigningCertificateLineage$SignerConfig;,
        Lcom/android/apksig/SigningCertificateLineage$SignerConfig$Builder;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static final FIRST_VERSION:I = 0x1

.field public static final MAGIC:I = 0x3eff39d1

.field private static final PAST_CERT_AUTH:I = 0x10

.field private static final PAST_CERT_INSTALLED_DATA:I = 0x1

.field private static final PAST_CERT_PERMISSION:I = 0x4

.field private static final PAST_CERT_ROLLBACK:I = 0x8

.field private static final PAST_CERT_SHARED_USER_ID:I = 0x2


# instance fields
.field private final mMinSdkVersion:I

.field private final mSigningLineage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/SigningCertificateLineage;->mMinSdkVersion:I

    iput-object p2, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    invoke-static {}, Lcom/android/apksig/SigningCertificateLineage;->calculateDefaultFlags()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(ILcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/apksig/SigningCertificateLineage;->createSigningLineage(ILcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    return-object v0
.end method

.method private static calculateDefaultFlags()I
    .registers 1

    const/16 v0, 0x17

    return v0
.end method

.method private static calculateMinSdkVersion(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_23

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0x1c

    move v1, v0

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    iget-object v3, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->sigAlgorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    if-eqz v3, :cond_9

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->sigAlgorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getMinSdkVersion()I

    move-result v0

    if-le v0, v1, :cond_9

    move v1, v0

    goto :goto_9

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t calculate minimum SDK version of null nodes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    return v1
.end method

.method public static consolidateLineages(Ljava/util/List;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/SigningCertificateLineage;",
            ">;)",
            "Lcom/android/apksig/SigningCertificateLineage;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    move v1, v2

    move v3, v2

    move v4, v2

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_25

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/SigningCertificateLineage;

    invoke-virtual {v0}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v0

    if-le v0, v1, :cond_5f

    move v3, v4

    :goto_21
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_e

    :cond_25
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/SigningCertificateLineage;

    iget-object v4, v0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    move v1, v2

    :goto_2e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_58

    if-ne v1, v3, :cond_3a

    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    :cond_3a
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/SigningCertificateLineage;

    iget-object v0, v0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inconsistent SigningCertificateLineages. Not all lineages are subsets of each other."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/SigningCertificateLineage;

    goto :goto_a

    :cond_5f
    move v0, v1

    goto :goto_21
.end method

.method private static createSigningLineage(ILcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    new-instance v0, Lcom/android/apksig/SigningCertificateLineage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/apksig/SigningCertificateLineage;-><init>(ILjava/util/List;)V

    invoke-direct {v0, p1, p2}, Lcom/android/apksig/SigningCertificateLineage;->spawnFirstDescendant(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/apksig/SigningCertificateLineage;->spawnDescendant(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    return-object v0
.end method

.method private getSignatureAlgorithm(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;)Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget v1, p0, Lcom/android/apksig/SigningCertificateLineage;->mMinSdkVersion:I

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    return-object v0
.end method

.method private static read(Ljava/nio/ByteBuffer;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_25

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v1, 0x3eff39d1

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/apksig/SigningCertificateLineage;->read(Ljava/nio/ByteBuffer;I)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Improper SigningCertificateLineage format: MAGIC header mismatch."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Improper SigningCertificateLineage format: insufficient data for header."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static read(Ljava/nio/ByteBuffer;I)Lcom/android/apksig/SigningCertificateLineage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    :try_start_3
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage;->readSigningCertificateLineage(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/apksig/SigningCertificateLineage;

    invoke-static {v0}, Lcom/android/apksig/SigningCertificateLineage;->calculateMinSdkVersion(Ljava/util/List;)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/SigningCertificateLineage;-><init>(ILjava/util/List;)V
    :try_end_14
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_3 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read list of signing certificate nodes in SigningCertificateLineage"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Improper SigningCertificateLineage format: unrecognized version."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readFromApkDataSource(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    const/4 v3, 0x1

    :try_start_1
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v0

    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v2, -0xfac9740

    invoke-static {p0, v0, v2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;
    :try_end_11
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_1 .. :try_end_11} :catch_5f
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_1 .. :try_end_11} :catch_56

    move-result-object v0

    iget-object v0, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    :try_start_2b
    invoke-static {v2}, Lcom/android/apksig/SigningCertificateLineage;->readFromSignedData(Ljava/nio/ByteBuffer;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_1d

    :catch_33
    move-exception v2

    goto :goto_1d

    :cond_35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_46

    invoke-static {v1}, Lcom/android/apksig/SigningCertificateLineage;->consolidateLineages(Ljava/util/List;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    :goto_45
    return-object v0

    :cond_46
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/SigningCertificateLineage;

    goto :goto_45

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided APK does not contain a valid lineage."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_56
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided APK does not contain a valid V3 signature block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5f
    move-exception v0

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v0}, Lcom/android/apksig/zip/ZipFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readFromApkFile(Ljava/io/File;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/SigningCertificateLineage;->readFromApkDataSource(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/SigningCertificateLineage;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_19

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    throw v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    :goto_1f
    throw v0

    :catchall_20
    move-exception v1

    goto :goto_1f
.end method

.method public static readFromDataSource(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_17

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {p0, v0, v1, v2}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/apksig/SigningCertificateLineage;->read(Ljava/nio/ByteBuffer;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dataSource == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readFromFile(Ljava/io/File;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_12

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/SigningCertificateLineage;->readFromDataSource(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readFromSignedData(Ljava/nio/ByteBuffer;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_16
    :goto_16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const v4, 0x3ba06f8c

    if-ne v3, v4, :cond_16

    invoke-static {v2}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/apksig/SigningCertificateLineage;->readFromV3AttributeValue([B)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_46

    invoke-static {v1}, Lcom/android/apksig/SigningCertificateLineage;->consolidateLineages(Ljava/util/List;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    :goto_45
    return-object v0

    :cond_46
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/SigningCertificateLineage;

    goto :goto_45

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The signed data does not contain a valid lineage."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readFromV3AttributeValue([B)Lcom/android/apksig/SigningCertificateLineage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage;->readSigningCertificateLineage(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/apksig/SigningCertificateLineage;

    invoke-static {v0}, Lcom/android/apksig/SigningCertificateLineage;->calculateMinSdkVersion(Ljava/util/List;)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/SigningCertificateLineage;-><init>(ILjava/util/List;)V

    return-object v1
.end method

.method private spawnFirstDescendant(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/apksig/SigningCertificateLineage;->getSignatureAlgorithm(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;)Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    :try_end_c
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_c} :catch_29

    invoke-virtual {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-static {p2}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->access$000(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)I

    move-result v5

    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    const/4 v3, 0x0

    new-array v4, v3, [B

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;-><init>(Ljava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/SignatureAlgorithm;Lcom/android/apksig/internal/apk/SignatureAlgorithm;[BI)V

    new-instance v1, Lcom/android/apksig/SigningCertificateLineage;

    iget v2, p0, Lcom/android/apksig/SigningCertificateLineage;->mMinSdkVersion:I

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/SigningCertificateLineage;-><init>(ILjava/util/List;)V

    return-object v1

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Algorithm associated with first signing certificate invalid on desired platform versions"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SigningCertificateLineage already has its first node"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private write()Ljava/nio/ByteBuffer;
    .registers 4

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage;->encodeSigningCertificateLineage(Ljava/util/List;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v2, 0x3eff39d1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public generateV3SignerAttribute()[B
    .registers 4

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage;->encodeSigningCertificateLineage(Ljava/util/List;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v2, 0x3ba06f8c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getCertificatesInLineage()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_20
    return-object v2
.end method

.method public getSignerCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/apksig/SigningCertificateLineage;->getSignerCapabilities(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignerCapabilities(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;
    .registers 5

    if-eqz p1, :cond_4c

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    iget-object v2, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v1, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    iget v0, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->flags:I

    invoke-direct {v1, v0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;-><init>(I)V

    invoke-virtual {v1}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v0

    return-object v0

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not found in the SigningCertificateLineage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 8

    const/4 v2, 0x0

    if-eqz p1, :cond_3d

    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_35

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lcom/android/apksig/SigningCertificateLineage;

    iget v3, p0, Lcom/android/apksig/SigningCertificateLineage;->mMinSdkVersion:I

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v5, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v3, v4}, Lcom/android/apksig/SigningCertificateLineage;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate not found in SigningCertificateLineage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "x509Certificate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCertificateInLineage(Ljava/security/cert/X509Certificate;)Z
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_22

    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v2, 0x1

    :cond_1d
    return v2

    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSignerInLineage(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;)Z
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/apksig/SigningCertificateLineage;->isCertificateInLineage(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public sortSignerConfigs(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_58

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    :goto_d
    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    move v4, v3

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3d

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    iget-object v1, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    iget-object v1, v1, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_41
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_16

    :cond_45
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_50

    return-object v5

    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SignerConfigs supplied which are not present in the SigningCertificateLineage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "signerConfigs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spawnDescendant(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerConfig;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    new-instance v0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    invoke-direct {v0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/apksig/SigningCertificateLineage;->spawnDescendant(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can\'t add new descendant to lineage with null inputs"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spawnDescendant(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_de

    if-eqz p2, :cond_d6

    if-eqz p3, :cond_ce

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    iget-object v1, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-direct {p0, p1}, Lcom/android/apksig/SigningCertificateLineage;->getSignatureAlgorithm(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage;->encodeSignedData(Ljava/security/cert/X509Certificate;I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    invoke-direct {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;-><init>()V

    invoke-virtual {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v5

    iput-object v5, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->privateKey:Ljava/security/PrivateKey;

    iput-object v3, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-static {v4, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateSignaturesOverData(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;[B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v2, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->sigAlgorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    invoke-virtual {p2}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->access$000(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;-><init>(Ljava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/SignatureAlgorithm;Lcom/android/apksig/internal/apk/SignatureAlgorithm;[BI)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/apksig/SigningCertificateLineage;

    iget v2, p0, Lcom/android/apksig/SigningCertificateLineage;->mMinSdkVersion:I

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/SigningCertificateLineage;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SignerConfig Certificate containing private key to sign the new SigningCertificateLineage record does not match the existing most recent record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot spawn descendant signing certificate on an empty SigningCertificateLineage: no parent node"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ce
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "childCapabilities == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "child == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_de
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSignerCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerConfig;Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)V
    .registers 7

    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerConfig;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    iget-object v0, p0, Lcom/android/apksig/SigningCertificateLineage;->mSigningLineage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    iget-object v3, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    new-instance v1, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    iget v2, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->flags:I

    invoke-direct {v1, v2}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->setCallerConfiguredCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->build()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->access$000(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)I

    move-result v1

    iput v1, v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->flags:I

    return-void

    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not found in the SigningCertificateLineage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToDataSink(Lcom/android/apksig/util/DataSink;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/android/apksig/SigningCertificateLineage;->write()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dataSink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToFile(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_12

    new-instance v0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, v0}, Lcom/android/apksig/SigningCertificateLineage;->writeToDataSink(Lcom/android/apksig/util/DataSink;)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
