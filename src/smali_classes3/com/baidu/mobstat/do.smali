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
    .registers 3

    .line 11
    invoke-static {p0, p1}, Lcom/baidu/mobstat/do;->b(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .registers 3

    .line 11
    invoke-static {p0, p1}, Lcom/baidu/mobstat/do;->b(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 6

    const/16 v4, 0xa

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 105
    aget-byte v1, p0, v0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 106
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    .line 108
    if-lt v1, v4, :cond_0

    add-int/lit8 v1, v1, 0x61

    add-int/lit8 v1, v1, -0xa

    :goto_1
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    if-lt v3, v4, :cond_1

    add-int/lit8 v1, v3, 0x61

    add-int/lit8 v1, v1, -0xa

    :goto_2
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x30

    goto :goto_1

    .line 109
    :cond_1
    add-int/lit8 v1, v3, 0x30

    goto :goto_2

    .line 112
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/16 v0, 0xfd0

    :try_start_1
    new-array v0, v0, [B

    .line 77
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 78
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 87
    if-eqz v1, :cond_0

    .line 89
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 96
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/do;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_2
    return-object v0

    .line 82
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 87
    :goto_3
    if-eqz v1, :cond_0

    .line 89
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_2

    .line 89
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 92
    :cond_2
    :goto_5
    throw v0

    .line 99
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 84
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 90
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_5

    .line 87
    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method private static b(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .registers 3

    .line 63
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/do;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
