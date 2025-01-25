.class public Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V1SchemeSignerInfo"
.end annotation


# instance fields
.field private final mCertChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mName:Ljava/lang/String;

.field private final mSignatureBlockFileName:Ljava/lang/String;

.field private final mSignatureFileName:Ljava/lang/String;

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
.method private constructor <init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->certChain:Ljava/util/List;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->signatureBlockFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mSignatureBlockFileName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->signatureFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mSignatureFileName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->getErrors()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mErrors:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mWarnings:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    return-object v0
.end method

.method private varargs addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mErrors:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerifier$IssueWithParams;-><init>(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public containsErrors()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .registers 3

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_9
.end method

.method public getCertificateChain()Ljava/util/List;
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

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    return-object v0
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

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mErrors:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureBlockFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mSignatureBlockFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mSignatureFileName:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mWarnings:Ljava/util/List;

    return-object v0
.end method
