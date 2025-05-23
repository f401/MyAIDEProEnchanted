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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    const/16 v1, 0x10

    if-eq p2, v0, :cond_14

    if-ne p2, v1, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV size should be either 12 or 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    iput p2, p0, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    array-length p2, p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ys;->FH:Ljavax/crypto/spec/SecretKeySpec;

    const-string p1, "AES/ECB/NOPADDING"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-array p2, v1, [B

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ys;->j6([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys;->j6:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ys;->j6([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys;->DW:[B

    return-void
.end method

.method private static DW([B[B)[B
    .registers 7

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    return-object v1
.end method

.method private final j6(Ljavax/crypto/Cipher;I[BII)[B
    .registers 12

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/16 v2, 0xf

    int-to-byte p2, p2

    aput-byte p2, v1, v2

    if-nez p5, :cond_16

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ys;->j6:[B

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/ys;->DW([B[B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_16
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    sub-int v3, p5, v2

    if-le v3, v0, :cond_38

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v0, :cond_31

    aget-byte v4, p2, v3

    add-int v5, p4, v2

    add-int/2addr v5, v3

    aget-byte v5, p3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_31
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    add-int/lit8 v2, v2, 0x10

    goto :goto_1c

    :cond_38
    add-int/2addr v2, p4

    add-int/2addr p4, p5

    invoke-static {p3, v2, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    array-length p4, p3

    if-ne p4, v0, :cond_48

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ys;->j6:[B

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/ys;->DW([B[B)[B

    move-result-object p3

    goto :goto_66

    :cond_48
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ys;->DW:[B

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p4

    :goto_4e
    array-length p5, p3

    if-ge v1, p5, :cond_5c

    aget-byte p5, p4, v1

    aget-byte v0, p3, v1

    xor-int/2addr p5, v0

    int-to-byte p5, p5

    aput-byte p5, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_5c
    array-length p5, p3

    array-length p3, p3

    aget-byte p3, p4, p3

    xor-int/lit16 p3, p3, 0x80

    int-to-byte p3, p3

    aput-byte p3, p4, p5

    move-object p3, p4

    :goto_66
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ys;->DW([B[B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method private static j6([B)[B
    .registers 7

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0xf

    if-ge v2, v3, :cond_1c

    aget-byte v3, p0, v2

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v3, v3, 0x1

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x7

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    move v2, v4

    goto :goto_6

    :cond_1c
    aget-byte v2, p0, v3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_25

    goto :goto_27

    :cond_25
    const/16 v1, 0x87

    :goto_27
    shl-int/lit8 p0, v2, 0x1

    xor-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-object v0
.end method


# virtual methods
.method public final j6([B[B)[B
    .registers 18

    move-object v6, p0

    move-object/from16 v7, p1

    array-length v0, v7

    iget v1, v6, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    const/16 v8, 0x10

    sub-int/2addr v2, v8

    if-gt v0, v2, :cond_80

    array-length v0, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    new-array v9, v0, [B

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object v3

    iget v0, v6, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    const/4 v10, 0x0

    invoke-static {v3, v10, v9, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "AES/ECB/NOPADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v11

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/ys;->FH:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v3

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ys;->j6(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v13

    if-nez p2, :cond_39

    new-array v0, v10, [B

    move-object v3, v0

    goto :goto_3b

    :cond_39
    move-object/from16 v3, p2

    :goto_3b
    const/4 v2, 0x1

    const/4 v4, 0x0

    array-length v5, v3

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ys;->j6(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v14

    const-string v0, "AES/CTR/NOPADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/ys;->FH:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v13}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v12, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v2, 0x0

    array-length v3, v7

    iget v5, v6, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    move-object/from16 v1, p1

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    const/4 v2, 0x2

    iget v4, v6, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    array-length v5, v7

    move-object v0, p0

    move-object v1, v11

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ys;->j6(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v0

    array-length v1, v7

    iget v2, v6, Lcom/google/android/gms/internal/ads/ys;->Hw:I

    :goto_6c
    if-ge v10, v8, :cond_7f

    add-int v3, v1, v2

    add-int/2addr v3, v10

    aget-byte v4, v14, v10

    aget-byte v5, v13, v10

    xor-int/2addr v4, v5

    aget-byte v5, v0, v10

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v9, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_6c

    :cond_7f
    return-object v9

    :cond_80
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_89

    :goto_88
    throw v0

    :goto_89
    goto :goto_88
.end method
