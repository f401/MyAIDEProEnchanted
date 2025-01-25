.class Labcd/Nz;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final j6:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Labcd/Nz;->j6(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Nz;->j6(Ljava/security/KeyStore;)Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Labcd/Nz;->DW:Ljava/util/HashMap;

    iput-object p1, p0, Labcd/Nz;->j6:Ljava/security/KeyStore;

    return-void
.end method

.method private j6(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 5

    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_b} :catch_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_b} :catch_29
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_b} :catch_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_1b

    :try_start_b
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    return-object v0

    :catchall_16
    move-exception p1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw p1
    :try_end_1b
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_1b} :catch_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_1b} :catch_29
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_1b} :catch_22
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_22
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_29
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_30
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private j6(Ljava/security/KeyStore;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_24} :catch_26

    goto :goto_9

    :cond_25
    return-object v0

    :catch_26
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2e

    :goto_2d
    throw v0

    :goto_2e
    goto :goto_2d
.end method


# virtual methods
.method public DW(Ljava/security/cert/X509Certificate;)Z
    .registers 4

    iget-object v0, p0, Labcd/Nz;->DW:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public j6(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 6

    iget-object v0, p0, Labcd/Nz;->DW:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_1f .. :try_end_26} :catch_27

    return-object v0

    :catch_27
    move-exception p1

    return-object v1
.end method
