.class public final Labcd/Kz;
.super Ljava/lang/Object;


# direct methods
.method public static final j6(Labcd/Lz;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 7

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Labcd/Mz;

    new-instance v3, Labcd/Nz;

    invoke-interface {p0}, Labcd/Lz;->DW()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {p0}, Labcd/Lz;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Labcd/Nz;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3, p0}, Labcd/Mz;-><init>(Labcd/Nz;Labcd/Lz;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method
