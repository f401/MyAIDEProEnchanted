.class public Lcom/jcraft/jsch/jce/ARCFOUR128;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# instance fields
.field private j6:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public FH()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public j6()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public j6(I[B[B)V
    .registers 12

    array-length p3, p2

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-le p3, v1, :cond_c

    new-array p3, v1, [B

    invoke-static {p2, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p3

    :cond_c
    :try_start_c
    const-string p3, "RC4"

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    iput-object p3, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->j6:Ljavax/crypto/Cipher;

    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "RC4"

    invoke-direct {p3, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-class p2, Ljavax/crypto/Cipher;

    monitor-enter p2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_45

    :try_start_1e
    iget-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->j6:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    if-nez p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x2

    :goto_26
    invoke-virtual {p2, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-class p1, Ljavax/crypto/Cipher;

    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_40

    :try_start_2c
    new-array p1, v1, [B

    :goto_2e
    const/16 p2, 0x600

    if-lt v0, p2, :cond_33

    return-void

    :cond_33
    iget-object v2, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->j6:Ljavax/crypto/Cipher;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3d} :catch_45

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :catchall_40
    move-exception p1

    :try_start_41
    const-class p2, Ljavax/crypto/Cipher;

    monitor-exit p2
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_40

    :try_start_44
    throw p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_45

    :catch_45
    move-exception p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->j6:Ljavax/crypto/Cipher;

    goto :goto_4b

    :goto_4a
    throw p1

    :goto_4b
    goto :goto_4a
.end method

.method public j6([BII[BI)V
    .registers 12

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->j6:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    return-void
.end method
