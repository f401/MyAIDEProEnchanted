.class public Lcom/jcraft/jsch/jce/PBKDF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/PBKDF;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([B[BII)[B
    .registers 8

    array-length v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-lt v1, v2, :cond_22

    :try_start_7
    new-instance p1, Ljavax/crypto/spec/PBEKeySpec;

    mul-int/lit8 p4, p4, 0x8

    invoke-direct {p1, v0, p2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string p2, "PBKDF2WithHmacSHA1"

    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1
    :try_end_1c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_7 .. :try_end_1c} :catch_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p1

    goto :goto_20

    :catch_1f
    move-exception p1

    :goto_20
    const/4 p1, 0x0

    return-object p1

    :cond_22
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
