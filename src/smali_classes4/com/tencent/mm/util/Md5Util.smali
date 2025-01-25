.class public Lcom/tencent/mm/util/Md5Util;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    array-length v0, p0

    if-gtz v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_e
    array-length v3, p0

    if-lt v0, v3, :cond_16

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_16
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_28

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public static getMD5Str(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_1f

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/util/Md5Util;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :catch_1f
    move-exception v0

    const-string v0, ""

    goto :goto_8
.end method

.method public static getMD5Str(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_18

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/util/Md5Util;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const-string v0, ""

    goto :goto_17
.end method
