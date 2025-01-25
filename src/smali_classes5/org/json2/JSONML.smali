.class public Lorg/json2/JSONML;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v7, 0x5b

    const/16 v6, 0x2d

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->more()Z

    move-result v0

    if-eqz v0, :cond_1e6

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/XML;->LT:Ljava/lang/Character;

    if-ne v0, v1, :cond_1d0

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_bf

    sget-object v1, Lorg/json2/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_52

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_2f

    :goto_2e
    return-object v0

    :cond_2f
    const-string v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a closing name instead of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json2/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    sget-object v1, Lorg/json2/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_b1

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    if-ne v0, v6, :cond_6c

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    if-ne v0, v6, :cond_68

    const-string v0, "-->"

    :goto_64
    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->skipPast(Ljava/lang/String;)V

    goto :goto_4

    :cond_68
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->back()V

    goto :goto_4

    :cond_6c
    if-ne v0, v7, :cond_92

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CDATA"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    if-ne v0, v7, :cond_8b

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    :cond_86
    :goto_86
    invoke-virtual {p2, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    goto/16 :goto_4

    :cond_8b
    const-string v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_92
    const/4 v0, 0x1

    :cond_93
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_aa

    sget-object v2, Lorg/json2/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_a3

    add-int/lit8 v0, v0, 0x1

    :cond_9f
    :goto_9f
    if-gtz v0, :cond_93

    goto/16 :goto_4

    :cond_a3
    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_9f

    add-int/lit8 v0, v0, -0x1

    goto :goto_9f

    :cond_aa
    const-string v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_b1
    sget-object v1, Lorg/json2/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_b8

    const-string v0, "?>"

    goto :goto_64

    :cond_b8
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_bf
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1b5

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lorg/json2/JSONArray;

    invoke-direct {v3}, Lorg/json2/JSONArray;-><init>()V

    new-instance v4, Lorg/json2/JSONObject;

    invoke-direct {v4}, Lorg/json2/JSONObject;-><init>()V

    if-eqz p1, :cond_104

    invoke-virtual {v3, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    if-eqz p2, :cond_d9

    invoke-virtual {p2, v3}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    :cond_d9
    :goto_d9
    const/4 v1, 0x0

    :goto_da
    if-nez v1, :cond_e0

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    :cond_e0
    if-eqz v1, :cond_1ae

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_166

    if-eqz p1, :cond_f1

    invoke-virtual {v4}, Lorg/json2/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_f1

    invoke-virtual {v3, v4}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    :cond_f1
    sget-object v2, Lorg/json2/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_116

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v0, v1, :cond_10f

    if-nez p2, :cond_4

    if-eqz p1, :cond_139

    :cond_101
    move-object v0, v3

    goto/16 :goto_2e

    :cond_104
    const-string v1, "tagName"

    invoke-virtual {v4, v1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    if-eqz p2, :cond_d9

    invoke-virtual {p2, v4}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    goto :goto_d9

    :cond_10f
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_116
    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_15f

    invoke-static {p0, p1, v3, p3}, Lorg/json2/JSONML;->parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13c

    if-nez p1, :cond_135

    invoke-virtual {v3}, Lorg/json2/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_135

    const-string v0, "childNodes"

    invoke-virtual {v4, v0, v3}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    :cond_135
    if-nez p2, :cond_4

    if-nez p1, :cond_101

    :cond_139
    move-object v0, v4

    goto/16 :goto_2e

    :cond_13c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatched \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' and \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_15f
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_166
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    if-nez p1, :cond_17b

    const-string v1, "tagName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_194

    const-string v1, "childNode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_194

    :cond_17b
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lorg/json2/XML;->EQ:Ljava/lang/Character;

    if-ne v1, v5, :cond_1a7

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1a0

    check-cast v1, Ljava/lang/String;

    if-eqz p3, :cond_19b

    :goto_18f
    invoke-virtual {v4, v2, v1}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_d9

    :cond_194
    const-string v0, "Reserved attribute."

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_19b
    invoke-static {v1}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_18f

    :cond_1a0
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_1a7
    const-string v5, ""

    invoke-virtual {v4, v2, v5}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_da

    :cond_1ae
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_1b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tagName \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_1d0
    if-eqz p2, :cond_4

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_86

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_1e0

    invoke-static {v0}, Lorg/json2/XML;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_86

    :cond_1e0
    invoke-static {v0}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_86

    :cond_1e6
    const-string v0, "Bad XML"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json2/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/json2/JSONML;->parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json2/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Ljava/lang/String;Z)Lorg/json2/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json2/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/json2/JSONML;->parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json2/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Lorg/json2/XMLTokener;)Lorg/json2/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/json2/JSONML;->parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json2/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Lorg/json2/XMLTokener;Z)Lorg/json2/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/json2/JSONML;->parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json2/JSONArray;

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json2/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lorg/json2/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json2/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/json2/JSONML;->parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json2/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;Z)Lorg/json2/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json2/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/json2/JSONML;->parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json2/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Lorg/json2/XMLTokener;)Lorg/json2/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1}, Lorg/json2/JSONML;->parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json2/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Lorg/json2/XMLTokener;Z)Lorg/json2/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/json2/JSONML;->parse(Lorg/json2/XMLTokener;ZLorg/json2/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json2/JSONObject;

    return-object v0
.end method

.method public static toString(Lorg/json2/JSONArray;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v11, 0x3e

    const/16 v10, 0x3c

    const/16 v9, 0x2f

    const/16 v8, 0x22

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XML;->noSpace(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/json2/JSONObject;

    if-eqz v2, :cond_6b

    const/4 v2, 0x2

    check-cast v0, Lorg/json2/JSONObject;

    invoke-virtual {v0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1}, Lorg/json2/XML;->noSpace(Ljava/lang/String;)V

    if-eqz v6, :cond_33

    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_6b
    move v0, v1

    :goto_6c
    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_7d

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_75
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7d
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v0

    :cond_81
    invoke-virtual {p0, v1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_98

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_a4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_98
    if-lt v1, v2, :cond_81

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    :cond_a4
    instance-of v5, v0, Lorg/json2/JSONObject;

    if-eqz v5, :cond_af

    check-cast v0, Lorg/json2/JSONObject;

    invoke-static {v0}, Lorg/json2/JSONML;->toString(Lorg/json2/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    :cond_af
    instance-of v5, v0, Lorg/json2/JSONArray;

    if-eqz v5, :cond_ba

    check-cast v0, Lorg/json2/JSONArray;

    invoke-static {v0}, Lorg/json2/JSONML;->toString(Lorg/json2/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    :cond_ba
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    :cond_bf
    move v0, v2

    goto :goto_6c
.end method

.method public static toString(Lorg/json2/JSONObject;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v9, 0x3e

    const/16 v8, 0x3c

    const/16 v7, 0x2f

    const/16 v6, 0x22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tagName"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lorg/json2/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    invoke-static {v0}, Lorg/json2/XML;->noSpace(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "tagName"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    const-string v4, "childNodes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-static {v0}, Lorg/json2/XML;->noSpace(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_33

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_7b
    const-string v0, "childNodes"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;

    move-result-object v4

    if-nez v4, :cond_8e

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_86
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_8e
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json2/JSONArray;->length()I

    move-result v5

    const/4 v0, 0x0

    move v1, v0

    :goto_97
    if-ge v1, v5, :cond_cd

    invoke-virtual {v4, v1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ae

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_b2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_ab
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ae
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_97

    :cond_b2
    instance-of v6, v0, Lorg/json2/JSONObject;

    if-eqz v6, :cond_bd

    check-cast v0, Lorg/json2/JSONObject;

    invoke-static {v0}, Lorg/json2/JSONML;->toString(Lorg/json2/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    :cond_bd
    instance-of v6, v0, Lorg/json2/JSONArray;

    if-eqz v6, :cond_c8

    check-cast v0, Lorg/json2/JSONArray;

    invoke-static {v0}, Lorg/json2/JSONML;->toString(Lorg/json2/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    :cond_c8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    :cond_cd
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86
.end method
