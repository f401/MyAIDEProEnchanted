.class public Lcom/aide/ui/build/android/H;
.super Ljava/security/KeyStoreSpi;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0x240fd8826efca527L
    .end annotation
.end field

.field private final Hw:Ljava/util/HashMap;
    .annotation runtime Labcd/ru;
        field = -0x282978f1e16c243dL
    .end annotation
.end field

.field private final VH:Ljava/util/HashMap;
    .annotation runtime Labcd/ru;
        field = -0x1a820c2284969694L
    .end annotation
.end field

.field private final Zo:Ljava/util/HashMap;
    .annotation runtime Labcd/ru;
        field = -0x39ef459e0f6f8d5bL
    .end annotation
.end field

.field private final v5:Ljava/util/HashMap;
    .annotation runtime Labcd/ru;
        field = -0x32d9162c0c9fed00L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/H;

    const-wide v1, 0x4b48d1ebae30c9L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xe1837c299b16f4L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/build/android/H;->Zo:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/build/android/H;->VH:Ljava/util/HashMap;
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v4, :cond_3c

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v3
.end method

.method private static j6(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1296bbadd9cb7c85L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x29bfb9841b3dfL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->read([B)I

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v3
.end method

.method private static j6(Ljava/io/DataOutputStream;Ljava/security/cert/Certificate;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x272521e572c322bdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x11a6f9214a9141f1L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x11a6f9214a9141f1L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method private static j6(Ljava/security/Key;[B)[B
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1a71147535052d3dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2082b683cc43857bL  # -9.586795906286647E151

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_76

    :cond_d
    :try_start_d
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x28

    new-array v3, v2, [B

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    :cond_2c
    array-length v8, v1

    if-ge v7, v8, :cond_52

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    array-length v8, v5

    invoke-virtual {v0, v5, v6, v8}, Ljava/security/MessageDigest;->digest([BII)I

    const/4 v8, 0x0

    :goto_3d
    array-length v9, v5

    if-ge v8, v9, :cond_2c

    array-length v9, v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_41} :catch_6b
    .catchall {:try_start_d .. :try_end_41} :catchall_76

    if-ge v7, v9, :cond_2c

    add-int/lit8 v9, v7, 0x14

    aget-byte v10, v5, v8

    aget-byte v11, v1, v7

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    :cond_52
    :try_start_52
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    sub-int/2addr v2, v4

    invoke-virtual {v0, v3, v2, v4}, Ljava/security/MessageDigest;->digest([BII)I

    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo;

    const-string v1, "1.3.6.1.4.1.42.2.17.1.1"

    invoke-direct {v0, v1, v3}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object p0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6a} :catch_6b
    .catchall {:try_start_52 .. :try_end_6a} :catchall_76

    return-object p0

    :catch_6b
    move-exception v0

    :try_start_6c
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v1, :cond_87

    const-wide v2, -0x2082b683cc43857bL  # -9.586795906286647E151

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    goto :goto_89

    :goto_88
    throw v0

    :goto_89
    goto :goto_88
.end method

.method private static j6([B[B)[B
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x341226c5cb3d1204L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1374626334544c98L  # 5.913157760303639E-215

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_7a

    :cond_d
    :try_start_d
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v0, p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>([B)V

    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v0

    const/16 v1, 0x14

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v1, [B

    array-length v5, v0

    sub-int/2addr v5, v1

    invoke-static {v0, v5, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v0

    add-int/lit8 v5, v5, -0x28

    new-array v6, v5, [B

    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    const/4 v8, 0x0

    :cond_31
    if-ge v8, v5, :cond_53

    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v7, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v2, v3, v1}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_6f
    .catchall {:try_start_d .. :try_end_3f} :catchall_7a

    const/4 v9, 0x0

    :goto_40
    if-ge v9, v1, :cond_31

    if-ge v8, v5, :cond_31

    aget-byte v10, v2, v9

    add-int/lit8 v11, v8, 0x14

    aget-byte v11, v0, v11

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v6, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    :cond_53
    :try_start_53
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v7, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v4, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_67

    return-object v6

    :cond_67
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "checksum mismatch"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_6f} :catch_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_7a

    :catch_6f
    move-exception v0

    :try_start_70
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v1, :cond_8b

    const-wide v2, 0x1374626334544c98L  # 5.913157760303639E-215

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8b
    goto :goto_8d

    :goto_8c
    throw v0

    :goto_8d
    goto :goto_8c
.end method

.method private static j6([C)[B
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x218827af47b7e2afL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xcbc311e24af9fbL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    array-length v6, p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-ge v4, v6, :cond_28

    add-int/lit8 v6, v5, 0x1

    aget-char v7, p0, v4

    ushr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    add-int/lit8 v5, v6, 0x1

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_28
    return-object v3

    :catchall_29
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v4, :cond_31

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    goto :goto_33

    :goto_32
    throw v3

    :goto_33
    goto :goto_32
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .registers 5

    const-wide v0, 0x36dacb7a00fc71b0L  # 1.8773777332399296E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x40210312c12f651fL  # 8.506002461467288

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x4b50080378886cb5L  # 6.141975075381272E54

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 6

    const-wide v0, -0x18744b71c43c8b19L  # -6.172058820635131E190

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 7

    const-wide v0, -0x9bc6c0100164ebcL  # -4.81633856124791E261

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_31

    if-eqz v4, :cond_16

    return-object v3

    :cond_2f
    const/4 p1, 0x0

    return-object p1

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v2

    :goto_3b
    goto :goto_3a
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 6

    const-wide v0, 0x7514d1ad09ee270L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->Zo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 6

    const-wide v0, 0x10f74827142910fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->VH:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x103f0ffabc65318dL  # -2.0543671790648866E230

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p1, 0x0

    return-object p1

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p2}, Lcom/aide/ui/build/android/H;->j6([C)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/H;->j6([B[B)[B

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/aide/ui/build/android/H;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    array-length v2, v1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_57

    if-lez v2, :cond_51

    const/4 v2, 0x0

    :try_start_2e
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_45
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2e .. :try_end_45} :catch_46
    .catchall {:try_start_2e .. :try_end_45} :catchall_57

    return-object p1

    :catch_46
    move-exception v0

    :try_start_47
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_57

    return-object v1

    :catchall_57
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v1, :cond_68

    const-wide v2, -0x103f0ffabc65318dL  # -2.0543671790648866E230

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_68
    throw v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0xba8a0b3922a2fd9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0xf91a6edbdbd2099L  # -3.769257434440884E233

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x482888e0e4727cdL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-eqz p2, :cond_1b

    invoke-static {p2}, Lcom/aide/ui/build/android/H;->j6([C)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_1b
    const-string v1, "Mighty Aphrodite"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/aide/ui/build/android/H;->Zo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/aide/ui/build/android/H;->VH:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_d9

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, p1, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v2, -0x1120113

    if-ne v0, v2, :cond_d1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->ensureCapacity(I)V

    if-ltz v0, :cond_c9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_64
    if-ge v3, v0, :cond_c1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/aide/ui/build/android/H;->VH:Ljava/util/HashMap;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    if-eq v4, v6, :cond_99

    const/4 v6, 0x2

    if-ne v4, v6, :cond_91

    iget-object v4, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/aide/ui/build/android/H;->j6(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_be

    :cond_91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "malformed key store"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->read([B)I

    iget-object v6, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    new-array v6, v4, [Ljava/security/cert/Certificate;

    const/4 v7, 0x0

    :goto_ae
    if-ge v7, v4, :cond_b9

    invoke-static {v1}, Lcom/aide/ui/build/android/H;->j6(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_ae

    :cond_b9
    iget-object v4, p0, Lcom/aide/ui/build/android/H;->Zo:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_c1
    const/16 v0, 0x14

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_d9

    :cond_c9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "negative entry count"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a JavaKeyStore"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d9
    .catchall {:try_start_0 .. :try_end_d9} :catchall_da

    :cond_d9
    :goto_d9
    return-void

    :catchall_da
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v1, :cond_eb

    const-wide v2, 0x482888e0e4727cdL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_eb
    goto :goto_ed

    :goto_ec
    throw v0

    :goto_ed
    goto :goto_ec
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x52c2885653cb17cL  # -4.610150785056554E283

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    if-eqz p2, :cond_33

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->VH:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_32
    return-void

    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_39
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is a private key entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_55
    .catchall {:try_start_0 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v1, :cond_66

    const-wide v2, -0x52c2885653cb17cL  # -4.610150785056554E283

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_66
    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, -0xb289dbc4b333091L  # -6.857602128113539E254

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    invoke-static {p3}, Lcom/aide/ui/build/android/H;->j6([C)[B

    move-result-object v1

    invoke-static {p2, v1}, Lcom/aide/ui/build/android/H;->j6(Ljava/security/Key;[B)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2e

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->Zo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_2e
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->Zo:Ljava/util/HashMap;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->VH:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4d
    return-void

    :cond_4e
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a trusted certificate entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6a
    .catchall {:try_start_0 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v1, :cond_7d

    const-wide v2, -0xb289dbc4b333091L  # -6.857602128113539E254

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x1e6018c5f2032c00L  # -1.7941234963580066E162

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_6f

    if-nez v0, :cond_53

    :try_start_18
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v0, p2}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_4a
    .catchall {:try_start_18 .. :try_end_1d} :catchall_6f

    :try_start_1d
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2a

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->Zo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_2a
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->Zo:Ljava/util/HashMap;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    iget-object v0, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->VH:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void

    :catch_4a
    move-exception v0

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "encoded key is not an EncryptedPrivateKeyInfo"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is a trusted certificate entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6f
    .catchall {:try_start_1d .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v1, :cond_81

    const-wide v2, -0x1e6018c5f2032c00L  # -1.7941234963580066E162

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_81
    throw v0
.end method

.method public engineSize()I
    .registers 5

    const-wide v0, -0x1b2eb90c0f91f5fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/H;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x13b25032975de3a4L  # -4.996999166534811E213

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p2}, Lcom/aide/ui/build/android/H;->j6([C)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const-string v1, "Mighty Aphrodite"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/security/DigestOutputStream;

    invoke-direct {v2, p1, v0}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v2, -0x1120113

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Lcom/aide/ui/build/android/H;->FH:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_47
    :goto_47
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aide/ui/build/android/H;->VH:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v5, p0, Lcom/aide/ui/build/android/H;->Hw:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    invoke-static {v1, v4}, Lcom/aide/ui/build/android/H;->j6(Ljava/io/DataOutputStream;Ljava/security/cert/Certificate;)V

    goto :goto_47

    :cond_7c
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aide/ui/build/android/H;->VH:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v5, p0, Lcom/aide/ui/build/android/H;->v5:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v6, v5

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v5, p0, Lcom/aide/ui/build/android/H;->Zo:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/Certificate;

    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v5, 0x0

    :goto_ae
    array-length v6, v4

    if-ge v5, v6, :cond_47

    aget-object v6, v4, v5

    invoke-static {v1, v6}, Lcom/aide/ui/build/android/H;->j6(Ljava/io/DataOutputStream;Ljava/security/cert/Certificate;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_ae

    :cond_b9
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_c0
    .catchall {:try_start_0 .. :try_end_c0} :catchall_c1

    return-void

    :catchall_c1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/H;->DW:Z

    if-eqz v1, :cond_d2

    const-wide v2, -0x13b25032975de3a4L  # -4.996999166534811E213

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d2
    goto :goto_d4

    :goto_d3
    throw v0

    :goto_d4
    goto :goto_d3
.end method
