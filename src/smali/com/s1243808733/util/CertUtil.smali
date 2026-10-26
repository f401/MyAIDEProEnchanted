.class public Lcom/s1243808733/util/CertUtil;
.super Ljava/lang/Object;
.source "CertUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertirJKS_BKS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v6, 0x0

    .line 49
    const-string v0, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v0}, Lcom/s1243808733/util/CertUtil;->loadProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 53
    const-string v1, "BKS"

    invoke-static {v1, v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v2

    .line 54
    const-string v0, "JKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p2, "changeit"

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 58
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 62
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 63
    invoke-virtual {v3, v0, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 67
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 69
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    invoke-virtual {v2, v6, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 76
    :goto_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 77
    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    .line 82
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    .line 86
    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 87
    invoke-virtual {v2, v0, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 89
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    invoke-virtual {v2, v0, v4}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 98
    :goto_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    :cond_2
    move-object v0, p1

    .line 58
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v2, v0, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v3, v6, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_3

    .line 79
    :cond_5
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    .line 92
    :cond_6
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 93
    invoke-virtual {v3, v0, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 95
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    invoke-virtual {v3, v0, v4}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    goto :goto_5

    .line 98
    :cond_7
    return-void

    :cond_8
    move-object p1, p0

    goto :goto_1
.end method

.method public static loadProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 29
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 31
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    return-object v0
.end method
