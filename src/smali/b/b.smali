.class public final Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;[B)I
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_f

    sub-int v2, v0, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_d

    goto :goto_f

    :cond_d
    add-int/2addr v1, v2

    goto :goto_2

    :cond_f
    :goto_f
    return v1
.end method

.method public static b(Lp/c;Ljava/security/KeyPair;Ljava/util/Date;Ljava/util/Date;Ljava/math/BigInteger;)Ljava/security/cert/X509Certificate;
    .registers 15

    .line 1
    const-string v0, "SHA1With"

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    .line 3
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lr/e;->c(Ljava/lang/Object;)Lr/e;

    move-result-object v1

    .line 4
    new-instance v2, Lw/b;

    new-instance v3, Lb/b;

    invoke-direct {v3}, Lb/b;-><init>()V

    invoke-direct {v2, v3}, Lw/b;-><init>(Lb/b;)V

    new-instance v3, Lv/a;

    .line 5
    invoke-static {v0}, Lx/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lv/a;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/n;

    if-eqz v3, :cond_1e4

    sget-object v4, Lv/a;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    new-instance v0, Lr/a;

    invoke-direct {v0, v3}, Lr/a;-><init>(Lc/n;)V

    goto :goto_6b

    :cond_4d
    sget-object v4, Lv/a;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    new-instance v4, Lr/a;

    sget-object v5, Lv/a;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    invoke-direct {v4, v3, v0}, Lr/a;-><init>(Lc/n;Lc/e;)V

    move-object v0, v4

    goto :goto_6b

    :cond_64
    new-instance v0, Lr/a;

    sget-object v4, Lc/ax;->a:Lc/ax;

    invoke-direct {v0, v3, v4}, Lr/a;-><init>(Lc/n;Lc/e;)V

    :goto_6b
    sget-object v4, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    sget-object v4, Ln/a;->a:Lc/n;

    .line 6
    :cond_75
    iget-object v4, v0, Lr/a;->a:Lc/n;

    .line 7
    sget-object v5, Ln/a;->g:Lc/n;

    invoke-virtual {v4, v5}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 8
    iget-object v3, v0, Lr/a;->b:Lc/e;

    .line 9
    check-cast v3, Ln/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8f

    :cond_87
    sget-object v4, Lv/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/n;

    .line 10
    :goto_8f
    :try_start_8f
    invoke-virtual {v2, v0}, Lw/b;->h(Lr/a;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 11
    new-instance p1, Lw/a;

    invoke-direct {p1, v2}, Lw/a;-><init>(Ljava/security/Signature;)V
    :try_end_9b
    .catch Ljava/security/GeneralSecurityException; {:try_start_8f .. :try_end_9b} :catch_1cc

    .line 12
    new-instance v2, Lr/g;

    invoke-direct {v2, p2}, Lr/g;-><init>(Ljava/util/Date;)V

    new-instance p2, Lr/g;

    invoke-direct {p2, p3}, Lr/g;-><init>(Ljava/util/Date;)V

    .line 13
    new-instance p3, Lc/bf;

    new-instance v3, Lc/k;

    const-wide/16 v4, 0x2

    invoke-direct {v3, v4, v5}, Lc/k;-><init>(J)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p3, v4, v5, v3}, Lc/bf;-><init>(ZILc/e;)V

    .line 14
    new-instance v3, Lc/k;

    invoke-direct {v3, p4}, Lc/k;-><init>(Ljava/math/BigInteger;)V

    .line 15
    new-instance p4, Lp/d;

    invoke-direct {p4, v4}, Lp/d;-><init>(I)V

    .line 16
    iget-object v6, p4, Lp/d;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_107

    .line 17
    iget-object v6, p4, Lp/d;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Lr/c;

    const/4 v7, 0x0

    :goto_d2
    iget-object v8, p4, Lp/d;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-eq v7, v8, :cond_f3

    iget-object v8, p4, Lp/d;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/Hashtable;

    iget-object v9, p4, Lp/d;->a:Ljava/lang/Object;

    check-cast v9, Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr/c;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d2

    :cond_f3
    new-instance p4, Lr/d;

    invoke-direct {p4, v6}, Lr/d;-><init>([Lr/c;)V

    .line 18
    sget-object v6, Lr/c;->a:Lc/n;

    .line 19
    iget-object v7, p4, Lr/d;->a:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/c;

    if-eqz v6, :cond_108

    .line 20
    iget-boolean v6, v6, Lr/c;->c:Z

    goto :goto_108

    :cond_107
    const/4 p4, 0x0

    :cond_108
    :goto_108
    if-eqz v1, :cond_1c4

    .line 21
    new-instance v6, Lc/f;

    invoke-direct {v6}, Lc/f;-><init>()V

    invoke-virtual {v6, p3}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v6, v3}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v6, v0}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v6, p0}, Lc/f;->b(Lc/e;)V

    new-instance p3, Lc/f;

    invoke-direct {p3}, Lc/f;-><init>()V

    invoke-virtual {p3, v2}, Lc/f;->b(Lc/e;)V

    invoke-virtual {p3, p2}, Lc/f;->b(Lc/e;)V

    new-instance p2, Lc/bc;

    invoke-direct {p2, p3, v5}, Lc/bc;-><init>(Lc/f;I)V

    invoke-virtual {v6, p2}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v6, p0}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v6, v1}, Lc/f;->b(Lc/e;)V

    if-eqz p4, :cond_13f

    new-instance p0, Lc/bf;

    const/4 p2, 0x3

    invoke-direct {p0, v4, p2, p4}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v6, p0}, Lc/f;->b(Lc/e;)V

    :cond_13f
    new-instance p0, Lc/bc;

    invoke-direct {p0, v6, v5}, Lc/bc;-><init>(Lc/f;I)V

    invoke-static {p0}, Lr/f;->c(Ljava/lang/Object;)Lr/f;

    move-result-object p0

    .line 22
    sget p2, Lt/a;->a:I

    .line 23
    :try_start_14a
    new-instance p2, Lc/ba;

    invoke-direct {p2, p1, v5}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {p2, p0}, Lc/ba;->j(Lc/e;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_155} :catch_1bb

    .line 24
    :try_start_155
    iget-object p1, p1, Lw/a;->a:Ljava/security/Signature;

    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_15b
    .catch Ljava/security/SignatureException; {:try_start_155 .. :try_end_15b} :catch_19f
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_15b} :catch_1bb

    .line 25
    :try_start_15b
    new-instance p2, Lc/f;

    invoke-direct {p2}, Lc/f;-><init>()V

    invoke-virtual {p2, p0}, Lc/f;->b(Lc/e;)V

    invoke-virtual {p2, v0}, Lc/f;->b(Lc/e;)V

    new-instance p0, Lc/ap;

    invoke-direct {p0, p1}, Lc/ap;-><init>([B)V

    invoke-virtual {p2, p0}, Lc/f;->b(Lc/e;)V

    new-instance p0, Lc/bc;

    invoke-direct {p0, p2, v5}, Lc/bc;-><init>(Lc/f;I)V

    .line 26
    instance-of p1, p0, Lr/b;

    if-eqz p1, :cond_17a

    check-cast p0, Lr/b;

    goto :goto_184

    :cond_17a
    new-instance p1, Lr/b;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p0

    invoke-direct {p1, p0}, Lr/b;-><init>(Lc/t;)V

    move-object p0, p1

    .line 27
    :goto_184
    iget-object p1, p0, Lr/b;->b:Lr/f;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_189} :catch_1bb

    .line 29
    invoke-virtual {p0}, Lc/m;->m()[B

    move-result-object p0

    .line 30
    const-string p1, "X509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0

    :catch_19f
    move-exception p0

    .line 31
    :try_start_1a0
    new-instance p1, Lv/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception obtaining signature: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lv/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1bb} :catch_1bb

    .line 32
    :catch_1bb
    move-exception p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot produce certificate signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_1c4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1cc
    move-exception p0

    .line 35
    const-string p1, "cannot create signer: "

    invoke-static {p1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lv/b;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lv/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 37
    :cond_1e4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unknown signature type requested: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1f9

    :goto_1f8
    throw p1

    :goto_1f9
    goto :goto_1f8
.end method
