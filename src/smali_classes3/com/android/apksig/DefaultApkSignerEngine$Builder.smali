.class public Lcom/android/apksig/DefaultApkSignerEngine$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCreatedBy:Ljava/lang/String;

.field private mDebuggableApkPermitted:Z

.field private final mMinSdkVersion:I

.field private mOtherSignersSignaturesPreserved:Z

.field private mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

.field private mV1SigningEnabled:Z

.field private mV2SigningEnabled:Z

.field private mV3SigningEnabled:Z

.field private mV3SigningExplicitlyDisabled:Z

.field private mV3SigningExplicitlyEnabled:Z


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV1SigningEnabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV2SigningEnabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mDebuggableApkPermitted:Z

    const-string v0, "1.0 (Android)"

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mCreatedBy:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyDisabled:Z

    iput-boolean v2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    iput p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mMinSdkVersion:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one signer config must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/android/apksig/DefaultApkSignerEngine;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyDisabled:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    if-nez v1, :cond_3

    :cond_0
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/apksig/SigningCertificateLineage;->sortSignerConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    iget-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gt v0, v2, :cond_5

    :cond_2
    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine;

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    iget v3, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mMinSdkVersion:I

    iget-boolean v4, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV1SigningEnabled:Z

    iget-boolean v5, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV2SigningEnabled:Z

    iget-boolean v6, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    iget-boolean v7, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mDebuggableApkPermitted:Z

    iget-boolean v8, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mOtherSignersSignaturesPreserved:Z

    iget-object v9, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mCreatedBy:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/android/apksig/DefaultApkSignerEngine;-><init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;IZZZZZLjava/lang/String;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder configured to both enable and disable APK Signature Scheme v3 signing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    goto :goto_0

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provided multiple signers which are part of the SigningCertificateLineage, but not signing with APK Signature Scheme v3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided signer configs do not match the provided SigningCertificateLineage"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple signing certificates provided for use with APK Signature Scheme v3 without an accompanying SigningCertificateLineage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mCreatedBy:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setDebuggableApkPermitted(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mDebuggableApkPermitted:Z

    return-object p0
.end method

.method public setOtherSignersSignaturesPreserved(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mOtherSignersSignaturesPreserved:Z

    return-object p0
.end method

.method public setSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .registers 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    :cond_0
    return-object p0
.end method

.method public setStampSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    return-object p0
.end method

.method public setV1SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV1SigningEnabled:Z

    return-object p0
.end method

.method public setV2SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV2SigningEnabled:Z

    return-object p0
.end method

.method public setV3SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .registers 3

    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    :goto_0
    return-object p0

    :cond_0
    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyDisabled:Z

    goto :goto_0
.end method
