.class public Lcom/jcraft/jsch/jce/TripleDESCBC;
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

    const/4 v0, 0x1

    return v0
.end method

.method public FH()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public j6()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public j6(I[B[B)V
    .registers 7

    array-length v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_c

    new-array v0, v2, [B

    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_c
    array-length v0, p2

    const/16 v2, 0x18

    if-le v0, v2, :cond_17

    new-array v0, v2, [B

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    :cond_17
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DESede/CBC/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NoPadding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->j6:Ljavax/crypto/Cipher;

    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string p2, "DESede"

    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    const-class v0, Ljavax/crypto/Cipher;

    monitor-enter v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3f} :catch_57

    :try_start_3f
    iget-object v0, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->j6:Ljavax/crypto/Cipher;

    if-nez p1, :cond_45

    const/4 p1, 0x1

    goto :goto_46

    :cond_45
    const/4 p1, 0x2

    :goto_46
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-class p1, Ljavax/crypto/Cipher;

    monitor-exit p1

    return-void

    :catchall_52
    move-exception p1

    const-class p2, Ljavax/crypto/Cipher;

    monitor-exit p2
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_52

    :try_start_56
    throw p1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_57} :catch_57

    :catch_57
    move-exception p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->j6:Ljavax/crypto/Cipher;

    throw p1
.end method

.method public j6([BII[BI)V
    .registers 12

    iget-object v0, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->j6:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    return-void
.end method
