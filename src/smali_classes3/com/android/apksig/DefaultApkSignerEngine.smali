.class public Lcom/android/apksig/DefaultApkSignerEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/ApkSignerEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/DefaultApkSignerEngine$Builder;,
        Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;,
        Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;,
        Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;,
        Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;,
        Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;,
        Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;,
        Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;
    }
.end annotation


# instance fields
.field private mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

.field private mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

.field private mClosed:Z

.field private final mCreatedBy:Ljava/lang/String;

.field private mDebuggable:Ljava/lang/Boolean;

.field private final mDebuggableApkPermitted:Z

.field private final mEmittedSignatureJarEntryData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

.field private mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

.field private final mMinSdkVersion:I

.field private final mOtherSignersSignaturesPreserved:Z

.field private mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

.field private final mOutputJarEntryDigestRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutputJarEntryDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mOutputSignatureJarEntryDataRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private final mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

.field private mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

.field private mV1SignaturePending:Z

.field private mV1SignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mV1SigningEnabled:Z

.field private mV2SignaturePending:Z

.field private final mV2SigningEnabled:Z

.field private mV3SignaturePending:Z

.field private final mV3SigningEnabled:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;IZZZZZLjava/lang/String;Lcom/android/apksig/SigningCertificateLineage;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            "IZZZZZ",
            "Ljava/lang/String;",
            "Lcom/android/apksig/SigningCertificateLineage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    sget-object v0, Lcom/android/apksig/util/RunnablesExecutor;->MULTI_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p8, :cond_4

    iput-boolean p4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    iput-boolean p5, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    iput-boolean p6, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    iput-boolean p4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    iput-boolean p5, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SignaturePending:Z

    iput-boolean p6, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SignaturePending:Z

    iput-boolean p7, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggableApkPermitted:Z

    iput-boolean p8, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOtherSignersSignaturesPreserved:Z

    iput-object p9, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mCreatedBy:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    iput-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    iput p3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    iput-object p10, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz p4, :cond_2

    if-eqz p6, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    if-eqz p10, :cond_0

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->access$000(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p10, v1}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/apksig/DefaultApkSignerEngine;->createV1SignerConfigs(Ljava/util/List;I)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "v1 signing enabled but the oldest signer in the SigningCertificateLineage is missing.  Please provide the oldest signer to enable v1 signing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Preserving other signer\'s signatures is not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one signer config must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;IZZZZZLjava/lang/String;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/DefaultApkSignerEngine$1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct/range {p0 .. p10}, Lcom/android/apksig/DefaultApkSignerEngine;-><init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;IZZZZZLjava/lang/String;Lcom/android/apksig/SigningCertificateLineage;)V

    return-void
.end method

.method private checkNotClosed()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mClosed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOutputApkNotDebuggableIfDebuggableMustBeRejected()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggableApkPermitted:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->isOutputApkDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "APK is debuggable (see android:debuggable attribute) and this engine is configured to refuse to sign debuggable APKs"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to determine whether the APK is debuggable"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkSigningBlockDoneIfEnabled()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SignaturePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SignaturePending:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;->access$1100(Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SignaturePending:Z

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SignaturePending:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "APK Signing Block addition of signature(s) requested by outputZipSections() hasn\'t been fulfilled yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Signed APK Signing BLock not yet generated. Skipped outputZipSections()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkV1SigningDoneIfEnabled()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->access$800(Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$400(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output APK entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data differs from what was requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Still waiting to inspect output APK\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not yet output despite this having been requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "v1 signature (JAR signature) addition requested by outputJarEntries() hasn\'t been fulfilled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "v1 signature (JAR signature) not yet generated. Skipped outputJarEntries()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static computeSha256DigestBytes([B)[B
    .registers 4

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SHA-256 is not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createSigningBlockSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;ZI)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    new-instance v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    invoke-direct {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;-><init>()V

    invoke-virtual {p1}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    iput-object v3, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->privateKey:Ljava/security/PrivateKey;

    iput-object v1, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    if-eqz p3, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    invoke-static {v0, v1, p2}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZ)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown APK Signature Scheme ID requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    invoke-static {v0, v1, p2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZ)Ljava/util/List;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_2
    iput-object v0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    invoke-static {v0, v1, p2}, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZ)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method private createSigningBlockSignerConfigs(ZI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;ZI)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private createSourceStampSignerConfig()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;ZI)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object v0

    return-object v0
.end method

