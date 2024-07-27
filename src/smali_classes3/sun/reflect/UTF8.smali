.class Lsun/reflect/UTF8;
.super Ljava/lang/Object;
.source "UTF8.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encode(Ljava/lang/String;)[B
    .registers 8

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 36
    invoke-static {p0}, Lsun/reflect/UTF8;->utf8Length(Ljava/lang/String;)I

    move-result v1

    new-array v4, v1, [B

    move v1, v0

    move v2, v0

    .line 39
    :goto_0
    if-ge v1, v3, :cond_3

    .line 40
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const v5, 0xffff

    and-int/2addr v5, v0

    .line 41
    const/4 v0, 0x1

    if-lt v5, v0, :cond_0

    const/16 v0, 0x7f

    if-gt v5, v0, :cond_0

    .line 42
    int-to-byte v0, v5

    aput-byte v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    .line 39
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 43
    :cond_0
    if-eqz v5, :cond_1

    const/16 v0, 0x80

    if-lt v5, v0, :cond_2

    const/16 v0, 0x7ff

    if-gt v5, v0, :cond_2

    .line 45
    :cond_1
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v0, v5, 0x6

    add-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 46
    add-int/lit8 v0, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v6, v5, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 49
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 50
    and-int/lit8 v0, v5, 0x3f

    add-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 54
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Bug in sun.reflect bootstrap UTF-8 encoder"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    return-object v4
.end method

.method private static utf8Length(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 63
    :goto_0
    if-ge v1, v3, :cond_3

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v4, 0xffff

    and-int/2addr v0, v4

    .line 65
    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_0

    .line 66
    add-int/lit8 v0, v2, 0x1

    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 67
    :cond_0
    if-eqz v0, :cond_1

    const/16 v4, 0x80

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_2

    .line 69
    :cond_1
    add-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 71
    :cond_2
    add-int/lit8 v0, v2, 0x3

    goto :goto_1

    .line 74
    :cond_3
    return v2
.end method
