.class public Lcom/android/apksig/ApkVerifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkVerifier$Builder;,
        Lcom/android/apksig/ApkVerifier$ByteArray;,
        Lcom/android/apksig/ApkVerifier$Issue;,
        Lcom/android/apksig/ApkVerifier$IssueWithParams;,
        Lcom/android/apksig/ApkVerifier$Result;,
        Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;
    }
.end annotation


# static fields
.field private static final SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TARGET_SANDBOX_VERSION_ATTR_ID:I = 0x101054c


# instance fields
.field private final mApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mApkFile:Ljava/io/File;

.field private final mMaxSdkVersion:I

.field private final mMinSdkVersion:Ljava/lang/Integer;

.field private final mV4SignatureFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/apksig/ApkVerifier;->loadSupportedApkSigSchemeNames()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/apksig/ApkVerifier;->SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Ljava/lang/Integer;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    iput-object p2, p0, Lcom/android/apksig/ApkVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    iput-object p3, p0, Lcom/android/apksig/ApkVerifier;->mV4SignatureFile:Ljava/io/File;

    iput-object p4, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    iput p5, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Ljava/lang/Integer;ILcom/android/apksig/ApkVerifier$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/apksig/ApkVerifier;-><init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Ljava/lang/Integer;I)V

    return-void
.end method

.method private static checkV4Certificate(Ljava/util/List;Ljava/util/List;Lcom/android/apksig/ApkVerifier$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lcom/android/apksig/ApkVerifier$Result;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_24} :catch_25

    :cond_24
    return-void

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to encode APK signer cert"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static collectApkContentDigests(Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    move-result v2

    invoke-static {v2}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_26
    return-void
.end method

