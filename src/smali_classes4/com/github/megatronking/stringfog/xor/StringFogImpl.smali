.class public final Lcom/github/megatronking/stringfog/xor/StringFogImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/megatronking/stringfog/IStringFog;


# static fields
.field public static final CHARSET_NAME_UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/github/megatronking/stringfog/xor/StringFogImpl;

    invoke-direct {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, p0, v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static xor([BLjava/lang/String;)[B
    .registers 9

    const/4 v1, 0x0

    array-length v3, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v1

    move v0, v1

    :goto_8
    if-lt v2, v3, :cond_b

    return-object p0

    :cond_b
    if-lt v0, v4, :cond_e

    move v0, v1

    :cond_e
    aget-byte v5, p0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x2

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->xor([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->xor([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_11
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x2

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->xor([BLjava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_15} :catch_16

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->xor([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_15
.end method

.method public overflow(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    const v1, 0xffff

    if-ge v0, v1, :cond_11

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method
