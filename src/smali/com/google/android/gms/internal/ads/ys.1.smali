.class public final Lcom/google/android/gms/internal/ads/ys;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nq;


# instance fields
.field private final DW:[B

.field private final FH:Ljavax/crypto/spec/SecretKeySpec;

.field private final Hw:I

.field private final j6:[B


# direct methods
.method public constructor <init>([BI)V
    .registers 7

    const/16 v3, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    if-ne p2, v3, :cond_1

    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->FH:Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES/ECB/NOPADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ys;->FH:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-array v1, v3, [B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ys;->j6([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->j6:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->j6:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ys;->j6([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->DW:[B

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV size should be either 12 or 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static DW([B[B)[B
    .registers 7

    array-length v1, p0

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private final j6(Ljavax/crypto/Cipher;I[BII)[B
    .registers 13

    const/4 v0, 0x0

    const/16 v6, 0x10

    new-array v1, v6, [B

    const/16 v2, 0xf

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->j6:[B

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ys;->DW([B[B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    move-object v2, v1

    move v3, v0

    :goto_1
    sub-int v1, p5, v3

    if-le v1, v6, :cond_2

    move v1, v0

    :goto_2
    if-ge v1, v6, :cond_1

    aget-byte v4, v2, v1

    add-int v5, p4, v3

    add-int/2addr v5, v1

    aget-byte v5, p3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    add-int/lit8 v3, v3, 0x10

    move-object v2, v1

    goto :goto_1

    :cond_2
    add-int v1, v3, p4

    add-int v3, p4, p5

    invoke-static {p3, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    array-length v1, v3

    if-ne v1, v6, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->j6:[B

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/ys;->DW([B[B)[B

    move-result-object v0

    :goto_3
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ys;->DW([B[B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ys;->DW:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-byte v4, v1, v0

    aget-byte v5, v3, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    array-length v0, v3

    array-length v3, v3

    aget-byte v3, v1, v3

    xor-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    move-object v0, v1

    goto :goto_3
.end method

.method private static j6([B)[B
    .registers 8

    const/16 v6, 0xf

    const/4 v0, 0x0

    const/16 v1, 0x10

    new-array v3, v1, [B

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_0

    aget-byte v4, p0, v1

    add-int/lit8 v2, v1, 0x1

    shl-int/lit8 v4, v4, 0x1

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x7

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    aget-byte v1, p0, v6

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, v6

    return-object v3

    :cond_1
    const/16 v0, 0x87

    goto :goto_1
.end method


# virtual methods
.method public final j6([B[B)[B
    .registers 15

    const/4 v11, 0x1

    const/4 v2, 0x0

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x10

    if-gt v0, v3, :cond_0

    array-length v0, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    new-array v9, v0, [B

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    invoke-static {v3, v2, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "AES/ECB/NOPADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->FH:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v11, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v5, v3

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ys;->j6(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v0

    if-nez p2, :cond_2

    new-array v6, v2, [B

    :goto_0
    array-length v8, v6

    move-object v3, p0

    move-object v4, v1

    move v5, v11

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/ys;->j6(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v10

    const-string v3, "AES/CTR/NOPADDING"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ys;->FH:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v11, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length v6, p1

    iget v8, p0, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    move-object v4, p1

    move v5, v2

    move-object v7, v9

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    const/4 v5, 0x2

    iget v7, p0, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    array-length v8, p1

    move-object v3, p0

    move-object v4, v1

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/ys;->j6(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v1

    array-length v3, p1

    iget v4, p0, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    :goto_1
    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    add-int v5, v3, v4

    add-int/2addr v5, v2

    aget-byte v6, v10, v2

    aget-byte v7, v0, v2

    xor-int/2addr v6, v7

    aget-byte v7, v1, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v9, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v9

    :cond_2
    move-object v6, p2

    goto :goto_0
.end method
