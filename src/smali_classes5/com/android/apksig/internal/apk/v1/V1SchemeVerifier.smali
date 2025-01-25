.class public abstract Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;,
        Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$ObjectIdentifierChoice;,
        Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$OctetStringChoice;,
        Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;,
        Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;,
        Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;,
        Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;,
        Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signers;
    }
.end annotation


# static fields
.field private static final JB_MR2_AND_NEWER_DIGEST_ALGS:[Ljava/lang/String;

.field private static final MANIFEST_ENTRY_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field private static final MIN_SDK_VESION_FROM_WHICH_DIGEST_SUPPORTED_IN_MANIFEST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPPER_CASE_JCA_DIGEST_ALG_TO_CANONICAL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SHA-512"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "SHA-384"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHA-256"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SHA-1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->JB_MR2_AND_NEWER_DIGEST_ALGS:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->UPPER_CASE_JCA_DIGEST_ALG_TO_CANONICAL:Ljava/util/Map;

    const-string v1, "MD5"

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA"

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA1"

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-1"

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-256"

    const-string v2, "SHA-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-384"

    const-string v2, "SHA-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512"

    const-string v2, "SHA-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->MIN_SDK_VESION_FROM_WHICH_DIGEST_SUPPORTED_IN_MANIFEST:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MD5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA-384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->digest(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;[BII)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->digest(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/apksig/util/DataSource;JLjava/util/Collection;Ljava/util/Map;Ljava/util/List;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static/range {p0 .. p8}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->verifyJarEntriesAgainstManifestAndSigners(Lcom/android/apksig/util/DataSource;JLjava/util/Collection;Ljava/util/Map;Ljava/util/List;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static checkForDuplicateEntries(Ljava/util/List;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move-object v1, v0

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-nez v1, :cond_40

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_2c
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DUPLICATE_ZIP_ENTRY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {p1, v1, v5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_f

    :cond_3f
    return-object v2

    :cond_40
    move-object v0, v1

    goto :goto_2c

    :cond_42
    move-object v1, v0

    goto :goto_f
.end method

.method private static digest(Ljava/lang/String;[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static digest(Ljava/lang/String;[BII)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method private static getCanonicalJcaMessageDigestAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->UPPER_CASE_JCA_DIGEST_ALG_TO_CANONICAL:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getDigest(Ljava/util/Collection;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object v2, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;",
            ">;"
        }
    .end annotation

    const/16 v6, 0x12

    const/4 v7, 0x0

    invoke-static {}, Ljava2/util/Base64;->getDecoder()Ljava2/util/Base64$Decoder;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-ge p2, v6, :cond_5c

    const-string v0, "Digest-Algorithms"

    invoke-virtual {p0, v0}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "SHA SHA1"

    :cond_19
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getCanonicalJcaMessageDigestAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getMinSdkVersionFromWhichSupportedInManifestOrSignatureFile(Ljava/lang/String;)I

    move-result v5

    if-gt v5, p2, :cond_1e

    new-instance v3, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    invoke-virtual {v1, v4}, Ljava2/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4, v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;-><init>(Ljava/lang/String;[BLcom/android/apksig/internal/apk/v1/V1SchemeVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_5b
    :goto_5b
    return-object v2

    :cond_5c
    if-lt p3, v6, :cond_5b

    sget-object v3, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->JB_MR2_AND_NEWER_DIGEST_ALGS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_62
    if-ge v0, v4, :cond_5b

    aget-object v5, v3, v0

    invoke-static {v5, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getJarDigestAttributeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_73

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_73
    invoke-virtual {v1, v6}, Ljava2/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, v5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigest(Ljava/util/Collection;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_83

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5b

    :cond_83
    new-instance v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    invoke-direct {v1, v5, v0, v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;-><init>(Ljava/lang/String;[BLcom/android/apksig/internal/apk/v1/V1SchemeVerifier$1;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b
.end method

.method private static getJarDigestAttributeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "SHA-1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method private static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static getMinSdkVersionFromWhichSupportedInManifestOrSignatureFile(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->MIN_SDK_VESION_FROM_WHICH_DIGEST_SUPPORTED_IN_MANIFEST:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const v0, 0x7fffffff

    goto :goto_14
.end method

.method private static getSignerNames(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2c
    move-object v0, v1

    goto :goto_a
.end method

.method private static isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "META-INF/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static parseManifest([BLjava/util/Set;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Lcom/android/apksig/internal/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;",
            ")",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            ">;>;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/apksig/internal/jar/ManifestParser;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/jar/ManifestParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/apksig/internal/jar/ManifestParser;->readSection()Lcom/android/apksig/internal/jar/ManifestParser$Section;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/apksig/internal/jar/ManifestParser;->readAllSections()Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_1d
    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3f

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNNNAMED_MANIFEST_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p2, v0, v6}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_3f
    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DUPLICATE_MANIFEST_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-static {p2, v0, v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_4f
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_ZIP_ENTRY_REFERENCED_IN_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-static {p2, v0, v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_5f
    invoke-static {v3, v4}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectorySizeBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_64

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v2

    long-to-int v0, v0

    invoke-interface {p0, v2, v3, v0}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryRecordCount()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v4, :cond_7b

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    :try_start_29
    invoke-static {v1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getRecord(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    :try_end_2c
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_29 .. :try_end_2c} :catch_40

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_3c
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :catch_40
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed ZIP Central Directory record #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at file offset "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v6, v6

    add-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZIP Central Directory too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    return-object v5
.end method

.method public static verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Map;Ljava/util/Set;II)Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move/from16 v0, p4

    move/from16 v1, p5

    if-gt v0, v1, :cond_2a

    new-instance v12, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;

    invoke-direct {v12}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;-><init>()V

    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->checkForDuplicateEntries(Ljava/util/List;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v12}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$000(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :goto_19
    return-object v12

    :cond_1a
    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v4

    move-object v3, p0

    move-object v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v3 .. v12}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signers;->access$100(Lcom/android/apksig/util/DataSource;JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V

    goto :goto_19

    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minSdkVersion ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") > maxSdkVersion ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static verifyJarEntriesAgainstManifestAndSigners(Lcom/android/apksig/util/DataSource;JLjava/util/Collection;Ljava/util/Map;Ljava/util/List;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Ljava/util/Set;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;",
            ">;II",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v6, v2

    move-object v7, v3

    :cond_14
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_177

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    if-nez v3, :cond_42

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_42
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4f
    :goto_4f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getSigFileEntryNames()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4f

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_69
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7d

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_ZIP_ENTRY_NOT_SIGNED:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_7d
    if-nez v7, :cond_a9

    move-object v6, v8

    move-object v4, v9

    :goto_81
    new-instance v9, Ljava/util/ArrayList;

    const-string v7, "-Digest"

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v3, v7, v0, v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_cf

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v3, v7

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    move-object v2, v5

    move-object v3, v4

    :goto_a5
    move-object v7, v3

    move-object v5, v2

    goto/16 :goto_14

    :cond_a9
    invoke-interface {v9, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18e

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_ZIP_ENTRY_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getSignerNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v8, v3, v4

    const/4 v4, 0x3

    invoke-static {v9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getSignerNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    aput-object v8, v3, v4

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_cf
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v10, v3, [Ljava/security/MessageDigest;

    const/4 v3, 0x0

    move v7, v3

    :goto_d7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_ef

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object v3, v3, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    aput-object v3, v10, v7

    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_d7

    :cond_ef
    :try_start_ef
    invoke-static {v10}, Lcom/android/apksig/util/DataSinks;->asDataSink([Ljava/security/MessageDigest;)Lcom/android/apksig/util/DataSink;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-static {p0, v2, v0, v1, v3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;JLcom/android/apksig/util/DataSink;)V
    :try_end_f8
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_ef .. :try_end_f8} :catch_15f
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f8} :catch_147

    const/4 v2, 0x0

    move v3, v2

    :goto_fa
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_191

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    aget-object v7, v10, v3

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    iget-object v11, v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-static {v11, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-nez v11, :cond_143

    sget-object v11, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_ZIP_ENTRY_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    iget-object v14, v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "META-INF/MANIFEST.MF"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {}, Ljava2/util/Base64;->getEncoder()Ljava2/util/Base64$Encoder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava2/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v13

    const/4 v7, 0x4

    invoke-static {}, Ljava2/util/Base64;->getEncoder()Ljava2/util/Base64$Encoder;

    move-result-object v13

    iget-object v2, v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-virtual {v13, v2}, Ljava2/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v7

    move-object/from16 v0, p8

    invoke-static {v0, v11, v12}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_143
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_fa

    :catch_147
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_15f
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed ZIP entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_177
    if-nez v7, :cond_188

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNED_ZIP_ENTRIES:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    :goto_187
    return-object v2

    :cond_188
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_187

    :cond_18e
    move-object v4, v7

    goto/16 :goto_81

    :cond_191
    move-object v2, v5

    move-object v3, v4

    goto/16 :goto_a5
.end method
