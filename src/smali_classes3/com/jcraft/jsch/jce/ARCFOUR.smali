.class public Lcom/jcraft/jsch/jce/ARCFOUR;
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
    .registers 6

    array-length p3, p2

    const/16 v0, 0x10

    if-le p3, v0, :cond_c

    new-array p3, v0, [B

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p3

    :cond_c
    :try_start_c
    const-string p3, "RC4"

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    iput-object p3, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->j6:Ljavax/crypto/Cipher;

    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "RC4"

    invoke-direct {p3, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-class p2, Ljavax/crypto/Cipher;

    monitor-enter p2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_31

    :try_start_1e
    iget-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->j6:Ljavax/crypto/Cipher;

    if-nez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x2

    :goto_25
    invoke-virtual {p2, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-class p1, Ljavax/crypto/Cipher;

    monitor-exit p1

    return-void

    :catchall_2c
    move-exception p1

    const-class p2, Ljavax/crypto/Cipher;

    monitor-exit p2
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_2c

    :try_start_30
    throw p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    move-exception p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->j6:Ljavax/crypto/Cipher;

    throw p1
.end method

.method public j6([BII[BI)V
    .registers 12

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->j6:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    return-void
.end method
