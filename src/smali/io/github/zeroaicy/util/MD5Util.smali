.class public Lio/github/zeroaicy/util/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    .line 33
    const/16 v0, 0x10

    new-array v3, v0, [C

    const/16 v0, 0x30

    aput-char v0, v3, v1

    const/4 v0, 0x1

    const/16 v2, 0x31

    aput-char v2, v3, v0

    const/4 v0, 0x2

    const/16 v2, 0x32

    aput-char v2, v3, v0

    const/4 v0, 0x3

    const/16 v2, 0x33

    aput-char v2, v3, v0

    const/4 v0, 0x4

    const/16 v2, 0x34

    aput-char v2, v3, v0

    const/4 v0, 0x5

    const/16 v2, 0x35

    aput-char v2, v3, v0

    const/4 v0, 0x6

    const/16 v2, 0x36

    aput-char v2, v3, v0

    const/4 v0, 0x7

    const/16 v2, 0x37

    aput-char v2, v3, v0

    const/16 v0, 0x8

    const/16 v2, 0x38

    aput-char v2, v3, v0

    const/16 v0, 0x9

    const/16 v2, 0x39

    aput-char v2, v3, v0

    const/16 v0, 0xa

    const/16 v2, 0x61

    aput-char v2, v3, v0

    const/16 v0, 0xb

    const/16 v2, 0x62

    aput-char v2, v3, v0

    const/16 v0, 0xc

    const/16 v2, 0x63

    aput-char v2, v3, v0

    const/16 v0, 0xd

    const/16 v2, 0x64

    aput-char v2, v3, v0

    const/16 v0, 0xe

    const/16 v2, 0x65

    aput-char v2, v3, v0

    const/16 v0, 0xf

    const/16 v2, 0x66

    aput-char v2, v3, v0

    .line 36
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [C

    .line 41
    array-length v5, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-byte v1, p0, v0

    .line 42
    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v4, v2

    .line 43
    add-int/lit8 v6, v2, 0x1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, v4, v6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .line 51
    new-instance v0, Ljava/util/Scanner;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 53
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u8bf7\u8f93\u5165\uff1a"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lio/github/zeroaicy/util/MD5Util;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u52a0\u5bc6\u524d\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u52a0\u5bc6\u540e\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c\u957f\u5ea6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stringMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 14
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 20
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 22
    invoke-static {v0}, Lio/github/zeroaicy/util/MD5Util;->byteArrayToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
