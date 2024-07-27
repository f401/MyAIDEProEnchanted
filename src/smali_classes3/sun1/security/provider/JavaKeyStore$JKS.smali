.class public final Lsun1/security/provider/JavaKeyStore$JKS;
.super Lsun1/security/provider/JavaKeyStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/provider/JavaKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JKS"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lsun1/security/provider/JavaKeyStore;-><init>()V

    return-void
.end method


# virtual methods
.method convertAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic engineAliases()Ljava/util/Enumeration;
    .registers 2

    invoke-super {p0}, Lsun1/security/provider/JavaKeyStore;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic engineContainsAlias(Ljava/lang/String;)Z
    .registers 3

    invoke-super {p0, p1}, Lsun1/security/provider/JavaKeyStore;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic engineDeleteEntry(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-super {p0, p1}, Lsun1/security/provider/JavaKeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3

    invoke-super {p0, p1}, Lsun1/security/provider/JavaKeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lsun1/security/provider/JavaKeyStore;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3

    invoke-super {p0, p1}, Lsun1/security/provider/JavaKeyStore;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    invoke-super {p0, p1}, Lsun1/security/provider/JavaKeyStore;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lsun1/security/provider/JavaKeyStore;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3

    invoke-super {p0, p1}, Lsun1/security/provider/JavaKeyStore;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3

    invoke-super {p0, p1}, Lsun1/security/provider/JavaKeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic engineLoad(Ljava/io/InputStream;[C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lsun1/security/provider/JavaKeyStore;->engineLoad(Ljava/io/InputStream;[C)V

    return-void
.end method

.method public bridge synthetic engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lsun1/security/provider/JavaKeyStore;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public bridge synthetic engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lsun1/security/provider/JavaKeyStore;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public bridge synthetic engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lsun1/security/provider/JavaKeyStore;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public bridge synthetic engineSize()I
    .registers 2

    invoke-super {p0}, Lsun1/security/provider/JavaKeyStore;->engineSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic engineStore(Ljava/io/OutputStream;[C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lsun1/security/provider/JavaKeyStore;->engineStore(Ljava/io/OutputStream;[C)V

    return-void
.end method
