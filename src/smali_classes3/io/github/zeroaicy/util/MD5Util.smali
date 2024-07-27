.class public Lio/github/zeroaicy/util/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    .line 35
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

    const/16 v2, 0x41

    aput-char v2, v3, v0

    const/16 v0, 0xb

    const/16 v2, 0x42

    aput-char v2, v3, v0

    const/16 v0, 0xc

    const/16 v2, 0x43

    aput-char v2, v3, v0

    const/16 v0, 0xd

    const/16 v2, 0x44

    aput-char v2, v3, v0

    const/16 v0, 0xe

    const/16 v2, 0x45

    aput-char v2, v3, v0

    const/16 v0, 0xf

    const/16 v2, 0x46

    aput-char v2, v3, v0

    .line 38
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [C

    move v0, v1

    move v2, v1

    .line 45
    :goto_0
    array-length v1, p0

    if-lt v2, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 43
    :cond_0
    aget-byte v1, p0, v2

    .line 44
    add-int/lit8 v5, v0, 0x1

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v4, v0

    .line 45
    add-int/lit8 v0, v5, 0x1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, v4, v5

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/Scanner;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 55
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u8bf7\u8f93\u5165\uff1a"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lio/github/zeroaicy/util/MD5Util;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\u52a0\u5bc6\u524d\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\u52a0\u5bc6\u540e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\uff0c\u957f\u5ea6\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stringMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 14
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 22
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 24
    invoke-static {v0}, Lio/github/zeroaicy/util/MD5Util;->byteArrayToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 27
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
