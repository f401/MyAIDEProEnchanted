.class public Lcom/yt/plugin/translate/YoudaoWebTranslator;
.super Ljava/lang/Object;
.source "YoudaoWebTranslator.java"


# static fields
.field private static cookie:Ljava/lang/String;

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/yt/plugin/translate/YoudaoWebTranslator;->hexDigits:[C

    return-void

    :array_a
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

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static md5([B)Ljava/lang/String;
    .registers 2

    .line 80
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/yt/plugin/translate/YoudaoWebTranslator;->toHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 8

    .line 70
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 72
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_24

    aget-byte v4, p0, v3

    .line 73
    sget-object v5, Lcom/yt/plugin/translate/YoudaoWebTranslator;->hexDigits:[C

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    add-int/lit8 v6, v2, 0x2

    .line 74
    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    aput-char v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_8

    .line 76
    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "zh-CHS"

    if-eqz v1, :cond_b

    move-object p1, v2

    .line 20
    :cond_b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object p2, v2

    .line 23
    :cond_12
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 24
    const-string p1, "en"

    .line 26
    :cond_1c
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move-object v2, p2

    .line 29
    :goto_24
    sget-object p2, Lcom/yt/plugin/translate/YoudaoWebTranslator;->cookie:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_54

    .line 30
    const-string p2, "http://m.youdao.com/translate"

    invoke-static {p2}, Lcom/yt/plugin/translate/HttpUtils;->get(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 32
    const-string v1, "Set-Cookie"

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 36
    const/16 v1, 0x3b

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_45

    goto :goto_49

    .line 37
    :cond_45
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_49
    sput-object p2, Lcom/yt/plugin/translate/YoudaoWebTranslator;->cookie:Ljava/lang/String;

    goto :goto_54

    .line 34
    :cond_4c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can not get cookie"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_54
    :goto_54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fanyideskweb"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Ygy_4c=r#e#4EX^NUGUc5"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/yt/plugin/translate/YoudaoWebTranslator;->md5([B)Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v4, "https://fanyi.youdao.com/translate_o"

    invoke-static {v4}, Lcom/yt/plugin/translate/HttpUtils;->post(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v4

    .line 42
    const-string v5, "Referer"

    const-string v6, "https://fanyi.youdao.com/"

    invoke-virtual {v4, v5, v6}, Lcom/yt/plugin/translate/HttpUtils$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v4

    sget-object v5, Lcom/yt/plugin/translate/YoudaoWebTranslator;->cookie:Ljava/lang/String;

    .line 43
    const-string v6, "Cookie"

    invoke-virtual {v4, v6, v5}, Lcom/yt/plugin/translate/HttpUtils$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v4

    .line 44
    const-string v5, "i"

    invoke-virtual {v4, v5, p0}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p0

    .line 45
    const-string v4, "from"

    invoke-virtual {p0, v4, p1}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p0

    .line 46
    const-string p1, "to"

    invoke-virtual {p0, p1, v2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p0

    .line 47
    const-string p1, "client"

    invoke-virtual {p0, p1, v3}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p0

    .line 48
    const-string p1, "salt"

    invoke-virtual {p0, p1, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p0

    .line 49
    const-string p1, "sign"

    invoke-virtual {p0, p1, v1}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p0

    .line 50
    const-string p1, "doctype"

    const-string p2, "json"

    invoke-virtual {p0, p1, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p0

    .line 51
    const-string p1, "version"

    const-string p2, "1.0"

    invoke-virtual {p0, p1, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p0

    .line 52
    const-string p1, "keyfrom"

    const-string p2, "fanyi.web"

    invoke-virtual {p0, p1, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/yt/plugin/translate/HttpUtils$Request;->executeToJson()Lorg/json2/JSONObject;

    move-result-object p0

    .line 54
    const-string p1, "errorCode"

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f9

    const/16 p2, 0x32

    if-eq p1, p2, :cond_ec

    goto :goto_ef

    .line 63
    :cond_ec
    const/4 p1, 0x0

    sput-object p1, Lcom/yt/plugin/translate/YoudaoWebTranslator;->cookie:Ljava/lang/String;

    .line 66
    :goto_ef
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Lorg/json2/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_f9
    const-string p1, "translateResult"

    invoke-virtual {p0, p1}, Lorg/json2/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;

    move-result-object p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    :goto_104
    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_114

    .line 59
    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_104

    .line 61
    :cond_114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
