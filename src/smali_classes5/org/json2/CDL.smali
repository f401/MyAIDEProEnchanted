.class public Lorg/json2/CDL;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Lorg/json2/JSONTokener;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_68

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->back()V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :sswitch_19
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->back()V

    const-string v0, ""

    goto :goto_18

    :sswitch_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_24
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v2

    if-ne v2, v0, :cond_3c

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3c

    if-lez v3, :cond_37

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->back()V

    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_3c
    if-eqz v2, :cond_4a

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4a

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing close quote \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_65
    const/4 v0, 0x0

    goto :goto_18

    nop

    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_65
        0x22 -> :sswitch_1f
        0x27 -> :sswitch_1f
        0x2c -> :sswitch_19
    .end sparse-switch
.end method

.method public static rowToJSONArray(Lorg/json2/JSONTokener;)Lorg/json2/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v4, 0x2c

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0}, Lorg/json2/JSONArray;-><init>()V

    :cond_7
    invoke-static {p0}, Lorg/json2/CDL;->getValue(Lorg/json2/JSONTokener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v1

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Lorg/json2/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_21

    if-eq v1, v4, :cond_21

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    return-object v0

    :cond_21
    invoke-virtual {v0, v2}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    :goto_24
    if-eq v1, v4, :cond_7

    const/16 v2, 0x20

    if-eq v1, v2, :cond_57

    const/16 v2, 0xa

    if-eq v1, v2, :cond_20

    const/16 v2, 0xd

    if-eq v1, v2, :cond_20

    if-eqz v1, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad character \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_57
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v1

    goto :goto_24
.end method

.method public static rowToJSONObject(Lorg/json2/JSONArray;Lorg/json2/JSONTokener;)Lorg/json2/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p1}, Lorg/json2/CDL;->rowToJSONArray(Lorg/json2/JSONTokener;)Lorg/json2/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Lorg/json2/JSONArray;->toJSONObject(Lorg/json2/JSONArray;)Lorg/json2/JSONObject;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static rowToString(Lorg/json2/JSONArray;)Ljava/lang/String;
    .registers 12

    const/16 v10, 0x2c

    const/16 v9, 0xa

    const/16 v8, 0x22

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6c

    if-lez v0, :cond_18

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_18
    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_68

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_48

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_48

    const/16 v2, 0xd

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_48

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_48

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_68

    :cond_48
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    :goto_50
    if-ge v2, v5, :cond_62

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-lt v6, v7, :cond_5f

    if-eq v6, v8, :cond_5f

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_62
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    :cond_6c
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lorg/json2/JSONArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json2/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json2/CDL;->toJSONArray(Lorg/json2/JSONTokener;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Lorg/json2/JSONArray;Ljava/lang/String;)Lorg/json2/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json2/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/json2/CDL;->toJSONArray(Lorg/json2/JSONArray;Lorg/json2/JSONTokener;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Lorg/json2/JSONArray;Lorg/json2/JSONTokener;)Lorg/json2/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1}, Lorg/json2/JSONArray;-><init>()V

    :goto_f
    invoke-static {p0, p1}, Lorg/json2/CDL;->rowToJSONObject(Lorg/json2/JSONArray;Lorg/json2/JSONTokener;)Lorg/json2/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1d

    invoke-virtual {v1}, Lorg/json2/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, v1

    goto :goto_9

    :cond_1d
    invoke-virtual {v1, v2}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    goto :goto_f
.end method

.method public static toJSONArray(Lorg/json2/JSONTokener;)Lorg/json2/JSONArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lorg/json2/CDL;->rowToJSONArray(Lorg/json2/JSONTokener;)Lorg/json2/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/json2/CDL;->toJSONArray(Lorg/json2/JSONArray;Lorg/json2/JSONTokener;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lorg/json2/JSONArray;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->optJSONObject(I)Lorg/json2/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lorg/json2/JSONObject;->names()Lorg/json2/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/json2/CDL;->rowToString(Lorg/json2/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Lorg/json2/CDL;->toString(Lorg/json2/JSONArray;Lorg/json2/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static toString(Lorg/json2/JSONArray;Lorg/json2/JSONArray;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p1}, Lorg/json2/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2a

    invoke-virtual {p1, v0}, Lorg/json2/JSONArray;->optJSONObject(I)Lorg/json2/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2, p0}, Lorg/json2/JSONObject;->toJSONArray(Lorg/json2/JSONArray;)Lorg/json2/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lorg/json2/CDL;->rowToString(Lorg/json2/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
