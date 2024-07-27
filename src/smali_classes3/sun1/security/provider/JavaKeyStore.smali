.class abstract Lsun1/security/provider/JavaKeyStore;
.super Ljava/security/KeyStoreSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun1/security/provider/JavaKeyStore$CaseExactJKS;,
        Lsun1/security/provider/JavaKeyStore$JKS;,
        Lsun1/security/provider/JavaKeyStore$KeyEntry;,
        Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    return-void
.end method

.method private getPreKeyedHash([C)Ljava/security/MessageDigest;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    array-length v0, p1

    mul-int/lit8 v4, v0, 0x2

    new-array v5, v4, [B

    move v0, v1

    move v2, v1

    :goto_0
    array-length v6, p1

    if-lt v2, v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_0

    const-string v0, "Mighty Aphrodite"

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    return-object v3

    :cond_0
    int-to-byte v2, v1

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v0, 0x1

    aget-char v7, p1, v2

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    add-int/lit8 v0, v6, 0x1

    aget-char v7, p1, v2

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method abstract convertAlias(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v1, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 4

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    if-eqz v1, :cond_0

    check-cast v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object v0, v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    iget-object v1, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    if-eqz v3, :cond_2

    check-cast v1, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object v1, v1, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    :goto_1
    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    check-cast v1, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    iget-object v3, v1, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_1
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    if-eqz v1, :cond_0

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    iget-object v1, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    goto :goto_0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 6

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Date;

    check-cast v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object v0, v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Date;

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    iget-object v0, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Lsun1/security/provider/KeyProtector;

    invoke-direct {v1, p2}, Lsun1/security/provider/KeyProtector;-><init>([C)V

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    iget-object v0, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    :try_start_0
    new-instance v2, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v2, v0}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v2}, Lsun1/security/provider/KeyProtector;->recover(Lsun1/security/pkcs/EncryptedPrivateKeyInfo;)Ljava/security/Key;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Private key not stored as PKCS #8 EncryptedPrivateKeyInfo"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Password must not be null"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v10

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    monitor-exit v10

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lsun1/security/provider/JavaKeyStore;->getPreKeyedHash([C)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/security/DigestInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v3

    move-object v9, v4

    :goto_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    const v4, -0x1120113

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    if-eq v11, v3, :cond_2

    const/4 v3, 0x2

    if-ne v11, v3, :cond_f

    :cond_2
    const/4 v3, 0x1

    if-ne v11, v3, :cond_4

    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    const/4 v3, 0x0

    move-object v7, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    const/4 v3, 0x0

    move v6, v3

    :goto_2
    if-lt v6, v12, :cond_6

    if-eqz p2, :cond_0

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v2, v3

    new-array v4, v2, [B

    invoke-virtual {v9, v4}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v2, 0x0

    :goto_3
    array-length v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v5, :cond_0

    aget-byte v5, v3, v2

    aget-byte v6, v4, v2

    if-ne v5, v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    move-object v8, v3

    move-object v9, v4

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/util/Hashtable;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    const/4 v4, 0x0

    move-object v7, v3

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Password verification failed"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Keystore was tampered with, or password was incorrect"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_6
    :try_start_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b

    new-instance v13, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    invoke-direct {v13, v2}, Lsun1/security/provider/JavaKeyStore$KeyEntry;-><init>(Lsun1/security/provider/JavaKeyStore$KeyEntry;)V

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v3, v13, Lsun1/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, v13, Lsun1/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, v13, Lsun1/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    invoke-virtual {v9, v3}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v15

    if-lez v15, :cond_7

    :try_start_5
    new-array v3, v15, [Ljava/security/cert/Certificate;

    iput-object v3, v13, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    const/4 v5, 0x0

    move-object v3, v4

    :goto_4
    if-lt v5, v15, :cond_8

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v4, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    :goto_5
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_2

    :catch_0
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Too many certificates in chain"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    const/4 v2, 0x2

    if-ne v11, v2, :cond_9

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v7, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertificateFactory;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v2

    :cond_9
    :goto_6
    :try_start_7
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v9, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, v13, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v16

    aput-object v16, v2, v5

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    add-int/lit8 v4, v5, 0x1

    const/4 v2, 0x0

    move v5, v4

    goto :goto_4

    :cond_a
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    goto :goto_6

    :catch_1
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Certificate too big"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Keysize too big"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v2, 0x2

    if-ne v3, v2, :cond_e

    new-instance v5, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;-><init>(Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;)V

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v5, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->date:Ljava/util/Date;

    const/4 v2, 0x2

    if-ne v11, v2, :cond_c

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertificateFactory;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v4, v2

    :cond_c
    :goto_7
    :try_start_9
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v9, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v14}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    iput-object v2, v5, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v2, v13, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    goto/16 :goto_5

    :cond_d
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catch_3
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Certificate too big"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unrecognized keystore entry"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid keystore format"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v1, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;-><init>(Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;)V

    iput-object p2, v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->date:Ljava/util/Date;

    iget-object v2, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Cannot overwrite own certificate"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lsun1/security/provider/JavaKeyStore$KeyEntry;-><init>(Lsun1/security/provider/JavaKeyStore$KeyEntry;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;

    new-instance v0, Lsun1/security/provider/KeyProtector;

    invoke-direct {v0, p3}, Lsun1/security/provider/KeyProtector;-><init>([C)V

    invoke-virtual {v0, p2}, Lsun1/security/provider/KeyProtector;->protect(Ljava/security/Key;)[B

    move-result-object v0

    iput-object v0, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p4, :cond_0

    array-length v0, p4

    if-eqz v0, :cond_0

    invoke-virtual {p4}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :goto_0
    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Key protection algorithm not found"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Cannot store non-PrivateKeys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v1, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v0, p2}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lsun1/security/provider/JavaKeyStore$KeyEntry;-><init>(Lsun1/security/provider/JavaKeyStore$KeyEntry;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    invoke-virtual {p3}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :goto_0
    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lsun1/security/provider/JavaKeyStore;->convertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "key is not encoded as EncryptedPrivateKeyInfo"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public engineSize()I
    .registers 2

    iget-object v0, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v7, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    monitor-enter v7

    if-eqz p2, :cond_4

    :try_start_0
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lsun1/security/provider/JavaKeyStore;->getPreKeyedHash([C)Ljava/security/MessageDigest;

    move-result-object v8

    new-instance v9, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/security/DigestOutputStream;

    invoke-direct {v2, p1, v8}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    invoke-direct {v9, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v2, -0x1120113

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    monitor-exit v7

    return-void

    :cond_1
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lsun1/security/provider/JavaKeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    move-object v2, v0

    iget-object v2, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object v0, v3

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    move-object v2, v0

    iget-object v2, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    array-length v2, v2

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v0, v3

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    move-object v2, v0

    iget-object v2, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->protectedPrivKey:[B

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->write([B)V

    move-object v0, v3

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    move-object v2, v0

    iget-object v2, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez v2, :cond_2

    move v6, v5

    :goto_1
    invoke-virtual {v9, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v4, v5

    :goto_2
    if-ge v4, v6, :cond_0

    move-object v0, v3

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    move-object v2, v0

    iget-object v2, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v11

    move-object v0, v3

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    move-object v2, v0

    iget-object v2, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length v2, v11

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_2
    move-object v0, v3

    check-cast v0, Lsun1/security/provider/JavaKeyStore$KeyEntry;

    move-object v2, v0

    iget-object v2, v2, Lsun1/security/provider/JavaKeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v2, v2

    move v6, v2

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    move-object v2, v0

    iget-object v2, v2, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object v0, v3

    check-cast v0, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    move-object v2, v0

    iget-object v2, v2, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    check-cast v3, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;

    iget-object v3, v3, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length v3, v2

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
