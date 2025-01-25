.class Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Signer"
.end annotation


# instance fields
.field private mIgnored:Z

.field private final mName:Ljava/lang/String;

.field private final mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

.field private mSigFileBytes:[B

.field private mSigFileEntryNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

.field private final mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    iput-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    iput-object p3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;-><init>(Ljava/lang/String;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)V

    return-void
.end method

.method private checkForStrippedApkSignatures(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/util/Map;Ljava/util/Set;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v0, "X-Android-APK-Signed"

    invoke-virtual {p1, v0}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_APK_SIG_STRIP_PROTECTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$900(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_22
    return-void

    :cond_23
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    :goto_39
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    :try_start_4d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_be

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_63
    iget-object v4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNKNOWN_APK_SIG_SCHEME_ID:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v7}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$900(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_39

    :cond_7b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7f
    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_APK_SIG_REFERENCED:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    aput-object v0, v5, v10

    invoke-static {v3, v4, v5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_7f

    :catch_be
    move-exception v0

    goto/16 :goto_39
.end method

.method public static getCertificateChain(Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    move v1, v2

    :goto_25
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    move-object p1, v0

    :goto_43
    if-nez v1, :cond_12

    :cond_45
    return-object v5

    :cond_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_4a
    move v1, v2

    goto :goto_43
.end method

.method private verifyManifestDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;Z[BII)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_24

    const-string v0, "-Digest"

    :goto_6
    invoke-static {p1, v0, p4, p5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_27

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_MANIFEST_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$900(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :goto_23
    return v3

    :cond_24
    const-string v0, "-Digest-Manifest"

    goto :goto_6

    :cond_27
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object v5, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    invoke-static {v5, p3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->access$1000(Ljava/lang/String;[B)[B

    move-result-object v6

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_2c

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v7, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_ZIP_ENTRY_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "META-INF/MANIFEST.MF"

    aput-object v9, v8, v3

    aput-object v5, v8, v2

    const/4 v5, 0x2

    iget-object v9, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v9}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x3

    invoke-static {}, Ljava2/util/Base64;->getEncoder()Ljava2/util/Base64$Encoder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava2/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const/4 v5, 0x4

    invoke-static {}, Ljava2/util/Base64;->getEncoder()Ljava2/util/Base64$Encoder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava2/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v5

    invoke-static {v1, v7, v8}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$900(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    move v1, v3

    goto :goto_2c

    :cond_77
    move v3, v1

    goto :goto_23
.end method

.method private verifyManifestIndividualSectionDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;ZLcom/android/apksig/internal/jar/ManifestParser$Section;[BII)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v2, "-Digest"

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {p1, v2, v0, v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v3, v5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_2a
    return-void

    :cond_2b
    invoke-virtual/range {p3 .. p3}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getStartOffset()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getSizeBytes()I

    move-result v2

    if-eqz p2, :cond_9a

    add-int v3, v6, v2

    add-int/lit8 v7, v3, -0x1

    aget-byte v7, p4, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_9a

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p4, v3

    const/16 v7, 0xa

    if-ne v3, v7, :cond_9a

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_4a
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4e
    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object v7, v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v7, v0, v6, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->access$1100(Ljava/lang/String;[BII)[B

    move-result-object v8

    iget-object v2, v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-static {v2, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_4e

    iget-object v9, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v10, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MANIFEST_SECTION_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v7, 0x2

    iget-object v12, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v12}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    const/4 v7, 0x3

    invoke-static {}, Ljava2/util/Base64;->getEncoder()Ljava2/util/Base64$Encoder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava2/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    const/4 v7, 0x4

    invoke-static {}, Ljava2/util/Base64;->getEncoder()Ljava2/util/Base64$Encoder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava2/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v7

    invoke-static {v9, v10, v11}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_4e

    :cond_9a
    move v3, v2

    goto :goto_4a
.end method

.method private verifyManifestMainSectionDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;Lcom/android/apksig/internal/jar/ManifestParser$Section;[BII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "-Digest-Manifest-Main-Attributes"

    invoke-static {p1, v0, p4, p5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object v2, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getStartOffset()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getSizeBytes()I

    move-result v4

    invoke-static {v2, p3, v3, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->access$1100(Ljava/lang/String;[BII)[B

    move-result-object v3

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MANIFEST_MAIN_SECTION_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v7}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    invoke-static {}, Ljava2/util/Base64;->getEncoder()Ljava2/util/Base64$Encoder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava2/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava2/util/Base64;->getEncoder()Ljava2/util/Base64$Encoder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava2/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method private verifySignerInfoAgainstSigFile(Lcom/android/apksig/internal/pkcs7/SignedData;Ljava/util/Collection;Lcom/android/apksig/internal/pkcs7/SignerInfo;[BII)Ljava/security/cert/X509Certificate;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/pkcs7/SignedData;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lcom/android/apksig/internal/pkcs7/SignerInfo;",
            "[BII)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v1, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->digestAlgorithm:Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;

    iget-object v3, v1, Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signatureAlgorithm:Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;

    iget-object v5, v1, Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-static/range {p5 .. p6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v1

    invoke-static {v3, v5}, Lcom/android/apksig/internal/oid/OidConstants;->getSigAlgSupportedApiLevels(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getValuesNotIn(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_c1

    invoke-static {v3}, Lcom/android/apksig/internal/oid/OidConstants$OidToUserFriendlyNameMapper;->getUserFriendlyNameForOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b1

    move-object v2, v3

    :goto_22
    invoke-static {v5}, Lcom/android/apksig/internal/oid/OidConstants$OidToUserFriendlyNameMapper;->getUserFriendlyNameForOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1ae

    move-object v4, v5

    :goto_29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_32
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_49

    const-string v6, ", "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    invoke-virtual {v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMin()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMax()I

    move-result v9

    if-ne v6, v9, :cond_5f

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_5b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_5f
    invoke-virtual {v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMax()I

    move-result v6

    const v9, 0x7fffffff

    if-ne v6, v9, :cond_7f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMin()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v6

    :goto_7a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5b

    :cond_7f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMin()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;->getMax()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v1, v6

    goto :goto_7a

    :cond_99
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNSUPPORTED_SIG_ALG:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v10}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v3, 0x2

    aput-object v5, v8, v3

    const/4 v3, 0x3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x4

    aput-object v2, v8, v3

    const/4 v2, 0x5

    aput-object v4, v8, v2

    invoke-static {v1, v6, v8}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_bf
    const/4 v1, 0x0

    :goto_c0
    return-object v1

    :cond_c1
    iget-object v1, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->sid:Lcom/android/apksig/internal/pkcs7/SignerIdentifier;

    invoke-static {p2, v1}, Lcom/android/apksig/internal/x509/Certificate;->findCertificate(Ljava/util/Collection;Lcom/android/apksig/internal/pkcs7/SignerIdentifier;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_1a6

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v1

    if-nez v1, :cond_19e

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v6

    if-eqz v6, :cond_ed

    array-length v1, v6

    const/4 v7, 0x1

    if-lt v1, v7, :cond_16e

    const/4 v1, 0x0

    aget-boolean v1, v6, v1

    if-eqz v1, :cond_16e

    const/4 v1, 0x1

    :goto_df
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_e9

    const/4 v7, 0x1

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_e9

    const/4 v4, 0x1

    :cond_e9
    if-nez v1, :cond_ed

    if-eqz v4, :cond_171

    :cond_ed
    invoke-static {v3, v5}, Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;->getJcaSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v4, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signedAttrs:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    if-eqz v4, :cond_19a

    const/16 v4, 0x13

    move/from16 v0, p5

    if-lt v0, v4, :cond_192

    :try_start_106
    iget-object v4, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signedAttrs:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v4}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object v4

    const-class v5, Lcom/android/apksig/internal/pkcs7/Attribute;

    invoke-static {v4, v5}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseImplicitSetOf(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;

    invoke-direct {v5, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;-><init>(Ljava/util/Collection;)V

    const/16 v4, 0x18

    move/from16 v0, p6

    if-lt v0, v4, :cond_12f

    const-string v4, "1.2.840.113549.1.9.3"

    invoke-virtual {v5, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;->getSingleObjectIdentifierValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_179

    iget-object v6, p1, Lcom/android/apksig/internal/pkcs7/SignedData;->encapContentInfo:Lcom/android/apksig/internal/pkcs7/EncapsulatedContentInfo;

    iget-object v6, v6, Lcom/android/apksig/internal/pkcs7/EncapsulatedContentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    :cond_12f
    const-string v4, "1.2.840.113549.1.9.4"

    invoke-virtual {v5, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;->getSingleOctetStringValue(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_18a

    invoke-static {v3}, Lcom/android/apksig/internal/pkcs7/AlgorithmIdentifier;->getJcaDigestAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_146
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_106 .. :try_end_146} :catch_181

    move-result v3

    if-eqz v3, :cond_bf

    iget-object v3, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signedAttrs:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v3}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Ljava/security/Signature;->update(B)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    :goto_15b
    iget-object v3, p3, Lcom/android/apksig/internal/pkcs7/SignerInfo;->signature:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_bf

    move-object v1, v2

    goto/16 :goto_c0

    :cond_16e
    const/4 v1, 0x0

    goto/16 :goto_df

    :cond_171
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Signing certificate not authorized for use in digital signatures: keyUsage extension missing digitalSignature and nonRepudiation"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_179
    :try_start_179
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "No Content Type in signed attributes"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_181
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_179 .. :try_end_181} :catch_181

    :catch_181
    move-exception v1

    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Failed to parse signed attributes"

    invoke-direct {v2, v3, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_18a
    :try_start_18a
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "No content digest in signed attributes"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_192
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_18a .. :try_end_192} :catch_181

    :cond_192
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "APKs with Signed Attributes broken on platforms with API Level < 19"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19a
    invoke-virtual {v1, p4}, Ljava/security/Signature;->update([B)V

    goto :goto_15b

    :cond_19e
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Signing certificate has unsupported critical extensions"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a6
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Signing certificate referenced in SignerInfo not found in SignedData"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1ae
    move-object v4, v1

    goto/16 :goto_29

    :cond_1b1
    move-object v2, v1

    goto/16 :goto_22
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    return-object v0
.end method

.method public getSigFileEntryNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileEntryNames:Ljava/util/Set;

    return-object v0
.end method

.method public getSignatureBlockEntryName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureFileEntryName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIgnored()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mIgnored:Z

    return v0
.end method

.method setIgnored()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mIgnored:Z

    return-void
.end method

.method public verifySigBlockAgainstSigFile(Lcom/android/apksig/util/DataSource;JII)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-static {p1, v0, p2, p3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B
    :try_end_5
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_5} :catch_172

    move-result-object v0

    :try_start_6
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-static {p1, v1, p2, p3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileBytes:[B
    :try_end_e
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_6 .. :try_end_e} :catch_154

    :try_start_e
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-class v1, Lcom/android/apksig/internal/pkcs7/ContentInfo;

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/pkcs7/ContentInfo;

    const-string v1, "1.2.840.113549.1.7.2"

    iget-object v2, v0, Lcom/android/apksig/internal/pkcs7/ContentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    iget-object v0, v0, Lcom/android/apksig/internal/pkcs7/ContentInfo;->content:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-class v1, Lcom/android/apksig/internal/pkcs7/SignedData;

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/pkcs7/SignedData;
    :try_end_32
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_e .. :try_end_32} :catch_138

    iget-object v0, v1, Lcom/android/apksig/internal/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    const/16 v0, 0x18

    if-ge p4, v0, :cond_95

    iget-object v0, v1, Lcom/android/apksig/internal/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v7, v0

    move-object v8, v2

    move-object v5, v3

    :goto_67
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/pkcs7/SignerInfo;

    if-nez v5, :cond_197

    :try_start_75
    iget-object v0, v1, Lcom/android/apksig/internal/pkcs7/SignedData;->certificates:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/x509/Certificate;->parseCertificates(Ljava/util/List;)Ljava/util/List;
    :try_end_7a
    .catch Ljava/security/cert/CertificateException; {:try_start_75 .. :try_end_7a} :catch_98

    move-result-object v2

    :goto_7b
    :try_start_7b
    iget-object v4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileBytes:[B

    move-object v0, p0

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifySignerInfoAgainstSigFile(Lcom/android/apksig/internal/pkcs7/SignedData;Ljava/util/Collection;Lcom/android/apksig/internal/pkcs7/SignerInfo;[BII)Ljava/security/cert/X509Certificate;

    move-result-object v4

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z
    :try_end_89
    .catch Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException; {:try_start_7b .. :try_end_89} :catch_d2
    .catch Ljava/security/InvalidKeyException; {:try_start_7b .. :try_end_89} :catch_b0
    .catch Ljava/security/SignatureException; {:try_start_7b .. :try_end_89} :catch_190

    move-result v0

    if-nez v0, :cond_4d

    if-eqz v4, :cond_193

    if-nez v7, :cond_193

    move-object v0, v3

    :goto_91
    move-object v7, v0

    move-object v8, v4

    move-object v5, v2

    goto :goto_67

    :cond_95
    iget-object v0, v1, Lcom/android/apksig/internal/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    goto :goto_5d

    :catch_98
    move-exception v0

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_PARSE_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_4d

    :catch_b0
    move-exception v0

    :goto_b1
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_4d

    :catch_d2
    move-exception v0

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_PARSE_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_4d

    :cond_eb
    if-nez v7, :cond_10b

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_4d

    :cond_10b
    invoke-static {v5, v8}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getCertificateChain(Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    iget-object v1, v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->certChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    iget-object v1, v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->certChain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4d

    :cond_11f
    :try_start_11f
    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported ContentInfo.contentType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/apksig/internal/pkcs7/ContentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_138
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_11f .. :try_end_138} :catch_138

    :catch_138
    move-exception v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;->printStackTrace()V

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_PARSE_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_4d

    :catch_154
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed ZIP entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_172
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed ZIP entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureBlockEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_190
    move-exception v0

    goto/16 :goto_b1

    :cond_193
    move-object v0, v7

    move-object v4, v8

    goto/16 :goto_91

    :cond_197
    move-object v2, v5

    goto/16 :goto_7b
.end method

.method public verifySigFileAgainstManifest([BLcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;II)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v11, Lcom/android/apksig/internal/jar/ManifestParser;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileBytes:[B

    invoke-direct {v11, v2}, Lcom/android/apksig/internal/jar/ManifestParser;-><init>([B)V

    invoke-virtual {v11}, Lcom/android/apksig/internal/jar/ManifestParser;->readSection()Lcom/android/apksig/internal/jar/ManifestParser$Section;

    move-result-object v3

    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v2}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_VERSION_ATTR_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :goto_26
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->setIgnored()V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const/16 v2, 0x18

    move/from16 v0, p7

    if-lt v0, v2, :cond_3f

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v3, v0, v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->checkForStrippedApkSignatures(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/util/Map;Ljava/util/Set;)V

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    invoke-static {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_3f
    const-string v2, "Created-By"

    invoke-virtual {v3, v2}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b2

    const-string v4, "signtool"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b2

    const/4 v4, 0x1

    :goto_51
    move-object v2, p0

    move-object v5, p1

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifyManifestDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;Z[BII)Z

    move-result v12

    if-nez v4, :cond_68

    move-object v5, p0

    move-object v6, v3

    move-object v7, p2

    move-object v8, p1

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifyManifestMainSectionDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;Lcom/android/apksig/internal/jar/ManifestParser$Section;[BII)V

    :cond_68
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    invoke-static {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v11}, Lcom/android/apksig/internal/jar/ManifestParser;->readAllSections()Ljava/util/List;

    move-result-object v2

    new-instance v10, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v2, 0x0

    :goto_82
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_104

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v3}, Lcom/android/apksig/internal/jar/ManifestParser$Section;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b4

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNNNAMED_SIG_FILE_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_b2
    const/4 v4, 0x0

    goto :goto_51

    :cond_b4
    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d2

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DUPLICATE_SIG_FILE_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v7}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_d2
    if-eqz v12, :cond_d6

    :goto_d4
    move v2, v9

    goto :goto_82

    :cond_d6
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    if-nez v5, :cond_fa

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mResult:Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSignatureFileEntry:Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v7}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v5, v6}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$800(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->setIgnored()V

    goto :goto_d4

    :cond_fa
    move-object v2, p0

    move-object v6, p1

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifyManifestIndividualSectionDigest(Lcom/android/apksig/internal/jar/ManifestParser$Section;ZLcom/android/apksig/internal/jar/ManifestParser$Section;[BII)V

    goto :goto_d4

    :cond_104
    iput-object v10, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->mSigFileEntryNames:Ljava/util/Set;

    goto/16 :goto_29
.end method
