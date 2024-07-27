.class public Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;
.super Lcom/android/apksig/internal/util/DelegatingX509Certificate;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mEncodedForm:[B

.field private mHash:I


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/util/DelegatingX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;->mHash:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;->mEncodedForm:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;->getEncoded()[B

    move-result-object v0

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;->mEncodedForm:[B

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;->mHash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;->mHash:I
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;->mHash:I

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;->mHash:I

    goto :goto_0
.end method
