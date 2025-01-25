.class public Lcom/android/apksig/ApkSigner$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCreatedBy:Ljava/lang/String;

.field private mDebuggableApkPermitted:Z

.field private mInputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private mInputApkFile:Ljava/io/File;

.field private mMinSdkVersion:Ljava/lang/Integer;

.field private mOtherSignersSignaturesPreserved:Z

.field private mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

.field private mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private mOutputApkFile:Ljava/io/File;

.field private mOutputV4File:Ljava/io/File;

.field private final mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

.field private mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

.field private mV1SigningEnabled:Z

.field private mV2SigningEnabled:Z

.field private mV3SigningEnabled:Z

.field private mV3SigningExplicitlyDisabled:Z

.field private mV3SigningExplicitlyEnabled:Z

.field private mV4ErrorReportingEnabled:Z

.field private mV4SigningEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/apksig/ApkSignerEngine;)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV1SigningEnabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mDebuggableApkPermitted:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyDisabled:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    if-eqz p1, :cond_1d

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerConfigs:Ljava/util/List;

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "signerEngine == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/apksig/ApkSigner$Builder;->mV1SigningEnabled:Z

    iput-boolean v2, p0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    iput-boolean v2, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    iput-boolean v2, p0, Lcom/android/apksig/ApkSigner$Builder;->mDebuggableApkPermitted:Z

    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyDisabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_23

    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerConfigs:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    return-void

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one signer config must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkInitializedWithoutEngine()V
    .registers 3

    iget-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation is not available when builder initialized with an engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/android/apksig/ApkSigner;
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyDisabled:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    if-nez v2, :cond_99

    :cond_c
    if-eqz v1, :cond_13

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    if-eqz v1, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    if-nez v1, :cond_a1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    :cond_3b
    new-instance v1, Lcom/android/apksig/ApkSigner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mSignerConfigs:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/apksig/ApkSigner$Builder;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/apksig/ApkSigner$Builder;->mMinSdkVersion:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/apksig/ApkSigner$Builder;->mV1SigningEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/apksig/ApkSigner$Builder;->mDebuggableApkPermitted:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/apksig/ApkSigner$Builder;->mOtherSignersSignaturesPreserved:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/apksig/ApkSigner$Builder;->mCreatedBy:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/apksig/ApkSigner$Builder;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkFile:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/apksig/ApkSigner$Builder;->mOutputV4File:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/apksig/ApkSigner$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/android/apksig/ApkSigner;-><init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Ljava/lang/Integer;ZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/ApkSigner$1;)V

    return-object v1

    :cond_99
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Builder configured to both enable and disable APK Signature Scheme v3 signing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "APK Signature Scheme v4 signing requires at least v2 or v3 signing to be enabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/ApkSigner$Builder;
    .registers 3

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mCreatedBy:Ljava/lang/String;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setDebuggableApkPermitted(Z)Lcom/android/apksig/ApkSigner$Builder;
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mDebuggableApkPermitted:Z

    return-object p0
.end method

.method public setInputApk(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSigner$Builder;
    .registers 4

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkFile:Ljava/io/File;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputApk == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;
    .registers 4

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkFile:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputApk == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinSdkVersion(I)Lcom/android/apksig/ApkSigner$Builder;
    .registers 3

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mMinSdkVersion:Ljava/lang/Integer;

    return-object p0
.end method

.method public setOtherSignersSignaturesPreserved(Z)Lcom/android/apksig/ApkSigner$Builder;
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOtherSignersSignaturesPreserved:Z

    return-object p0
.end method

.method public setOutputApk(Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSigner$Builder;
    .registers 5

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkFile:Ljava/io/File;

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    iput-object p2, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputApkIn == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputApkOut == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputApk(Lcom/android/apksig/util/ReadableDataSink;)Lcom/android/apksig/ApkSigner$Builder;
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1, p1}, Lcom/android/apksig/ApkSigner$Builder;->setOutputApk(Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputApk == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputApk == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/ApkSigner$Builder;
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    :cond_7
    return-object p0
.end method

.method public setSourceStampSignerConfig(Lcom/android/apksig/ApkSigner$SignerConfig;)Lcom/android/apksig/ApkSigner$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    return-object p0
.end method

.method public setV1SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV1SigningEnabled:Z

    return-object p0
.end method

.method public setV2SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    return-object p0
.end method

.method public setV3SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    if-eqz p1, :cond_b

    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    :goto_a
    return-object p0

    :cond_b
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyDisabled:Z

    goto :goto_a
.end method

.method public setV4ErrorReportingEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    return-object p0
.end method

.method public setV4SignatureOutputFile(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;
    .registers 4

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputV4File:Ljava/io/File;

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "v4HashRootOutputFile == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setV4SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    return-object p0
.end method
