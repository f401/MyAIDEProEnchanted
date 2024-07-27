.class public final Lcom/google/android/gms/internal/ads/zs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nq;


# instance fields
.field private final j6:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zs;->j6:Ljavax/crypto/SecretKey;

    return-void
.end method

.method private static j6([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 7

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/gt;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p0, v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final j6([B[B)[B
    .registers 10

    const/4 v6, 0x1

    const/16 v5, 0xc

    const/4 v2, 0x0

    array-length v0, p1

    const v1, 0x7fffffe3

    if-gt v0, v1, :cond_2

    array-length v0, p1

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x10

    new-array v4, v0, [B

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object v1

    invoke-static {v1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Ps;->FH:Lcom/google/android/gms/internal/ads/Ps;

    const-string v3, "AES/GCM/NoPadding"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zs;->j6([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zs;->j6:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v6, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    array-length v3, p1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x10

    if-ne v0, v1, :cond_1

    return-object v4

    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v3, "encryption failed; GCM tag must be %s bytes, but got only %s bytes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    array-length v2, p1

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
