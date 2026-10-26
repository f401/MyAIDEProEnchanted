.class public Lcom/yt/plugin/translate/YandexWebTranslator;
.super Ljava/lang/Object;
.source "YandexWebTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResult(Lorg/json2/JSONObject;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 31
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v1}, Lorg/json2/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 35
    invoke-virtual {v1, v0}, Lorg/json2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "message"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    :goto_0
    const-string v0, "https://translate.yandex.net/api/v1/tr.json/translate"

    invoke-static {v0}, Lcom/yt/plugin/translate/HttpUtils;->post(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 19
    const-string v1, "srv"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 20
    const-string v1, "ucid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 21
    const-string v1, "lang"

    invoke-virtual {v0, v1, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 22
    const-string v1, "text"

    invoke-virtual {v0, v1, p0}, Lcom/yt/plugin/translate/HttpUtils$Request;->formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/yt/plugin/translate/HttpUtils$Request;->executeToJson()Lorg/json2/JSONObject;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/yt/plugin/translate/YandexWebTranslator;->getResult(Lorg/json2/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method
