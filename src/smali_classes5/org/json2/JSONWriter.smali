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

    if-eqz p1, :cond_39

    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_2a

    :cond_c
    :try_start_c
    iget-boolean v1, p0, Lorg/json2/JSONWriter;->comma:Z

    if-eqz v1, :cond_19

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_19
    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_32

    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    if-ne v0, v3, :cond_26

    const/16 v0, 0x6b

    iput-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    return-object p0

    :cond_2a
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Value out of sequence."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_32
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_39
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

    if-eq v0, p1, :cond_13

    const/16 v0, 0x61

    if-ne p1, v0, :cond_10

    const-string v0, "Misplaced endArray."

    :goto_a
    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const-string v0, "Misplaced endObject."

    goto :goto_a

    :cond_13
    invoke-direct {p0, p1}, Lorg/json2/JSONWriter;->pop(C)V

    :try_start_16
    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    return-object p0

    :catch_1f
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

    if-lez v3, :cond_30

    iget-object v4, p0, Lorg/json2/JSONWriter;->stack:[Lorg/json2/JSONObject;

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v4, v2

    if-nez v2, :cond_1e

    move v2, v1

    :goto_11
    if-ne v2, p1, :cond_28

    add-int/lit8 v2, v3, -0x1

    iput v2, p0, Lorg/json2/JSONWriter;->top:I

    if-nez v2, :cond_20

    const/16 v0, 0x64

    :cond_1b
    :goto_1b
    iput-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    return-void

    :cond_1e
    move v2, v0

    goto :goto_11

    :cond_20
    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2

    if-nez v2, :cond_1b

    move v0, v1

    goto :goto_1b

    :cond_28
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Nesting error."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
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

    if-ge v1, v0, :cond_18

    iget-object v0, p0, Lorg/json2/JSONWriter;->stack:[Lorg/json2/JSONObject;

    aput-object p1, v0, v1

    if-nez p1, :cond_15

    const/16 v0, 0x61

    :goto_e
    iput-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/json2/JSONWriter;->top:I

    return-void

    :cond_15
    const/16 v0, 0x6b

    goto :goto_e

    :cond_18
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

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    const-string v0, "null"

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    instance-of v0, p0, Lorg/json2/JSONString;

    if-eqz v0, :cond_36

    :try_start_10
    check-cast p0, Lorg/json2/JSONString;

    invoke-interface {p0}, Lorg/json2/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_2f

    move-result-object v0

    if-nez v0, :cond_b

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

    :catch_2f
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_36
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_51

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/json2/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/json2/JSONObject;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_b

    :goto_4c
    invoke-static {v0}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_51
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_5d

    instance-of v0, p0, Lorg/json2/JSONObject;

    if-nez v0, :cond_5d

    instance-of v0, p0, Lorg/json2/JSONArray;

    if-eqz v0, :cond_62

    :cond_5d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_62
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_72

    new-instance v0, Lorg/json2/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/json2/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json2/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_72
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_82

    new-instance v0, Lorg/json2/JSONArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/util/Collection;)V

    :goto_7d
    invoke-virtual {v0}, Lorg/json2/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_92

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_7d

    :cond_92
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_9d

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_9d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c
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

    if-eq v0, v1, :cond_e

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_e

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1b

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->push(Lorg/json2/JSONObject;)V

    const-string v0, "["

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->append(Ljava/lang/String;)Lorg/json2/JSONWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    return-object p0

    :cond_1b
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

    if-eqz p1, :cond_68

    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_60

    :try_start_8
    iget-object v0, p0, Lorg/json2/JSONWriter;->stack:[Lorg/json2/JSONObject;

    iget v1, p0, Lorg/json2/JSONWriter;->top:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/json2/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Z)Lorg/json2/JSONObject;

    iget-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/json2/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_25
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

    :cond_3d
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
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_59} :catch_59

    :catch_59
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_60
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Misplaced key."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
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

    if-ne v0, v1, :cond_a

    iput-char v2, p0, Lorg/json2/JSONWriter;->mode:C

    :cond_a
    iget-char v0, p0, Lorg/json2/JSONWriter;->mode:C

    if-eq v0, v2, :cond_12

    const/16 v1, 0x61

    if-ne v0, v1, :cond_23

    :cond_12
    const-string v0, "{"

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->append(Ljava/lang/String;)Lorg/json2/JSONWriter;

    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0}, Lorg/json2/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->push(Lorg/json2/JSONObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json2/JSONWriter;->comma:Z

    return-object p0

    :cond_23
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

    if-eqz p1, :cond_9

    const-string v0, "true"

    :goto_4
    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;->append(Ljava/lang/String;)Lorg/json2/JSONWriter;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "false"

    goto :goto_4
.end method
