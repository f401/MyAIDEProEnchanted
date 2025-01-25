.class final Labcd/Cz;
.super Ljava/lang/Object;


# direct methods
.method private static j6(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_17
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_17} :catch_19

    const/4 p0, 0x1

    return p0

    :catch_19
    move-exception p0

    return v1
.end method

.method public static j6([Ljava/security/cert/X509Certificate;Labcd/Nz;)[Ljava/security/cert/X509Certificate;
    .registers 8

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Labcd/Nz;->DW(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_13
    array-length v4, p0

    if-ge v3, v4, :cond_33

    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Labcd/Nz;->DW(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    aget-object v4, p0, v3

    add-int/lit8 v5, v3, -0x1

    aget-object v5, p0, v5

    invoke-static {v4, v5}, Labcd/Cz;->j6(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_33

    aget-object v4, p0, v3

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_33
    sub-int/2addr v3, v1

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Labcd/Nz;->j6(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    if-eqz v1, :cond_50

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0

    :cond_50
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Didn\'t find a trust anchor in chain cleanup!"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    goto :goto_59

    :goto_58
    throw p0

    :goto_59
    goto :goto_58
.end method
