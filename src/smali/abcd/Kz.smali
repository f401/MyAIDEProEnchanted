.class public final Labcd/Kz;
.super Ljava/lang/Object;


# direct methods
.method public static final j6(Labcd/Lz;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 9

    const/4 v7, 0x0

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Labcd/Mz;

    new-instance v4, Labcd/Nz;

    invoke-interface {p0}, Labcd/Lz;->DW()Ljava/io/InputStream;

    move-result-object v5

    invoke-interface {p0}, Labcd/Lz;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Labcd/Nz;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4, p0}, Labcd/Mz;-><init>(Labcd/Nz;Labcd/Lz;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v7, v1, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
