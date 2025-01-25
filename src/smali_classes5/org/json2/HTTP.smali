.class public Lorg/json2/HTTP;
.super Ljava/lang/Object;


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json2/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v6, 0x3a

    const/4 v5, 0x0

    new-instance v2, Lorg/json2/JSONObject;

    invoke-direct {v2}, Lorg/json2/JSONObject;-><init>()V

    new-instance v3, Lorg/json2/HTTPTokener;

    invoke-direct {v3, p0}, Lorg/json2/HTTPTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json2/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "HTTP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "HTTP-Version"

    invoke-virtual {v2, v1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    const-string v0, "Status-Code"

    invoke-virtual {v3}, Lorg/json2/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json2/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reason-Phrase"

    :goto_33
    invoke-virtual {v2, v1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    invoke-virtual {v3}, Lorg/json2/HTTPTokener;->next()C

    :goto_39
    invoke-virtual {v3}, Lorg/json2/HTTPTokener;->more()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {v3, v6}, Lorg/json2/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6}, Lorg/json2/HTTPTokener;->next(C)C

    invoke-virtual {v3, v5}, Lorg/json2/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_4b
    const-string v1, "Method"

    invoke-virtual {v2, v1, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    const-string v0, "Request-URI"

    invoke-virtual {v3}, Lorg/json2/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    const-string v0, "HTTP-Version"

    invoke-virtual {v3}, Lorg/json2/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto :goto_39

    :cond_63
    return-object v2
.end method

.method public static toString(Lorg/json2/JSONObject;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v3, 0x22

    const/16 v2, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Status-Code"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string v0, "Reason-Phrase"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string v0, "HTTP-Version"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Status-Code"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Reason-Phrase"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTTP-Version"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "Status-Code"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "Reason-Phrase"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "Method"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "Request-URI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    sget-object v4, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_9c
    const-string v0, "Method"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string v0, "Request-URI"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string v0, "Method"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Request-URI"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "HTTP-Version"

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_37

    :cond_d2
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_dc
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Not enough material for an HTTP header."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
