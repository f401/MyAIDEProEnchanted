.class public Lcom/baidu/mobstat/dh$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(I[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_27

    .line 40
    sget-object v0, Lcom/baidu/mobstat/dm;->a:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p0, :cond_27

    .line 41
    sget-object v0, Lcom/baidu/mobstat/dm;->a:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 42
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 44
    const-string p0, "AES/ECB/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 45
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 47
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 50
    :cond_27
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static b(I[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_27

    .line 64
    sget-object v0, Lcom/baidu/mobstat/dm;->a:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p0, :cond_27

    .line 65
    sget-object v0, Lcom/baidu/mobstat/dm;->a:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 66
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 68
    const-string p0, "AES/ECB/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 69
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 71
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 74
    :cond_27
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static c(I[B)Ljava/lang/String;
    .registers 2

    .line 79
    :try_start_0
    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->a(I[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/dk;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 84
    :catch_9
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method public static d(I[B)Ljava/lang/String;
    .registers 3

    .line 88
    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, ""

    goto :goto_21

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_21
    return-object p0
.end method
