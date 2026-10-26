.class public Lcom/yt/plugin/translate/BingWebTranslator;
.super Ljava/lang/Object;
.source "BingWebTranslator.java"


# static fields
.field private static final LANG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static domain:Ljava/lang/String;

.field private static ig:Ljava/lang/String;

.field private static iid:Ljava/lang/String;

.field private static key:Ljava/lang/String;

.field private static token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    .line 15
    const-string v1, "cn.bing.com"

    sput-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->domain:Ljava/lang/String;

    .line 22
    const-string v1, "auto"

    const-string v2, "auto-detect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "zh"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "zh-CN"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "zh-TW"

    const-string v2, "zh-Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "iw"

    const-string v2, "he"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "hmn"

    const-string v2, "mww"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "tl"

    const-string v2, "fil"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMiddleText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 116
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 120
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 64
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    new-instance v3, Lorg/json2/JSONArray;

    invoke-direct {v3, p0}, Lorg/json2/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 66
    :goto_0
    invoke-virtual {v3}, Lorg/json2/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 67
    invoke-virtual {v3, v1}, Lorg/json2/JSONArray;->getJSONObject(I)Lorg/json2/JSONObject;

    move-result-object v4

    .line 68
    const-string v5, "translations"

    invoke-virtual {v4, v5}, Lorg/json2/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    const-string v1, "translations"

    invoke-virtual {v4, v1}, Lorg/json2/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;

    move-result-object v1

    .line 72
    :goto_1
    invoke-virtual {v1}, Lorg/json2/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 73
    invoke-virtual {v1, v0}, Lorg/json2/JSONArray;->getJSONObject(I)Lorg/json2/JSONObject;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v3, v4}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_2
    return-object v0

    :cond_2
    const-string v0, "\u9519\u8bef"

    goto :goto_2

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Lorg/json2/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/translator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yt/plugin/translate/HttpUtils;->get(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yt/plugin/translate/HttpUtils$Request;->execute()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "IG:\""

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lcom/yt/plugin/translate/BingWebTranslator;->getMiddleText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->ig:Ljava/lang/String;

    .line 95
    const-string v1, "<div id=\"rich_tta\" data-iid=\""

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lcom/yt/plugin/translate/BingWebTranslator;->getMiddleText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->iid:Ljava/lang/String;

    .line 96
    const-string v1, "params_RichTranslateHelper = "

    const-string v2, ";"

    invoke-static {v0, v1, v2}, Lcom/yt/plugin/translate/BingWebTranslator;->getMiddleText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->ig:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 100
    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->iid:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1, v0}, Lorg/json2/JSONArray;-><init>(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/json2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->token:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json2/JSONArray;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->key:Ljava/lang/String;

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can not parse parameter: richTranslateHelper"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can not parse parameter: iid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can not parse parameter: ig"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0, p0}, Lorg/json2/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Lorg/json2/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    const-string v2, "errorMessage"

    invoke-virtual {v0, v2}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xcd

    if-eq v1, v2, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "StatusCode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->ig:Ljava/lang/String;

    return-void
.end method

.method public static setDomain(Ljava/lang/String;)V
    .locals 0

    .line 31
    sput-object p0, Lcom/yt/plugin/translate/BingWebTranslator;->domain:Ljava/lang/String;

    return-void
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    .line 37
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 41
    sget-object v2, Lcom/yt/plugin/translate/BingWebTranslator;->ig:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 42
    invoke-static {}, Lcom/yt/plugin/translate/BingWebTranslator;->init()V

    .line 44
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/yt/plugin/translate/BingWebTranslator;->translateImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "statusCode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    invoke-static {v2}, Lcom/yt/plugin/translate/BingWebTranslator;->processError(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_2
    invoke-static {v2}, Lcom/yt/plugin/translate/BingWebTranslator;->getResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method private static translateImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ttranslatev3?IG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->ig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&IID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->iid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yt/plugin/translate/HttpUtils;->post(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 55
    const-string v1, "fromLang"

    invoke-virtual {v0, v1, p1}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 56
    const-string v1, "text"

    invoke-virtual {v0, v1, p0}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 57
    const-string v1, "to"

    invoke-virtual {v0, v1, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->token:Ljava/lang/String;

    .line 58
    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->key:Ljava/lang/String;

    .line 59
    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/yt/plugin/translate/HttpUtils$Request;->execute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
