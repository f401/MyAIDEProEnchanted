.class public Lorg/json2/Cookie;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v7, 0x25

    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_48

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x20

    if-lt v0, v5, :cond_2b

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_2b

    if-eq v0, v7, :cond_2b

    const/16 v5, 0x3d

    if-eq v0, v5, :cond_2b

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_41

    :cond_2b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-char v5, v5

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    invoke-static {v0, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    :cond_41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json2/JSONObject;
    .registers 8

    const/16 v6, 0x3b

    const/16 v5, 0x3d

    new-instance v1, Lorg/json2/JSONObject;

    invoke-direct {v1}, Lorg/json2/JSONObject;-><init>()V

    new-instance v2, Lorg/json2/JSONTokener;

    invoke-direct {v2, p0}, Lorg/json2/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/json2/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    const-string v3, "name"

    invoke-virtual {v1, v3, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json2/JSONTokener;->next(C)C

    const-string v0, "value"

    invoke-virtual {v2, v6}, Lorg/json2/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json2/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    invoke-virtual {v2}, Lorg/json2/JSONTokener;->next()C

    :cond_3e
    :goto_3e
    invoke-virtual {v2}, Lorg/json2/JSONTokener;->more()Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "=;"

    invoke-virtual {v2, v0}, Lorg/json2/JSONTokener;->nextTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "value"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    invoke-virtual {v2}, Lorg/json2/JSONTokener;->next()C

    move-result v0

    if-eq v0, v5, :cond_84

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_70
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {v1, v3, v0}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto :goto_3e

    :cond_84
    invoke-virtual {v2, v6}, Lorg/json2/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json2/JSONTokener;->next()C

    goto :goto_70

    :cond_94
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Illegal attribute name: \'value\'"

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Illegal attribute name: \'name\'"

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Cookies must have a \'name\'"

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ac
    return-object v1
.end method

.method public static toString(Lorg/json2/JSONObject;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v6, 0x3b

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    move-object v2, v0

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_2e
    const-string v5, "value"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    if-eqz v1, :cond_c9

    if-eqz v0, :cond_c9

    :goto_42
    if-eqz v1, :cond_c1

    const-string v2, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    if-nez v0, :cond_54

    const-string v0, ""

    :cond_54
    invoke-static {v1}, Lorg/json2/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/json2/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_71
    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "value"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_a8

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a0
    invoke-static {v0}, Lorg/json2/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    :cond_a8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/json2/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a0

    :cond_bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c1
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Cookie does not have a name"

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c9
    move-object v2, v0

    goto/16 :goto_12

    :cond_cc
    move-object v0, v2

    goto/16 :goto_3e

    :cond_cf
    move-object v0, v2

    goto/16 :goto_42
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_41

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x2b

    if-ne v2, v1, :cond_1d

    const/16 v1, 0x20

    move v2, v1

    :cond_17
    :goto_17
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    const/16 v1, 0x25

    if-ne v2, v1, :cond_17

    add-int/lit8 v1, v0, 0x2

    if-ge v1, v3, :cond_17

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/json2/JSONTokener;->dehexchar(C)I

    move-result v5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/json2/JSONTokener;->dehexchar(C)I

    move-result v6

    if-ltz v5, :cond_17

    if-ltz v6, :cond_17

    mul-int/lit8 v0, v5, 0x10

    add-int/2addr v0, v6

    int-to-char v2, v0

    move v0, v1

    goto :goto_17

    :cond_41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
