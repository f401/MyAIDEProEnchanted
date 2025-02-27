.class public final Lcom/blankj/utilcode/util/EncryptUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decrypt3DES([B[BLjava/lang/String;[B)[B
    .registers 10

    const-string v2, "DESede"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptAES([B[BLjava/lang/String;[B)[B
    .registers 10

    const-string v2, "AES"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64AES([B[BLjava/lang/String;[B)[B
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptAES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64DES([B[BLjava/lang/String;[B)[B
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptDES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64RSA([B[BILjava/lang/String;)[B
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptRSA([B[BILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64_3DES([B[BLjava/lang/String;[B)[B
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decrypt3DES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptDES([B[BLjava/lang/String;[B)[B
    .registers 10

    const-string v2, "DES"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexString3DES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decrypt3DES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexStringAES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptAES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexStringDES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptDES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexStringRSA(Ljava/lang/String;[BILjava/lang/String;)[B
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptRSA([B[BILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptRSA([B[BILjava/lang/String;)[B
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->rsaTemplate([B[BILjava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt3DES([B[BLjava/lang/String;[B)[B
    .registers 10

    const-string v2, "DESede"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt3DES2Base64([B[BLjava/lang/String;[B)[B
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encrypt3DES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt3DES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encrypt3DES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptAES([B[BLjava/lang/String;[B)[B
    .registers 10

    const-string v2, "AES"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptAES2Base64([B[BLjava/lang/String;[B)[B
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptAES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptAES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptAES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptDES([B[BLjava/lang/String;[B)[B
    .registers 10

    const-string v2, "DES"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptDES2Base64([B[BLjava/lang/String;[B)[B
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptDES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptDES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptDES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacMD5([B[B)[B
    .registers 3

    const-string v0, "HmacMD5"

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_10
    const-string v0, ""

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacMD5ToString([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static encryptHmacMD5ToString([B[B)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacMD5([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA1([B[B)[B
    .registers 3

    const-string v0, "HmacSHA1"

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA1ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_10
    const-string v0, ""

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA1ToString([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static encryptHmacSHA1ToString([B[B)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA1([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA224([B[B)[B
    .registers 3

    const-string v0, "HmacSHA224"

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA224ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_10
    const-string v0, ""

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA224ToString([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static encryptHmacSHA224ToString([B[B)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA224([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA256([B[B)[B
    .registers 3

    const-string v0, "HmacSHA256"

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA256ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_10
    const-string v0, ""

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA256ToString([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static encryptHmacSHA256ToString([B[B)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA256([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA384([B[B)[B
    .registers 3

    const-string v0, "HmacSHA384"

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA384ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_10
    const-string v0, ""

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA384ToString([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static encryptHmacSHA384ToString([B[B)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA384([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA512([B[B)[B
    .registers 3

    const-string v0, "HmacSHA512"

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA512ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_10
    const-string v0, ""

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA512ToString([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static encryptHmacSHA512ToString([B[B)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA512([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD2([B)[B
    .registers 2

    const-string v0, "MD2"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD2ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD2ToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static encryptMD2ToString([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD2([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5([B)[B
    .registers 2

    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5File(Ljava/io/File;)[B
    .registers 6

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v2

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_9} :catch_2f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_4c
    .catchall {:try_start_4 .. :try_end_9} :catchall_4e

    :try_start_9
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v1, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    const/high16 v0, 0x40000

    new-array v0, v0, [B

    :cond_18
    invoke-virtual {v3, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_18

    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_25} :catch_50
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_25} :catch_52
    .catchall {:try_start_9 .. :try_end_25} :catchall_3f

    move-result-object v2

    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_3

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2f
    move-exception v0

    :goto_30
    move-object v1, v2

    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3f

    if-eqz v1, :cond_3

    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_3f
    move-exception v0

    move-object v2, v1

    :goto_41
    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    throw v0

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    :catch_4c
    move-exception v0

    goto :goto_30

    :catchall_4e
    move-exception v0

    goto :goto_41

    :catch_50
    move-exception v0

    goto :goto_31

    :catch_52
    move-exception v0

    goto :goto_31
.end method

.method public static encryptMD5File(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5File2String(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5ToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static encryptMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_7

    if-nez p1, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    if-nez p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_16
    if-nez p0, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static encryptMD5ToString([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5ToString([B[B)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    if-nez p0, :cond_8

    if-nez p1, :cond_8

    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    if-nez p1, :cond_13

    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_13
    if-nez p0, :cond_1e

    invoke-static {p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_1e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static encryptRSA([B[BILjava/lang/String;)[B
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->rsaTemplate([B[BILjava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptRSA2Base64([B[BILjava/lang/String;)[B
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptRSA([B[BILjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptRSA2HexString([B[BILjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptRSA([B[BILjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA1([B)[B
    .registers 2

    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA1ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA1ToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static encryptSHA1ToString([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA1([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA224([B)[B
    .registers 2

    const-string v0, "SHA224"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA224ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA224ToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static encryptSHA224ToString([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA224([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA256([B)[B
    .registers 2

    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA256ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA256ToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static encryptSHA256ToString([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA256([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA384([B)[B
    .registers 2

    const-string v0, "SHA-384"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA384ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA384ToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static encryptSHA384ToString([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA384([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA512([B)[B
    .registers 2

    const-string v0, "SHA-512"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA512ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA512ToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static encryptSHA512ToString([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA512([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hashTemplate([BLjava/lang/String;)[B
    .registers 3

    if-eqz p0, :cond_5

    array-length v0, p0

    if-gtz v0, :cond_7

    :cond_5
    :goto_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_6

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_5
.end method

.method private static hmacTemplate([B[BLjava/lang/String;)[B
    .registers 5

    if-eqz p0, :cond_a

    array-length v0, p0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_a
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_1b} :catch_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_1b} :catch_22

    move-result-object v0

    goto :goto_b

    :catch_1d
    move-exception v0

    :goto_1e
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_a

    :catch_22
    move-exception v0

    goto :goto_1e
.end method

.method private static joins([B[B)[B
    .registers 6

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static rc4([B[B)[B
    .registers 10

    const/16 v7, 0x100

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    array-length v0, p0

    if-eqz v0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_6c

    array-length v0, p1

    if-gt v0, v7, :cond_6c

    new-array v5, v7, [B

    new-array v2, v7, [B

    array-length v3, p1

    move v0, v1

    :goto_19
    if-ge v0, v7, :cond_27

    int-to-byte v4, v0

    aput-byte v4, v5, v0

    rem-int v4, v0, v3

    aget-byte v4, p1, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_27
    move v0, v1

    move v3, v1

    :goto_29
    if-ge v0, v7, :cond_3e

    aget-byte v4, v5, v0

    add-int/2addr v3, v4

    aget-byte v4, v2, v0

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, v5, v3

    aget-byte v6, v5, v0

    aput-byte v6, v5, v3

    aput-byte v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3e
    array-length v0, p0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_43
    array-length v1, p0

    if-ge v2, v1, :cond_6a

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, v5, v0

    add-int/2addr v1, v3

    and-int/lit16 v3, v1, 0xff

    aget-byte v1, v5, v3

    aget-byte v6, v5, v0

    aput-byte v6, v5, v3

    aput-byte v1, v5, v0

    aget-byte v1, v5, v0

    aget-byte v6, v5, v3

    add-int/2addr v1, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v5, v1

    aget-byte v6, p0, v2

    xor-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_43

    :cond_6a
    move-object v0, v4

    goto :goto_b

    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be between 1 and 256 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rsaTemplate([B[BILjava/lang/String;Z)[B
    .registers 15

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    array-length v0, p1

    if-nez v0, :cond_e

    :cond_c
    :goto_c
    move-object v0, v1

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_2c

    const-string v0, "RSA"

    const-string v2, "BC"

    invoke-static {v0, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    :goto_1c
    if-eqz p4, :cond_33

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    :goto_28
    if-nez v2, :cond_3e

    move-object v0, v1

    goto :goto_d

    :cond_2c
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_1c

    :cond_33
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v2, v0

    goto :goto_28

    :cond_3e
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    if-eqz p4, :cond_7b

    const/4 v0, 0x1

    :goto_45
    invoke-virtual {v6, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v7, p0

    div-int/lit8 v0, p2, 0x8

    if-eqz p4, :cond_9d

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pkcs1padding"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    add-int/lit8 v0, v0, -0xb

    move v5, v0

    :goto_5c
    div-int v8, v7, v5

    if-lez v8, :cond_91

    const/4 v0, 0x0

    new-array v0, v0, [B

    new-array v9, v5, [B

    move v2, v3

    move v4, v3

    :goto_67
    if-ge v2, v8, :cond_7d

    const/4 v3, 0x0

    invoke-static {p0, v4, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/EncryptUtils;->joins([B[B)[B

    move-result-object v0

    add-int v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_67

    :cond_7b
    const/4 v0, 0x2

    goto :goto_45

    :cond_7d
    if-eq v4, v7, :cond_d

    sub-int v2, v7, v4

    new-array v3, v2, [B

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/EncryptUtils;->joins([B[B)[B

    move-result-object v0

    goto/16 :goto_d

    :cond_91
    invoke-virtual {v6, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_94} :catch_97

    move-result-object v0

    goto/16 :goto_d

    :catch_97
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :cond_9d
    move v5, v0

    goto :goto_5c
.end method

.method private static symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B
    .registers 11

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    array-length v2, p0

    if-eqz v2, :cond_c

    if-eqz p1, :cond_c

    array-length v2, p1

    if-nez v2, :cond_e

    :cond_c
    :goto_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    const-string v2, "DES"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    :goto_23
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    if-eqz p4, :cond_2c

    array-length v4, p4

    if-nez v4, :cond_41

    :cond_2c
    if-eqz p5, :cond_4e

    :goto_2e
    invoke-virtual {v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_31
    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_d

    :cond_36
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_3c

    goto :goto_23

    :catchall_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :cond_41
    :try_start_41
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-eqz p5, :cond_4c

    :goto_48
    invoke-virtual {v3, v0, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_3c

    goto :goto_31

    :cond_4c
    move v0, v1

    goto :goto_48

    :cond_4e
    move v0, v1

    goto :goto_2e
.end method
