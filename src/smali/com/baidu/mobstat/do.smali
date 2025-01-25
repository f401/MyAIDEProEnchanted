.class public final Lcom/baidu/mobstat/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/do$a;,
        Lcom/baidu/mobstat/do$b;
    }
.end annotation


# direct methods
.method static synthetic a(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 11
    invoke-static {p0, p1}, Lcom/baidu/mobstat/do;->b(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .registers 2

    .line 11
    invoke-static {p0, p1}, Lcom/baidu/mobstat/do;->b(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 6

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 104
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_2c

    .line 105
    aget-byte v2, p0, v1

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-lt v3, v4, :cond_18

    add-int/lit8 v3, v3, 0x57

    goto :goto_1a

    :cond_18
    add-int/lit8 v3, v3, 0x30

    :goto_1a
    int-to-char v3, v3

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v2, v4, :cond_23

    add-int/lit8 v2, v2, 0x57

    goto :goto_25

    :cond_23
    add-int/lit8 v2, v2, 0x30

    :goto_25
    int-to-char v2, v2

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 112
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 73
    const/4 v0, 0x0

    :try_start_7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_2f
    .catchall {:try_start_7 .. :try_end_c} :catchall_26

    .line 75
    const/16 p1, 0xfd0

    :try_start_e
    new-array p1, p1, [B

    .line 77
    :goto_10
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_23
    .catchall {:try_start_e .. :try_end_14} :catchall_20

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    .line 89
    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_36

    goto :goto_37

    .line 82
    :cond_1b
    const/4 v2, 0x0

    :try_start_1c
    invoke-virtual {p0, p1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_23
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_10

    :catchall_20
    move-exception p0

    move-object v0, v1

    goto :goto_27

    :catch_23
    move-exception p1

    move-object v0, v1

    goto :goto_30

    :catchall_26
    move-exception p0

    :goto_27
    if-eqz v0, :cond_2e

    .line 89
    :try_start_29
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_2e

    .line 99
    :catch_2d
    move-exception p1

    .line 92
    :cond_2e
    :goto_2e
    throw p0

    :catch_2f
    move-exception p1

    :goto_30
    if-eqz v0, :cond_37

    .line 89
    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_37

    .line 99
    :catch_36
    move-exception p1

    .line 96
    :cond_37
    :goto_37
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/do;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_40
    const-string p0, ""

    return-object p0
.end method

.method private static b(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/do;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
