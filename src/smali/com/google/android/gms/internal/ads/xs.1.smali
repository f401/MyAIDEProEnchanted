.class public final Lcom/google/android/gms/internal/ads/xs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Zs;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final j6:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>([BI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xs;->j6:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v0, Lcom/google/android/gms/internal/ads/Ps;->FH:Lcom/google/android/gms/internal/ads/Ps;

    const-string v1, "AES/CTR/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/xs;->FH:I

    const/16 v0, 0xc

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/xs;->FH:I

    if-gt p2, v0, :cond_0

    iput p2, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    return-void

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid IV size"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final j6([B)[B
    .registers 10

    const v4, 0x7fffffff

    const/4 v2, 0x0

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    sub-int v3, v4, v1

    if-gt v0, v3, :cond_1

    array-length v0, p1

    add-int/2addr v0, v1

    new-array v4, v0, [B

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    iget v5, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    sget-object v0, Lcom/google/android/gms/internal/ads/Ps;->FH:Lcom/google/android/gms/internal/ads/Ps;

    const-string v6, "AES/CTR/NoPadding"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    iget v6, p0, Lcom/google/android/gms/internal/ads/xs;->FH:I

    new-array v6, v6, [B

    iget v7, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    invoke-static {v1, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/xs;->j6:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    if-ne v0, v3, :cond_0

    return-object v4

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "stored output\'s length does not match input\'s length"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "plaintext length can not exceed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
