.class public final Lcom/google/android/gms/internal/ads/_s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/yq;


# instance fields
.field private final DW:I

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/security/Key;

.field private j6:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    if-lt p3, v0, :cond_94

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6ca99674

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_31

    const v1, 0x176240ee

    if-eq v0, v1, :cond_27

    const v1, 0x17624bb1

    if-eq v0, v1, :cond_1d

    goto :goto_3b

    :cond_1d
    const-string v0, "HMACSHA512"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x2

    goto :goto_3c

    :cond_27
    const-string v0, "HMACSHA256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_31
    const-string v0, "HMACSHA1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, -0x1

    :goto_3c
    const-string v1, "tag size too big"

    if-eqz v0, :cond_76

    if-eq v0, v3, :cond_6b

    if-eq v0, v2, :cond_60

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "unknown Hmac algorithm: "

    if-eqz p2, :cond_55

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5a

    :cond_55
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5a
    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_60
    const/16 v0, 0x40

    if-gt p3, v0, :cond_65

    goto :goto_7a

    :cond_65
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6b
    const/16 v0, 0x20

    if-gt p3, v0, :cond_70

    goto :goto_7a

    :cond_70
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    const/16 v0, 0x14

    if-gt p3, v0, :cond_8e

    :goto_7a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/_s;->FH:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/_s;->DW:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/_s;->Hw:Ljava/security/Key;

    sget-object p3, Lcom/google/android/gms/internal/ads/Ps;->Hw:Lcom/google/android/gms/internal/ads/Ps;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Mac;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/_s;->j6:Ljavax/crypto/Mac;

    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    return-void

    :cond_8e
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_94
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small, need at least 10 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final j6([B)[B
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_s;->j6:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_19

    :catch_9
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/ads/Ps;->Hw:Lcom/google/android/gms/internal/ads/Ps;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_s;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_s;->Hw:Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    :goto_19
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/_s;->DW:I

    new-array p1, p1, [B

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/_s;->DW:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
