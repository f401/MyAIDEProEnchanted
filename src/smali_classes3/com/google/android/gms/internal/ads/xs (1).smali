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

    sget-object p1, Lcom/google/android/gms/internal/ads/Ps;->FH:Lcom/google/android/gms/internal/ads/Ps;

    const-string v0, "AES/CTR/NoPadding"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xs;->FH:I

    const/16 v0, 0xc

    if-lt p2, v0, :cond_29

    if-gt p2, p1, :cond_29

    iput p2, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    return-void

    :cond_29
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid IV size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final j6([B)[B
    .registers 11

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_4b

    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, p1

    iget v7, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    sget-object v2, Lcom/google/android/gms/internal/ads/Ps;->FH:Lcom/google/android/gms/internal/ads/Ps;

    const-string v4, "AES/CTR/NoPadding"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    iget v4, p0, Lcom/google/android/gms/internal/ads/xs;->FH:I

    new-array v4, v4, [B

    iget v5, p0, Lcom/google/android/gms/internal/ads/xs;->DW:I

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xs;->j6:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, v8

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne p1, v8, :cond_43

    return-object v0

    :cond_43
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "stored output\'s length does not match input\'s length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2b

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "plaintext length can not exceed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