.method private createV1SignerConfigs(Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    new-instance v5, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    move v3, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getSafeSignerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    invoke-static {v7, p2}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getSuggestedSignatureDigestAlgorithm(Ljava/security/PublicKey;I)Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    move-result-object v1

    new-instance v7, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;

    invoke-direct {v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;-><init>()V

    iput-object v8, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;->privateKey:Ljava/security/PrivateKey;

    iput-object v6, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;->certificates:Ljava/util/List;

    iput-object v1, v7, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;->signatureDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move-object v2, v0

    move v3, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->BY_STRENGTH_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " have the same name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". v1 signer names must be unique"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getOutputEntryNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    return-void
.end method

.method private createV2SignerConfigs(Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->access$000(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v0}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-direct {p0, v0, p1, v4}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;ZI)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "v2 signing enabled but the oldest signer in the SigningCertificateLineage is missing.  Please provide the oldest signer to enable v2 signing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfigs(ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private createV3SignerConfigs(Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const v3, 0x7fffffff

    const/16 v8, 0x1c

    const/4 v7, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfigs(ZI)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v1, v3

    :goto_0
    if-ltz v2, :cond_7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    iget-object v6, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_3

    iput v3, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->maxSdkVersion:I

    :goto_1
    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/apksig/DefaultApkSignerEngine;->getMinSdkFromV3SignatureAlgorithms(Ljava/util/List;)I

    move-result v1

    iput v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->minSdkVersion:I

    iget-object v6, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v6, :cond_0

    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v1}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v1

    iput-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    :cond_0
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->minSdkVersion:I

    iget v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-le v0, v1, :cond_1

    if-gt v0, v8, :cond_4

    :cond_1
    :goto_2
    if-le v0, v8, :cond_2

    iget v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-gt v0, v1, :cond_6

    :cond_2
    return-object v5

    :cond_3
    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->maxSdkVersion:I

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v0, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported for APK Signature Scheme v3 signing"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Provided key algorithms not supported on all desired Android SDK versions"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method private createV4SignerConfig()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfigs(ZI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only accepting one signer config for V4 Signature."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private forgetOutputApkDebuggableStatus()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggable:Ljava/lang/Boolean;

    return-void
.end method

.method private getInputJarEntryOutputPolicy(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;
    .registers 3

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT_BY_ENGINE:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOtherSignersSignaturesPreserved:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->SKIP:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    goto :goto_0
.end method

.method private getMinSdkFromV3SignatureAlgorithms(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/SignatureAlgorithm;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v0, 0x7fffffff

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getMinSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-le v0, v1, :cond_1

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private invalidateV1Signature()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV2Signature()V

    return-void
.end method

.method private invalidateV2Signature()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SignaturePending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    :cond_0
    return-void
.end method

.method private invalidateV3Signature()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SignaturePending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    :cond_0
    return-void
.end method

.method private isDebuggable(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggableApkPermitted:Z

    if-nez v0, :cond_0

    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOutputApkDebuggable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$400(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/apk/ApkUtils;->getDebuggableFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggable:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Still waiting to inspect output APK\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-virtual {v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine debuggable status of output APK because AndroidManifest.xml entry contents have not yet been requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private outputZipSectionsInternal(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Z)Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkV1SigningDoneIfEnabled()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkOutputApkNotDebuggableIfDebuggableMustBeRejected()V

    invoke-static {p1, p4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateApkSigningBlockPadding(Lcom/android/apksig/util/DataSource;Z)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/util/DataSource;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v1, p3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->copyWithModifiedCDOffset(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/util/DataSource;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV2Signature()V

    invoke-direct {p0, p4}, Lcom/android/apksig/DefaultApkSignerEngine;->createV2SignerConfigs(Z)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    iget-boolean v5, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner;->generateApkSignatureSchemeV2Block(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;Z)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;

    move-result-object v0

    iget-object v2, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;->signingSchemeBlock:Lcom/android/apksig/internal/util/Pair;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-boolean v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV3Signature()V

    invoke-direct {p0, p4}, Lcom/android/apksig/DefaultApkSignerEngine;->createV3SignerConfigs(Z)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    invoke-static {v4, v1, p2, v3, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateApkSignatureSchemeV3Block(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;

    move-result-object v1

    iget-object v2, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;->signingSchemeBlock:Lcom/android/apksig/internal/util/Pair;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->createSourceStampSignerConfig()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v3, :cond_4

    iget-object v0, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;->digestInfo:Ljava/util/Map;

    :goto_3
    invoke-static {v2, v0}, Lcom/android/apksig/internal/apk/stamp/SourceStampSigner;->generateSourceStampBlock(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Ljava/util/Map;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    invoke-static {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateApkSigningBlock(Ljava/util/List;)[B

    move-result-object v1

    invoke-direct {v0, v1, v7, v6}, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;-><init>([BILcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    move-object v6, v0

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v1, v6

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;->digestInfo:Ljava/util/Map;

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mClosed:Z

    iput-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    iput-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    iput-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    iput-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggable:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    return-void
.end method

.method public generateSourceStampCertificateDigest()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine;->computeSha256DigestBytes([B)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to encode source stamp certificate"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "No certificates configured for stamp"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initWith([BLjava/util/Set;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;

    invoke-direct {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseManifest([BLjava/util/Set;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getJcaMessageDigestAlgorithm(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->isDebuggable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    const-string v2, "-Digest"

    iget v5, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    const v6, 0x7fffffff

    invoke-static {v1, v2, v5, v6}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object v5, v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    iget-object v1, v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public inputApkSigningBlock(Lcom/android/apksig/util/DataSource;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    :cond_0
    return-void
.end method

.method public inputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;
    .registers 5

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine;->getInputJarEntryOutputPolicy(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object v0

    sget-object v1, Lcom/android/apksig/DefaultApkSignerEngine$1;->$SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy:[I

    invoke-virtual {v0}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    new-instance v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    sget-object v1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT_BY_ENGINE:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-direct {v0, v1, v2}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;-><init>(Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    sget-object v1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT_BY_ENGINE:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    invoke-direct {v0, v1}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;-><init>(Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported output policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    sget-object v1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    invoke-direct {v0, v1}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;-><init>(Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    sget-object v1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->SKIP:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    invoke-direct {v0, v1}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;-><init>(Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;)V

    goto :goto_0
.end method

.method public inputJarEntryRemoved(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;
    .registers 3

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine;->getInputJarEntryOutputPolicy(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object v0

    return-object v0
.end method

.method public isEligibleForSourceStamp()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public outputDone()V
    .registers 1

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkV1SigningDoneIfEnabled()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkSigningBlockDoneIfEnabled()V

    return-void
.end method

.method public outputJarEntries()Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$400(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->access$500(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->access$600(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;)[B

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Still waiting to inspect input APK\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-virtual {v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Still waiting to inspect output APK\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getJcaMessageDigestAlgorithm(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->generateSourceStampCertificateDigest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    const-string v2, "stamp-cert-sha256"

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$400(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still waiting to inspect output APK\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->getEntryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-static {v1, v2, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->generateManifestFile(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;Ljava/util/Map;[B)Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;

    move-result-object v0

    iget-object v4, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;->contents:[B

    :goto_3
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkOutputApkNotDebuggableIfDebuggableMustBeRejected()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->access$800(Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mCreatedBy:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->sign(Ljava/util/List;Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;Ljava/util/Map;Ljava/util/List;[BLjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    goto/16 :goto_0

    :cond_c
    move-object v0, v6

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-static {v0, v1, v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->generateManifestFile(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;Ljava/util/Map;[B)Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;

    move-result-object v1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    const-string v2, "META-INF/MANIFEST.MF"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, v1, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;->contents:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_e

    :try_start_1
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mCreatedBy:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->signManifest(Ljava/util/List;Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;Ljava/util/List;Ljava/lang/String;Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;)Ljava/util/List;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to generate v1 signature"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-nez v1, :cond_10

    :goto_6
    invoke-static {v2, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    invoke-static {v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_6

    :cond_11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v3

    goto/16 :goto_4

    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v4, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;

    invoke-direct {v4, v1, v0}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_13
    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    invoke-direct {v0, v2, v6}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;-><init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    move-object v6, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to generate v1 signature"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    move-object v4, v0

    goto/16 :goto_3
.end method

.method public outputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV2Signature()V

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->forgetOutputApkDebuggableStatus()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV1Signature()V

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    invoke-static {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getJcaMessageDigestAlgorithm(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggableApkPermitted:Z

    if-nez v2, :cond_1

    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-direct {v3, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    new-instance v2, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    invoke-direct {v2, p1, v4, v1}, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;-><init>(Ljava/lang/String;[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV1Signature()V

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public outputJarEntryRemoved(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV2Signature()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV1Signature()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV1Signature()V

    goto :goto_0
.end method

.method public outputZipSections(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->outputZipSectionsInternal(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Z)Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    move-result-object v0

    return-object v0
.end method

.method public outputZipSections2(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->outputZipSectionsInternal(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Z)Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    move-result-object v0

    return-object v0
.end method

.method public produceV4Signature(Lcom/android/apksig/util/DataSource;Ljava/io/OutputStream;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->createV4SignerConfig()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v4/V4Signature;

    invoke-virtual {v0, p2}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "V4 signing failed"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Missing V4 output streams."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public setExecutor(Lcom/android/apksig/util/RunnablesExecutor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    return-void
.end method

.method public signV4(Lcom/android/apksig/util/DataSource;Ljava/io/File;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Missing V4 output file."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->createV4SignerConfig()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    if-nez p3, :cond_0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "V4 signing failed"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
