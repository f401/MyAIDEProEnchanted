.class public Lio/github/zeroaicy/util/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .registers 8

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_30

    .line 36
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 41
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_29

    aget-byte v5, p0, v4

    .line 42
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v3

    add-int/lit8 v6, v3, 0x2

    .line 43
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_f

    .line 47
    :cond_29
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    nop

    :array_30
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6

    .line 51
    new-instance p0, Ljava/util/Scanner;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 53
    :goto_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "请输入："

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lio/github/zeroaicy/util/MD5Util;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "加密前："

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "加密后："

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "，长度："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static stringMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 14
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 20
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 22
    invoke-static {p0}, Lio/github/zeroaicy/util/MD5Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method
