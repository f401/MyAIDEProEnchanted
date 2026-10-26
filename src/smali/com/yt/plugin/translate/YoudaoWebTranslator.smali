.class public Lcom/yt/plugin/translate/YoudaoWebTranslator;
.super Ljava/lang/Object;
.source "YoudaoWebTranslator.java"


# static fields
.field private static cookie:Ljava/lang/String;

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yt/plugin/translate/YoudaoWebTranslator;->hexDigits:[C

    return-void

    :array_0
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
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static md5([B)Ljava/lang/String;
    .locals 2

    .line 80
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/yt/plugin/translate/YoudaoWebTranslator;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    .line 70
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [C

    .line 72
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v1, p0, v2

    .line 73
    sget-object v5, Lcom/yt/plugin/translate/YoudaoWebTranslator;->hexDigits:[C

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v3, v0

    .line 74
    add-int/lit8 v6, v0, 0x1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v5, v1

    aput-char v1, v3, v6

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    move v2, v1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 17
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v0, "zh-CHS"

    if-eqz v2, :cond_0

    const-string p1, "zh-CHS"

    .line 20
    :cond_0
    const-string v2, "zh"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "zh-CHS"

    .line 23
    :cond_1
    const-string v2, "auto"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    const-string p1, "en"

    .line 26
    :cond_2
    const-string v2, "auto"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p2, v0

    .line 29
    :cond_3
    sget-object v0, Lcom/yt/plugin/translate/YoudaoWebTranslator;->cookie:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 30
    const-string v0, "http://m.youdao.com/translate"

    invoke-static {v0}, Lcom/yt/plugin/translate/HttpUtils;->get(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/yt/plugin/translate/HttpUtils$Request;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 32
    const-string v2, "Set-Cookie"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 36
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 37
    :goto_0
    sput-object v0, Lcom/yt/plugin/translate/YoudaoWebTranslator;->cookie:Ljava/lang/String;

    .line 39
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fanyideskweb"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ygy_4c=r#e#4EX^NUGUc5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/yt/plugin/translate/YoudaoWebTranslator;->md5([B)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "https://fanyi.youdao.com/translate_o"

    invoke-static {v3}, Lcom/yt/plugin/translate/HttpUtils;->post(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v3

    .line 42
    const-string v4, "Referer"

    const-string v5, "https://fanyi.youdao.com/"

    invoke-virtual {v3, v4, v5}, Lcom/yt/plugin/translate/HttpUtils$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v3

    sget-object v4, Lcom/yt/plugin/translate/YoudaoWebTranslator;->cookie:Ljava/lang/String;

    .line 43
    const-string v5, "Cookie"

    invoke-virtual {v3, v5, v4}, Lcom/yt/plugin/translate/HttpUtils$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v3

    .line 44
    const-string v4, "i"

    invoke-virtual {v3, v4, p0}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v3

    .line 45
    const-string v4, "from"

    invoke-virtual {v3, v4, p1}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v3

    .line 46
    const-string v4, "to"

    invoke-virtual {v3, v4, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v3

    .line 47
    const-string v4, "client"

    const-string v5, "fanyideskweb"

    invoke-virtual {v3, v4, v5}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v3

    .line 48
    const-string v4, "salt"

    invoke-virtual {v3, v4, v0}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 49
    const-string v3, "sign"

    invoke-virtual {v0, v3, v2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 50
    const-string v2, "doctype"

    const-string v3, "json"

    invoke-virtual {v0, v2, v3}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 51
    const-string v2, "version"

    const-string v3, "1.0"

    invoke-virtual {v0, v2, v3}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 52
    const-string v2, "keyfrom"

    const-string v3, "fanyi.web"

    invoke-virtual {v0, v2, v3}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/yt/plugin/translate/HttpUtils$Request;->executeToJson()Lorg/json2/JSONObject;

    move-result-object v0

    .line 54
    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Lorg/json2/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    const/16 v1, 0x32

    if-eq v2, v1, :cond_7

    .line 66
    :goto_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json2/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 34
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can not get cookie"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_7
    const/4 v1, 0x0

    sput-object v1, Lcom/yt/plugin/translate/YoudaoWebTranslator;->cookie:Ljava/lang/String;

    goto :goto_1

    .line 56
    :cond_8
    const-string v2, "translateResult"

    invoke-virtual {v0, v2}, Lorg/json2/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;

    move-result-object v2

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 58
    :goto_2
    invoke-virtual {v2}, Lorg/json2/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 59
    invoke-virtual {v2, v0}, Lorg/json2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 61
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
