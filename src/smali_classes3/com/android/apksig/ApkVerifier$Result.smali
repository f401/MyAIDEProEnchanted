.class public Lcom/android/apksig/ApkVerifier$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;
    }
.end annotation


# instance fields
.field private final mErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

.field private mSourceStampVerified:Z

.field private final mV1SchemeIgnoredSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV1SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV2SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV3SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV4SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVerified:Z

.field private mVerifiedUsingV1Scheme:Z

.field private mVerifiedUsingV2Scheme:Z

.field private mVerifiedUsingV3Scheme:Z

.field private mVerifiedUsingV4Scheme:Z

.field private final mWarnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSignerCerts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeIgnoredSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV4SchemeSigners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->mergeFrom(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->mergeFrom(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/apksig/ApkVerifier$Result;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/apksig/ApkVerifier$Result;->setVerified()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->addSignerCertificate(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/apksig/ApkVerifier$Result;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/ApkVerifier$Result;->getV4SchemeSigners()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addSignerCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 3

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSignerCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getV4SchemeSigners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV4SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method private mergeFrom(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signatureSchemeVersion:I

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV4Scheme:Z

    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    iget-object v2, p0, Lcom/android/apksig/ApkVerifier$Result;->mV4SchemeSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-direct {v3, v0, v4}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown Signing Block Scheme Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV3Scheme:Z

    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    iget-object v2, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-direct {v3, v0, v4}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->getWarnings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_4
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV2Scheme:Z

    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    iget-object v2, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-direct {v3, v0, v4}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampVerified:Z

    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-direct {v1, v0, v4}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    iput-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    goto :goto_2
.end method

.method private mergeFrom(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .registers 7

    const/4 v4, 0x0

    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV1Scheme:Z

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->getWarnings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    iget-object v2, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-direct {v3, v0, v4}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->ignoredSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    iget-object v2, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeIgnoredSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-direct {v3, v0, v4}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setVerified()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerified:Z

    return-void
.end method


# virtual methods
.method varargs addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerifier$IssueWithParams;-><init>(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method varargs addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerifier$IssueWithParams;-><init>(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsErrors()Z
    .registers 3

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->containsErrors()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->containsErrors()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->containsErrors()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->containsErrors()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getErrors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    return-object v0
.end method

.method public getSignerCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSignerCerts:Ljava/util/List;

    return-object v0
.end method

.method public getSigningCertificateLineage()Lcom/android/apksig/SigningCertificateLineage;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    return-object v0
.end method

.method public getSourceStampInfo()Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    return-object v0
.end method

.method public getV1SchemeIgnoredSigners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeIgnoredSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV1SchemeSigners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV2SchemeSigners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV3SchemeSigners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    return-object v0
.end method

.method public isSourceStampVerified()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampVerified:Z

    return v0
.end method

.method public isVerified()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerified:Z

    return v0
.end method

.method public isVerifiedUsingV1Scheme()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV1Scheme:Z

    return v0
.end method

.method public isVerifiedUsingV2Scheme()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV2Scheme:Z

    return v0
.end method

.method public isVerifiedUsingV3Scheme()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV3Scheme:Z

    return v0
.end method

.method public isVerifiedUsingV4Scheme()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV4Scheme:Z

    return v0
.end method
