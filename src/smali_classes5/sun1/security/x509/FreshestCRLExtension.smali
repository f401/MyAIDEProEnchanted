.class public Lsun1/security/x509/FreshestCRLExtension;
.super Lsun1/security/x509/CRLDistributionPointsExtension;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "FreshestCRL"

    invoke-direct {p0, v0, v1, p2, v2}, Lsun1/security/x509/CRLDistributionPointsExtension;-><init>(Lsun1/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun1/security/x509/DistributionPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    const-string v2, "FreshestCRL"

    invoke-direct {p0, v0, v1, p1, v2}, Lsun1/security/x509/CRLDistributionPointsExtension;-><init>(Lsun1/security/util/ObjectIdentifier;ZLjava/util/List;Ljava/lang/String;)V

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

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lsun1/security/x509/CRLDistributionPointsExtension;->encode(Ljava/io/OutputStream;Lsun1/security/util/ObjectIdentifier;Z)V

    return-void
.end method
