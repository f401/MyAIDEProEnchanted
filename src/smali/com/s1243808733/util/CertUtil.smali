.class public Lcom/s1243808733/util/CertUtil;
.super Ljava/lang/Object;
.source "CertUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertirJKS_BKS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 8
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

    .line 49
    const-string v0, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v0}, Lcom/s1243808733/util/CertUtil;->loadProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 53
    const-string v1, "BKS"

    invoke-static {v1, v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v0

    .line 54
    const-string v1, "JKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    if-eqz p2, :cond_1a

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    const-string p2, "changeit"

    :cond_1c
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 58
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_28

    move-object v2, p0

    goto :goto_29

    :cond_28
    move-object v2, p1

    :goto_29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_35

    move-object p0, p1

    :cond_35
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 62
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_49

    .line 63
    invoke-virtual {v1, p0, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_4c

    .line 65
    :cond_49
    invoke-virtual {v0, p0, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 67
    :goto_4c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 69
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_5a

    .line 70
    invoke-virtual {v0, v2, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_5d

    .line 72
    :cond_5a
    invoke-virtual {v1, v2, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 76
    :goto_5d
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_68

    .line 77
    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p0

    goto :goto_6c

    .line 79
    :cond_68
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p0

    .line 82
    :goto_6c
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 83
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_94

    .line 86
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 89
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    invoke-virtual {v0, v2, p2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    goto :goto_a7

    .line 92
    :cond_94
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 93
    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 95
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    invoke-virtual {v1, v2, p2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 98
    :goto_a7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_6c

    :cond_ab
    return-void
.end method

.method public static loadProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 29
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Provider;

    .line 31
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    return-object p0
.end method
