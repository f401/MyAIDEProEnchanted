.class public Lorg/json2/JSONWriter;
.super Ljava/lang/Object;


# static fields
.field private static final maxdepth:I = 0xc8


# instance fields
.field private comma:Z

.field protected mode:C

.field private final stack:[Lorg/json2/JSONObject;

.field private top:I

.field protected writer:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/json2/JSONWriter;->comma:Z

    const/16 v0, 0x69

    iput-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    const/16 v0, 0xc8

    new-array v0, v0, [Lorg/json2/JSONObject;

    iput-object v0, p0, Lorg/json2/JSONWriter;->stack:[Lorg/json2/JSONObject;

    iput v1, p0, Lorg/json2/JSONWriter;->top:I

    iput-object p1, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    return-void
.end method

.method private append(Ljava/lang/String;)Lorg/json2/JSONWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v3, 0x6f

    const/16 v2, 0x61

    if-eqz p1, :cond_4

    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_3

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lorg/json2/JSONWriter;->comma:Z

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    if-ne v0, v3, :cond_2

    const/16 v0, 0x6b

    iput-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    return-object p0

    :cond_3
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Value out of sequence."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private end(CC)Lorg/json2/JSONWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    if-eq v0, p1, :cond_1

    const/16 v0, 0x61

    if-ne p1, v0, :cond_0

    const-string v0, "Misplaced endArray."

    :goto_0
    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "Misplaced endObject."

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/json2/JSONWriter;->pop(C)V

    :try_start_0
    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pop(C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v0, 0x6b

    const/16 v1, 0x61

    iget v3, p0, Lorg/json2/JSONWriter;->top:I

    if-lez v3, :cond_4

    iget-object v4, p0, Lorg/json2/JSONWriter;->stack:[Lorg/json2/JSONObject;

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v4, v2

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    if-ne v2, p1, :cond_3

    add-int/lit8 v2, v3, -0x1

    iput v2, p0, Lorg/json2/JSONWriter;->top:I

    if-nez v2, :cond_2

    const/16 v0, 0x64

    :cond_0
    :goto_1
    iput-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    return-void

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Nesting error."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Nesting error."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private push(Lorg/json2/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    iget v1, p0, Lorg/json2/JSONWriter;->top:I

    const/16 v0, 0xc8

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/json2/JSONWriter;->stack:[Lorg/json2/JSONObject;

    aput-object p1, v0, v1

    if-nez p1, :cond_0

    const/16 v0, 0x61

    :goto_0
    iput-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/json2/JSONWriter;->top:I

    return-void

    :cond_0
    const/16 v0, 0x6b

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Nesting too deep."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "null"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/json2/JSONString;

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, Lorg/json2/JSONString;

    invoke-interface {p0}, Lorg/json2/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value from toJSONString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json2/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/json2/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/json2/JSONObject;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-static {v0}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_5

    instance-of v0, p0, Lorg/json2/JSONObject;

    if-nez v0, :cond_5

    instance-of v0, p0, Lorg/json2/JSONArray;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/json2/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/json2/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json2/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_8

    new-instance v0, Lorg/json2/JSONArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-virtual {v0}, Lorg/json2/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_a

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public array()Lorg/json2/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->push(Lorg/json2/JSONObject;)V

    const-string v0, "["

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->append(Ljava/lang/String;)Lorg/json2/JSONWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    return-object p0

    :cond_1
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lorg/json2/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lorg/json2/JSONWriter;->end(CC)Lorg/json2/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lorg/json2/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lorg/json2/JSONWriter;->end(CC)Lorg/json2/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lorg/json2/JSONWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/json2/JSONWriter;->stack:[Lorg/json2/JSONObject;

    iget v1, p0, Lorg/json2/JSONWriter;->top:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/json2/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Z)Lorg/json2/JSONObject;

    iget-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-static {p1}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    const/16 v0, 0x6f

    iput-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    return-object p0

    :cond_1
    new-instance v0, Lorg/json2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Misplaced key."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public object()Lorg/json2/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v2, 0x6f

    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    iput-char v2, p0, Lorg/json2/JSONWriter;->mode:C

    :cond_0
    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    if-eq v0, v2, :cond_1

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "{"

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->append(Ljava/lang/String;)Lorg/json2/JSONWriter;

    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0}, Lorg/json2/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->push(Lorg/json2/JSONObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    return-object p0

    :cond_2
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value(D)Lorg/json2/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/JSONWriter;->value(Ljava/lang/Object;)Lorg/json2/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(J)Lorg/json2/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->append(Ljava/lang/String;)Lorg/json2/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lorg/json2/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p1}, Lorg/json2/JSONWriter;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->append(Ljava/lang/String;)Lorg/json2/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Lorg/json2/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->append(Ljava/lang/String;)Lorg/json2/JSONWriter;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
