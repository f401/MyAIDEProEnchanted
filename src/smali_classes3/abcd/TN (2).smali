.class public Labcd/TN;
.super Labcd/QP;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-static {p1}, Labcd/TN;->j6(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/QP;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private static j6(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    return-object v0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_44

    check-cast v1, Ljava/security/cert/X509Certificate;

    :try_start_1e
    new-instance v2, Labcd/SN;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Labcd/SN;-><init>([B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_2b

    goto :goto_d

    :catch_2b
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to read encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    check-cast v1, Labcd/SN;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method
