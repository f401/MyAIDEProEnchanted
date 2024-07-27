.class public Lcom/github/megatronking/stringfog/plugin/utils/MD5;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageDigest([B)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

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

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    array-length v0, v4

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [C

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, v4

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    aget-byte v1, v4, v0

    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v3, v7

    aput-char v7, v5, v2

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, v5, v6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v6, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method
