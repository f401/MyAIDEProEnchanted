.class public Lorg/json2/HTTPTokener;
.super Lorg/json2/JSONTokener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/json2/JSONTokener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    invoke-virtual {p0}, Lorg/json2/HTTPTokener;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x22

    if-eq v0, v2, :cond_17

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2d

    :cond_17
    :goto_17
    invoke-virtual {p0}, Lorg/json2/HTTPTokener;->next()C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3a

    if-ne v2, v0, :cond_36

    :cond_21
    :goto_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json2/HTTPTokener;->next()C

    move-result v0

    :cond_2d
    if-eqz v0, :cond_21

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_21

    :cond_36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_3a
    const-string v0, "Unterminated string."

    invoke-virtual {p0, v0}, Lorg/json2/HTTPTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method
