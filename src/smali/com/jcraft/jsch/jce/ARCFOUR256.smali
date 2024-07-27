.class public Lcom/jcraft/jsch/jce/ARCFOUR256;
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

    const/16 v0, 0x20

    return v0
.end method

.method public j6(I[B[B)V
    .registers 11

    const/16 v3, 0x20

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p2

    if-le v2, v3, :cond_0

    new-array v2, v3, [B

    array-length v3, v2

    invoke-static {p2, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v2

    :cond_0
    :try_start_0
    const-string v2, "RC4"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->j6:Ljavax/crypto/Cipher;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "RC4"

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-class v3, Ljavax/crypto/Cipher;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->j6:Ljavax/crypto/Cipher;

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-class v1, Ljavax/crypto/Cipher;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [B

    move v6, v0

    :goto_1
    const/16 v0, 0x600

    if-lt v6, v0, :cond_2

    return-void

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->j6:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    const-class v1, Ljavax/crypto/Cipher;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->j6:Ljavax/crypto/Cipher;

    throw v0
.end method

.method public j6([BII[BI)V
    .registers 12

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->j6:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    return-void
.end method
