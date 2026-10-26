.class public final Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;[B)I
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sub-int v2, v1, v0

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static b(Lp/c;Ljava/security/KeyPair;Ljava/util/Date;Ljava/util/Date;Ljava/math/BigInteger;)Ljava/security/cert/X509Certificate;
    .locals 14

    .line 1
    const-string v2, "SHA1With"

    invoke-static {v2}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    .line 3
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lr/e;->c(Ljava/lang/Object;)Lr/e;

    move-result-object v6

    .line 4
    new-instance v7, Lw/b;

    new-instance v3, Lb/b;

    invoke-direct {v3}, Lb/b;-><init>()V

    invoke-direct {v7, v3}, Lw/b;-><init>(Lb/b;)V

    new-instance v3, Lv/a;

    .line 5
    invoke-static {v2}, Lx/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lv/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/n;

    if-eqz v2, :cond_9

    sget-object v4, Lv/a;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lr/a;

    invoke-direct {v3, v2}, Lr/a;-><init>(Lc/n;)V

    move-object v4, v3

    :goto_0
    sget-object v3, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ln/a;->a:Lc/n;

    .line 6
    :cond_0
    iget-object v3, v4, Lr/a;->a:Lc/n;

    .line 7
    sget-object v8, Ln/a;->g:Lc/n;

    invoke-virtual {v3, v8}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget-object v2, v4, Lr/a;->b:Lc/e;

    .line 9
    check-cast v2, Ln/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :goto_1
    :try_start_0
    invoke-virtual {v7, v4}, Lw/b;->h(Lr/a;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 11
    new-instance v7, Lw/a;

    invoke-direct {v7, v2}, Lw/a;-><init>(Ljava/security/Signature;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    new-instance v8, Lr/g;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lr/g;-><init>(Ljava/util/Date;)V

    new-instance v9, Lr/g;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lr/g;-><init>(Ljava/util/Date;)V

    .line 13
    new-instance v10, Lc/bf;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v5, Lc/k;

    const-wide/16 v12, 0x2

    invoke-direct {v5, v12, v13}, Lc/k;-><init>(J)V

    invoke-direct {v10, v2, v3, v5}, Lc/bf;-><init>(ZILc/e;)V

    .line 14
    new-instance v11, Lc/k;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Lc/k;-><init>(Ljava/math/BigInteger;)V

    .line 15
    new-instance v12, Lp/d;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Lp/d;-><init>(I)V

    .line 16
    iget-object v2, v12, Lp/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 17
    iget-object v2, v12, Lp/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v13, v2, [Lr/c;

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    iget-object v2, v12, Lp/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v5, v2, :cond_4

    iget-object v2, v12, Lp/d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Hashtable;

    iget-object v3, v12, Lp/d;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/c;

    aput-object v2, v13, v5

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 5
    :cond_1
    sget-object v4, Lv/a;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lr/a;

    sget-object v8, Lv/a;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e;

    invoke-direct {v4, v2, v3}, Lr/a;-><init>(Lc/n;Lc/e;)V

    goto/16 :goto_0

    :cond_2
    new-instance v3, Lr/a;

    sget-object v4, Lc/ax;->a:Lc/ax;

    invoke-direct {v3, v2, v4}, Lr/a;-><init>(Lc/n;Lc/e;)V

    move-object v4, v3

    goto/16 :goto_0

    .line 9
    :cond_3
    sget-object v3, Lv/a;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/n;

    goto/16 :goto_1

    .line 17
    :cond_4
    new-instance v3, Lr/d;

    invoke-direct {v3, v13}, Lr/d;-><init>([Lr/c;)V

    .line 18
    sget-object v2, Lr/c;->a:Lc/n;

    .line 19
    iget-object v5, v3, Lr/d;->a:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/c;

    if-eqz v2, :cond_a

    .line 20
    iget-boolean v2, v2, Lr/c;->c:Z

    move-object v2, v3

    :goto_3
    if-eqz v6, :cond_8

    .line 21
    new-instance v3, Lc/f;

    invoke-direct {v3}, Lc/f;-><init>()V

    invoke-virtual {v3, v10}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v3, v11}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v3, v4}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v3, p0}, Lc/f;->b(Lc/e;)V

    new-instance v5, Lc/f;

    invoke-direct {v5}, Lc/f;-><init>()V

    invoke-virtual {v5, v8}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v5, v9}, Lc/f;->b(Lc/e;)V

    new-instance v8, Lc/bc;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Lc/bc;-><init>(Lc/f;I)V

    invoke-virtual {v3, v8}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v3, p0}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v3, v6}, Lc/f;->b(Lc/e;)V

    if-eqz v2, :cond_5

    new-instance v5, Lc/bf;

    const/4 v6, 0x1

    const/4 v8, 0x3

    invoke-direct {v5, v6, v8, v2}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v3, v5}, Lc/f;->b(Lc/e;)V

    :cond_5
    new-instance v2, Lc/bc;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lc/bc;-><init>(Lc/f;I)V

    invoke-static {v2}, Lr/f;->c(Ljava/lang/Object;)Lr/f;

    move-result-object v2

    .line 22
    sget v3, Lt/a;->a:I

    .line 23
    :try_start_1
    new-instance v3, Lc/ba;

    const/4 v5, 0x0

    invoke-direct {v3, v7, v5}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {v3, v2}, Lc/ba;->j(Lc/e;)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    :try_start_2
    iget-object v3, v7, Lw/a;->a:Ljava/security/Signature;

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 25
    :try_start_3
    new-instance v5, Lc/f;

    invoke-direct {v5}, Lc/f;-><init>()V

    invoke-virtual {v5, v2}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v5, v4}, Lc/f;->b(Lc/e;)V

    new-instance v2, Lc/ap;

    invoke-direct {v2, v3}, Lc/ap;-><init>([B)V

    invoke-virtual {v5, v2}, Lc/f;->b(Lc/e;)V

    new-instance v2, Lc/bc;

    const/4 v3, 0x0

    invoke-direct {v2, v5, v3}, Lc/bc;-><init>(Lc/f;I)V

    .line 26
    instance-of v3, v2, Lr/b;

    if-eqz v3, :cond_7

    check-cast v2, Lr/b;

    .line 27
    :goto_4
    iget-object v3, v2, Lr/b;->b:Lr/f;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 29
    invoke-virtual {v2}, Lc/m;->m()[B

    move-result-object v2

    .line 30
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    return-object v2

    .line 20
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 26
    :cond_7
    :try_start_4
    new-instance v3, Lr/b;

    invoke-static {v2}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v2

    invoke-direct {v3, v2}, Lr/b;-><init>(Lc/t;)V

    move-object v2, v3

    goto :goto_4

    .line 30
    :catch_0
    move-exception v2

    .line 31
    new-instance v3, Lv/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception obtaining signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lv/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 32
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot produce certificate signature"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v2

    .line 35
    const-string v3, "cannot create signer: "

    invoke-static {v3}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 36
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lv/b;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lv/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 37
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown signature type requested: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    move-object v2, v3

    goto/16 :goto_3
.end method
