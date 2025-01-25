.class final Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/x509/X509CRLImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "X509IssuerSerial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;",
        ">;"
    }
.end annotation


# instance fields
.field volatile hashcode:I

.field final issuer:Ljavax/security/auth/x500/X500Principal;

.field final serial:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 4

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    return-void
.end method

.method constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    iput-object p1, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    iput-object p2, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-virtual {p0, p1}, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->compareTo(Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;)I
    .registers 4

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    iget-object v1, p1, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_12
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;

    if-eqz v0, :cond_22

    check-cast p1, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->getSerial()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p1}, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_22
    const/4 v0, 0x0

    goto :goto_3
.end method

.method getIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method getSerial()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    :cond_17
    iget v0, p0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    return v0
.end method