.method private static getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v2, 0x0

    :try_start_6
    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v4

    invoke-interface {p0, v2, v3, v4, v5}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/apksig/ApkSigner;->getAndroidManifestFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;
    :try_end_11
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_6 .. :try_end_11} :catch_13

    move-result-object v0

    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    const-string v2, "Failed to read AndroidManifest.xml"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    iget-object v0, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/apksig/ApkVerifier;->collectApkContentDigests(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_b

    :cond_1d
    return-object v1
.end method

.method private static getTargetSandboxVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v1, 0x1

    :try_start_2
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;

    invoke-direct {v2, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getEventType()I

    move-result v0

    :goto_b
    if-eq v0, v5, :cond_60

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5b

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getDepth()I

    move-result v0

    if-ne v0, v1, :cond_5b

    const-string v0, "manifest"

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_68

    invoke-virtual {v2, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeNameResourceId(I)I

    move-result v3

    const v4, 0x101054c

    if-ne v3, v4, :cond_58

    invoke-virtual {v2, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeValueType(I)I

    move-result v1

    if-ne v1, v5, :cond_47

    invoke-virtual {v2, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeIntValue(I)I

    move-result v0

    :goto_46
    return v0

    :cond_47
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Failed to determine APK\'s target sandbox version: unsupported value type of AndroidManifest.xml android:targetSandboxVersion. Only integer values supported."

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4f
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_2 .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v0

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    const-string v2, "Failed to determine APK\'s target sandbox version: malformed AndroidManifest.xml"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_5b
    :try_start_5b
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->next()I

    move-result v0

    goto :goto_b

    :cond_60
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Failed to determine APK\'s target sandbox version : no manifest element in AndroidManifest.xml"

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_68
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_5b .. :try_end_68} :catch_4f

    :cond_68
    move v0, v1

    goto :goto_46
.end method

.method private static loadSupportedApkSigSchemeNames()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APK Signature Scheme v2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APK Signature Scheme v3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static pickBestDigestForV4(Ljava/util/List;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;",
            ">;)[B"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/android/apksig/ApkVerifier;->collectApkContentDigests(Ljava/util/List;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->pickBestDigestForV4(Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method private verify(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkVerifier$Result;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_ad

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    if-gt v2, v3, :cond_81

    :cond_1c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    :try_start_20
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;
    :try_end_23
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_20 .. :try_end_23} :catch_579

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v2, 0x0

    move-object v15, v2

    move/from16 v16, v3

    :goto_32
    new-instance v17, Lcom/android/apksig/ApkVerifier$Result;

    invoke-direct/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x1c

    if-lt v8, v2, :cond_e1

    sget-object v5, Lcom/android/apksig/ApkVerifier;->SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;

    :goto_42
    new-instance v6, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    const/16 v2, 0x18

    if-lt v8, v2, :cond_1ac

    sget-object v2, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    const/16 v3, 0x1c

    if-lt v8, v3, :cond_106

    const/16 v3, 0x1c

    :try_start_54
    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v2, v0, v4, v3, v8}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v3

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-static {v3}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_7a
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_54 .. :try_end_7a} :catch_58e

    :cond_7a
    :goto_7a
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v3

    if-eqz v3, :cond_106

    :cond_80
    :goto_80
    return-object v17

    :cond_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minSdkVersion ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") > maxSdkVersion ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_ad
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minSdkVersion must not be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c8
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/apksig/ApkVerifier;->getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/apksig/apk/ApkUtils;->getMinSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    if-gt v3, v5, :cond_551

    move-object v15, v2

    move/from16 v16, v3

    goto/16 :goto_32

    :cond_e1
    const/16 v2, 0x18

    if-lt v8, v2, :cond_100

    new-instance v5, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/apksig/ApkVerifier;->SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    :cond_100
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    goto/16 :goto_42

    :cond_106
    const/16 v3, 0x1c

    move/from16 v0, v16

    if-lt v0, v3, :cond_112

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_140

    :cond_112
    const/16 v3, 0x18

    :try_start_114
    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
    :try_end_119
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_114 .. :try_end_119} :catch_582

    move-result v7

    move-object/from16 v3, p1

    :try_start_11c
    invoke-static/range {v2 .. v8}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Map;Ljava/util/Set;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    :try_end_11f
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_11c .. :try_end_11f} :catch_585

    move-result-object v2

    const/4 v3, 0x2

    :try_start_121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13a

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;
    :try_end_136
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_121 .. :try_end_136} :catch_58b

    move-result-object v2

    :try_start_137
    invoke-interface {v12, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_13a
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_137 .. :try_end_13a} :catch_588

    :cond_13a
    :goto_13a
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-nez v2, :cond_80

    :cond_140
    const/16 v2, 0x1e

    if-lt v8, v2, :cond_18d

    :try_start_144
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_264

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    const-string v7, "stamp-cert-sha256"

    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14e

    :goto_166
    if-eqz v2, :cond_187

    invoke-virtual {v4}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v10

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10, v11}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v11

    const/16 v2, 0x1e

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v9, p1

    move-object v10, v4

    move v14, v8

    invoke-static/range {v9 .. v14}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;[BLjava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    :try_end_187
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_144 .. :try_end_187} :catch_270
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_144 .. :try_end_187} :catch_267

    :cond_187
    :goto_187
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-nez v2, :cond_80

    :cond_18d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/ApkVerifier;->mV4SignatureFile:Ljava/io/File;

    if-eqz v2, :cond_1ac

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->verify(Lcom/android/apksig/util/DataSource;Ljava/io/File;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-nez v2, :cond_80

    :cond_1ac
    const/16 v2, 0x1a

    if-lt v8, v2, :cond_1da

    if-nez v15, :cond_1b8

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/apksig/ApkVerifier;->getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object v15

    :cond_1b8
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier;->getTargetSandboxVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1da

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1da

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->NO_SIG_FOR_TARGET_SANDBOX_VERSION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_1da
    const/16 v2, 0x18

    move/from16 v0, v16

    if-lt v0, v2, :cond_1e6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f3

    :cond_1e6
    move-object/from16 v3, p1

    move/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Map;Ljava/util/Set;II)Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$100(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V

    :cond_1f3
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-nez v2, :cond_80

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v2

    if-eqz v2, :cond_304

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v2

    if-eqz v2, :cond_304

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_225
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    :try_start_231
    new-instance v8, Lcom/android/apksig/ApkVerifier$ByteArray;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/apksig/ApkVerifier$ByteArray;-><init>([BLcom/android/apksig/ApkVerifier$1;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_242
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_231 .. :try_end_242} :catch_243

    goto :goto_225

    :catch_243
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to encode JAR signer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " certs"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_264
    const/4 v2, 0x0

    goto/16 :goto_166

    :catch_267
    move-exception v2

    new-instance v3, Lcom/android/apksig/apk/ApkFormatException;

    const-string v4, "Failed to read APK"

    invoke-direct {v3, v4, v2}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_270
    move-exception v2

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/apksig/ApkVerifier$Result;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_187

    :cond_27d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_281
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    :try_start_28d
    new-instance v8, Lcom/android/apksig/ApkVerifier$ByteArray;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/apksig/ApkVerifier$ByteArray;-><init>([BLcom/android/apksig/ApkVerifier$1;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_28d .. :try_end_29e} :catch_29f

    goto :goto_281

    :catch_29f
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to encode APK Signature Scheme v2 signer (index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getIndex()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") certs"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2c0
    const/4 v2, 0x0

    move v3, v2

    :goto_2c2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2e2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$ByteArray;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_449

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->access$300(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_2e2
    const/4 v2, 0x0

    move v3, v2

    :goto_2e4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_304

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$ByteArray;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44e

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$400(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_304
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v2

    if-eqz v2, :cond_388

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v2

    if-nez v2, :cond_316

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v2

    if-eqz v2, :cond_388

    :cond_316
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getSigningCertificateLineage()Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v2

    if-eqz v2, :cond_453

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_335

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_PAST_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_335
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->access$500(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    :goto_340
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_47e

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35e

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_35e
    :try_start_35e
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->access$700(Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_388

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_388
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_35e .. :try_end_388} :catch_475

    :cond_388
    :goto_388
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV4Scheme()Z

    move-result v2

    if-eqz v2, :cond_41f

    invoke-static/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->access$800(Lcom/android/apksig/ApkVerifier$Result;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3a3

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_3a3
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->getContentDigests()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3bf

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_3bf
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v2

    if-eqz v2, :cond_4a2

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_3e5

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_3e5
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->access$900(Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->access$700(Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v3, v2, v0}, Lcom/android/apksig/ApkVerifier;->checkV4Certificate(Ljava/util/List;Ljava/util/List;Lcom/android/apksig/ApkVerifier$Result;)V

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getContentDigests()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier;->pickBestDigestForV4(Ljava/util/List;)[B

    move-result-object v2

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_41f

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_41f
    :goto_41f
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-nez v2, :cond_80

    invoke-static/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->access$1000(Lcom/android/apksig/ApkVerifier$Result;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v2

    if-eqz v2, :cond_501

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto/16 :goto_80

    :cond_449
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2c2

    :cond_44e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2e4

    :cond_453
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_468

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_PAST_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_468
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$600(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_340

    :catch_475
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to encode APK Signature Scheme v3 signer cert"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_47e
    :try_start_47e
    invoke-virtual {v3, v2}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_388

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_493
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47e .. :try_end_493} :catch_495

    goto/16 :goto_388

    :catch_495
    move-exception v2

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_388

    :cond_4a2
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v2

    if-eqz v2, :cond_4f9

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4bd

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_4bd
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->access$900(Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$600(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v3, v2, v0}, Lcom/android/apksig/ApkVerifier;->checkV4Certificate(Ljava/util/List;Ljava/util/List;Lcom/android/apksig/ApkVerifier$Result;)V

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getContentDigests()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier;->pickBestDigestForV4(Ljava/util/List;)[B

    move-result-object v2

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_41f

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_41f

    :cond_4f9
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "V4 signature must be also verified with V2/V3"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_501
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v2

    if-eqz v2, :cond_525

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_50f

    :cond_525
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v2

    if-eqz v2, :cond_549

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_533
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_533

    :cond_549
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "APK verified, but has not verified using any of v1, v2 or v3 schemes"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minSdkVersion from APK ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") > maxSdkVersion ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_579
    move-exception v2

    new-instance v3, Lcom/android/apksig/apk/ApkFormatException;

    const-string v4, "Malformed APK: not a ZIP archive"

    invoke-direct {v3, v4, v2}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_582
    move-exception v2

    goto/16 :goto_13a

    :catch_585
    move-exception v2

    goto/16 :goto_13a

    :catch_588
    move-exception v2

    goto/16 :goto_13a

    :catch_58b
    move-exception v2

    goto/16 :goto_13a

    :catch_58e
    move-exception v3

    goto/16 :goto_7a
.end method


# virtual methods
.method public verify()Lcom/android/apksig/ApkVerifier$Result;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    if-eqz v0, :cond_f

    :goto_5
    invoke-direct {p0, v0}, Lcom/android/apksig/ApkVerifier;->verify(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkVerifier$Result;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_30

    move-result-object v0

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_e
    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    if-eqz v0, :cond_28

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_30

    const-wide/16 v0, 0x0

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v2, v0, v1, v4, v5}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;JJ)Lcom/android/apksig/util/DataSource;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_38

    move-result-object v0

    move-object v1, v2

    goto :goto_5

    :cond_28
    :try_start_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "APK not provided"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    move-object v2, v1

    :goto_32
    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    :cond_37
    throw v0

    :catchall_38
    move-exception v0

    goto :goto_32
.end method
