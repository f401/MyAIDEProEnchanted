.class public Lsun1/security/x509/DeltaCRLIndicatorExtension;
.super Lsun1/security/x509/CRLNumberExtension;


# direct methods
.method public constructor <init>(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun1/security/util/ObjectIdentifier;

    const/4 v2, 0x1

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const-string v4, "DeltaCRLIndicator"

    const-string v5, "Base CRL Number"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lsun1/security/x509/CRLNumberExtension;-><init>(Lsun1/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "DeltaCRLIndicator"

    const-string v5, "Base CRL Number"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lsun1/security/x509/CRLNumberExtension;-><init>(Lsun1/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun1/security/util/ObjectIdentifier;

    const/4 v2, 0x1

    const-string v4, "DeltaCRLIndicator"

    const-string v5, "Base CRL Number"

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lsun1/security/x509/CRLNumberExtension;-><init>(Lsun1/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lsun1/security/x509/CRLNumberExtension;->encode(Ljava/io/OutputStream;Lsun1/security/util/ObjectIdentifier;Z)V

    return-void
.end method
