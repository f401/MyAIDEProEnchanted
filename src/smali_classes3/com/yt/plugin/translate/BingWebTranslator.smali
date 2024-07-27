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
.method static final constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    const-string v0, "cn.bing.com"

    sput-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->domain:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    const-string v1, "auto"

    const-string v2, "auto-detect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    const-string v1, "zh"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    const-string v1, "zh-CN"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    const-string v1, "zh-TW"

    const-string v2, "zh-Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    const-string v1, "iw"

    const-string v2, "he"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    const-string v1, "hmn"

    const-string v2, "mww"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    const-string v1, "tl"

    const-string v2, "fil"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMiddleText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 112
    if-ne v1, v3, :cond_0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 120
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 116
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 117
    if-ne v2, v3, :cond_1

    .line 118
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

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
    :try_end_0
    .catch Lorg/json2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v1, v4, :cond_0

    .line 81
    const-string/jumbo v0, "\u9519\u8bef"

    :goto_1
    return-object v0

    .line 67
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json2/JSONArray;->getJSONObject(I)Lorg/json2/JSONObject;

    move-result-object v4

    .line 68
    const-string v5, "translations"

    invoke-virtual {v4, v5}, Lorg/json2/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const-string v1, "translations"

    invoke-virtual {v4, v1}, Lorg/json2/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;

    move-result-object v1

    .line 72
    :goto_2
    invoke-virtual {v1}, Lorg/json2/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v1, v0}, Lorg/json2/JSONArray;->getJSONObject(I)Lorg/json2/JSONObject;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v3, v4}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json2/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 66
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Lorg/json2/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static init()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/yt/plugin/translate/BingWebTranslator;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/translator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    if-nez v1, :cond_0

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can not parse parameter: ig"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    sget-object v1, Lcom/yt/plugin/translate/BingWebTranslator;->iid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 101
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can not parse parameter: iid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can not parse parameter: richTranslateHelper"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
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
.end method

.method private static processError(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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

    .line 87
    const/16 v2, 0xcd

    if-eq v1, v2, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "StatusCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->ig:Ljava/lang/String;

    return-void
.end method

.method public static setDomain(Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    sput-object p0, Lcom/yt/plugin/translate/BingWebTranslator;->domain:Ljava/lang/String;

    return-void
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    .line 37
    :cond_0
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    sget-object v0, Lcom/yt/plugin/translate/BingWebTranslator;->LANG_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    sget-object v2, Lcom/yt/plugin/translate/BingWebTranslator;->ig:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 42
    invoke-static {}, Lcom/yt/plugin/translate/BingWebTranslator;->init()V

    .line 44
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/yt/plugin/translate/BingWebTranslator;->translateImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "statusCode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    invoke-static {v2}, Lcom/yt/plugin/translate/BingWebTranslator;->processError(Ljava/lang/String;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_3
    invoke-static {v2}, Lcom/yt/plugin/translate/BingWebTranslator;->getResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method private static translateImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/yt/plugin/translate/BingWebTranslator;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "/ttranslatev3?IG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lcom/yt/plugin/translate/BingWebTranslator;->ig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&IID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/yt/plugin/translate/BingWebTranslator;->iid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yt/plugin/translate/HttpUtils;->post(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    const-string v1, "fromLang"

    invoke-virtual {v0, v1, p1}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, p0}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {v0, v1, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    const-string v1, "token"

    sget-object v2, Lcom/yt/plugin/translate/BingWebTranslator;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    const-string v1, "key"

    sget-object v2, Lcom/yt/plugin/translate/BingWebTranslator;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yt/plugin/translate/HttpUtils$Request;->execute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
