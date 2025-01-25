.class public final Lcom/blankj/utilcode/util/EncodeUtils;
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

.method public static base64Decode(Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_b
.end method

.method public static base64Decode([B)[B
    .registers 2

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_9

    :cond_5
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    goto :goto_8
.end method

.method public static base64Encode(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncodeUtils;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static base64Encode([B)[B
    .registers 2

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_9

    :cond_5
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    goto :goto_8
.end method

.method public static base64Encode2String([B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static binaryDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v3, :cond_28

    aget-object v4, v1, v0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static binaryEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v3, :cond_29

    aget-char v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static htmlDecode(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_17

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_a

    :cond_17
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_a
.end method

.method public static htmlEncode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_15
    if-ge v0, v2, :cond_53

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_47

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_41

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x27

    if-eq v3, v4, :cond_35

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_35
    const-string v3, "&#39;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_3b
    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_41
    const-string v3, "&gt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_47
    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_4d
    const-string v3, "&quot;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncodeUtils;->urlDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static urlDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    const-string v0, "%(?![0-9a-fA-F]{2})"

    const-string v1, "%25"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%2B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_a

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncodeUtils;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v0

    goto :goto_a

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
