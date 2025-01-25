.class public Lorg/json2/JSONArray;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final myArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    return-void

    :cond_d
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "JSONArray initial capacity cannot be negative."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/json2/JSONArray;-><init>()V

    if-nez p1, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/json2/JSONArray;->addAll(Ljava/lang/Iterable;Z)V

    goto :goto_5
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/json2/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/json2/JSONArray;->addAll(Ljava/lang/Object;Z)V

    return-void

    :cond_12
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json2/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json2/JSONArray;-><init>(Lorg/json2/JSONTokener;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    :goto_c
    return-void

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/json2/JSONArray;->addAll(Ljava/util/Collection;Z)V

    goto :goto_c
.end method

.method public constructor <init>(Lorg/json2/JSONArray;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    :goto_c
    return-void

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/json2/JSONTokener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v2, 0x5d

    invoke-direct {p0}, Lorg/json2/JSONArray;-><init>()V

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_5d

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v0

    if-eqz v0, :cond_56

    if-eq v0, v2, :cond_47

    :cond_15
    invoke-virtual {p1}, Lorg/json2/JSONTokener;->back()V

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v0

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->back()V

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    :goto_27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_64

    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_38
    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_27

    :sswitch_3f
    invoke-virtual {p1}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v0

    if-eqz v0, :cond_48

    if-ne v0, v2, :cond_15

    :cond_47
    :sswitch_47
    return-void

    :cond_48
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_4f
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_56
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_5d
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_4f
        0x2c -> :sswitch_3f
        0x5d -> :sswitch_47
    .end sparse-switch
.end method

.method private addAll(Ljava/lang/Iterable;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz p2, :cond_18

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/json2/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    goto :goto_6

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    goto :goto_18

    :cond_26
    return-void
.end method

.method private addAll(Ljava/lang/Object;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    if-eqz p2, :cond_2b

    :goto_1b
    if-ge v0, v1, :cond_44

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/json2/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2b
    :goto_2b
    if-ge v0, v1, :cond_44

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_37
    instance-of v0, p1, Lorg/json2/JSONArray;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    check-cast p1, Lorg/json2/JSONArray;

    iget-object v1, p1, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_44
    :goto_44
    return-void

    :cond_45
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4f

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1, p2}, Lorg/json2/JSONArray;->addAll(Ljava/util/Collection;Z)V

    goto :goto_44

    :cond_4f
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_59

    check-cast p1, Ljava/lang/Iterable;

    invoke-direct {p0, p1, p2}, Lorg/json2/JSONArray;->addAll(Ljava/lang/Iterable;Z)V

    goto :goto_44

    :cond_59
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addAll(Ljava/util/Collection;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz p2, :cond_26

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/json2/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    goto :goto_14

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    goto :goto_26

    :cond_34
    return-void
.end method

.method private static wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;
    .registers 6

    if-nez p2, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSONArray["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is not a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (null)."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json2/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_25
    return-object v0

    :cond_26
    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_32

    instance-of v0, p2, Ljava/lang/Iterable;

    if-nez v0, :cond_32

    instance-of v0, p2, Lorg/json2/JSONObject;

    if-eqz v0, :cond_62

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSONArray["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is not a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json2/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSONArray["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is not a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json2/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/json2/JSONObject;->objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    const-string v1, "BigDecimal"

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getBigInteger(I)Ljava/math/BigInteger;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/json2/JSONObject;->objectToBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    const-string v1, "BigInteger"

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getBoolean(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1d

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    if-eqz v2, :cond_34

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    goto :goto_1c

    :cond_34
    const-string v0, "boolean"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getDouble(I)D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-wide v0

    goto :goto_e

    :catch_18
    move-exception v1

    const-string v2, "double"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getEnum(Ljava/lang/Class;I)Ljava/lang/Enum;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;I)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/json2/JSONArray;->optEnum(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enum of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json2/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(I)F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_e
    return v0

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result v0

    goto :goto_e

    :catch_18
    move-exception v1

    const-string v2, "float"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getInt(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result v0

    goto :goto_e

    :catch_18
    move-exception v1

    const-string v2, "int"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getJSONArray(I)Lorg/json2/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json2/JSONArray;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/json2/JSONArray;

    return-object v0

    :cond_b
    const-string v1, "JSONArray"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getJSONObject(I)Lorg/json2/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json2/JSONObject;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/json2/JSONObject;

    return-object v0

    :cond_b
    const-string v1, "JSONObject"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getLong(I)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-wide v0

    goto :goto_e

    :catch_18
    move-exception v1

    const-string v2, "long"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getNumber(I)Ljava/lang/Number;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :try_start_4
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/Number;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json2/JSONObject;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_a

    :catch_14
    move-exception v1

    const-string v2, "number"

    invoke-static {p1, v2, v0, v1}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_b
    const-string v1, "String"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/json2/JSONArray;->wrongValueFormatException(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 4

    sget-object v0, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1a
    if-ge v0, v1, :cond_2f

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json2/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .registers 3

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public optBigDecimal(ILjava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/json2/JSONObject;->objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public optBigInteger(ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/json2/JSONObject;->objectToBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public optBoolean(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->getBoolean(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result p2

    :goto_4
    return p2

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public optDouble(I)D
    .registers 4

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lorg/json2/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-wide p2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    goto :goto_7
.end method

.method public optEnum(Ljava/lang/Class;I)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/json2/JSONArray;->optEnum(Ljava/lang/Class;ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public optEnum(Ljava/lang/Class;ILjava/lang/Enum;)Ljava/lang/Enum;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;ITE;)TE;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object p3

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    check-cast v0, Ljava/lang/Enum;

    move-object p3, v0

    goto :goto_c

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_22} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_22} :catch_26

    move-result-object p3

    goto :goto_c

    :catch_24
    move-exception v0

    goto :goto_c

    :catch_26
    move-exception v0

    goto :goto_c
.end method

.method public optFloat(I)F
    .registers 3

    const/high16 v0, 0x7fc00000  # Float.NaN

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->optFloat(IF)F

    move-result v0

    return v0
.end method

.method public optFloat(IF)F
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return p2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p2

    goto :goto_7
.end method

.method public optInt(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return p2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_7
.end method

.method public optJSONArray(I)Lorg/json2/JSONArray;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json2/JSONArray;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/json2/JSONArray;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public optJSONObject(I)Lorg/json2/JSONObject;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json2/JSONObject;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/json2/JSONObject;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public optLong(I)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json2/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-wide p2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    goto :goto_7
.end method

.method public optNumber(I)Ljava/lang/Number;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public optNumber(ILjava/lang/Number;)Ljava/lang/Number;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    :goto_c
    return-object p2

    :cond_d
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_15

    check-cast v0, Ljava/lang/Number;

    move-object p2, v0

    goto :goto_c

    :cond_15
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_c

    :try_start_19
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/json2/JSONObject;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_20

    move-result-object p2

    goto :goto_c

    :catch_20
    move-exception v0

    goto :goto_c
.end method

.method public optQuery(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/json2/JSONPointer;

    invoke-direct {v0, p1}, Lorg/json2/JSONPointer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->optQuery(Lorg/json2/JSONPointer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public optQuery(Lorg/json2/JSONPointer;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json2/JSONPointer;->queryFrom(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json2/JSONPointerException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public optString(I)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object p2

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_c
.end method

.method public put(D)Lorg/json2/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(F)Lorg/json2/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(I)Lorg/json2/JSONArray;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(ID)Lorg/json2/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->put(ILjava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(IF)Lorg/json2/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->put(ILjava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(II)Lorg/json2/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->put(ILjava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(IJ)Lorg/json2/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->put(ILjava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/lang/Object;)Lorg/json2/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-ltz p1, :cond_31

    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    invoke-static {p2}, Lorg/json2/JSONObject;->testValidity(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_10
    return-object p0

    :cond_11
    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v0

    if-ne p1, v0, :cond_1c

    :cond_17
    invoke-virtual {p0, p2}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object p0

    goto :goto_10

    :cond_1c
    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_23
    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public put(ILjava/util/Collection;)Lorg/json2/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json2/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p2}, Lorg/json2/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->put(ILjava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/util/Map;)Lorg/json2/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/json2/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0, p2}, Lorg/json2/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->put(ILjava/lang/Object;)Lorg/json2/JSONArray;

    return-object p0
.end method

.method public put(IZ)Lorg/json2/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lorg/json2/JSONArray;->put(ILjava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public put(J)Lorg/json2/JSONArray;
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)Lorg/json2/JSONArray;
    .registers 3

    invoke-static {p1}, Lorg/json2/JSONObject;->testValidity(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(Ljava/util/Collection;)Lorg/json2/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json2/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p1}, Lorg/json2/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/util/Map;)Lorg/json2/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/json2/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0, p1}, Lorg/json2/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(Z)Lorg/json2/JSONArray;
    .registers 3

    if-eqz p1, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->put(Ljava/lang/Object;)Lorg/json2/JSONArray;

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public putAll(Ljava/lang/Iterable;)Lorg/json2/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lorg/json2/JSONArray;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/json2/JSONArray;->addAll(Ljava/lang/Iterable;Z)V

    return-object p0
.end method

.method public putAll(Ljava/lang/Object;)Lorg/json2/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/json2/JSONArray;->addAll(Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public putAll(Ljava/util/Collection;)Lorg/json2/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json2/JSONArray;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/json2/JSONArray;->addAll(Ljava/util/Collection;Z)V

    return-object p0
.end method

.method public putAll(Lorg/json2/JSONArray;)Lorg/json2/JSONArray;
    .registers 4

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public query(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/json2/JSONPointer;

    invoke-direct {v0, p1}, Lorg/json2/JSONPointer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->query(Lorg/json2/JSONPointer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public query(Lorg/json2/JSONPointer;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p1, p0}, Lorg/json2/JSONPointer;->queryFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    if-ltz p1, :cond_f

    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_f

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public similar(Ljava/lang/Object;)Z
    .registers 8

    const/4 v2, 0x0

    instance-of v0, p1, Lorg/json2/JSONArray;

    if-nez v0, :cond_7

    move v0, v2

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v4

    check-cast p1, Lorg/json2/JSONArray;

    invoke-virtual {p1}, Lorg/json2/JSONArray;->length()I

    move-result v0

    if-eq v4, v0, :cond_15

    move v0, v2

    goto :goto_6

    :cond_15
    move v3, v2

    :goto_16
    if-ge v3, v4, :cond_82

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2a

    :cond_26
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    :cond_2a
    if-nez v0, :cond_2e

    move v0, v2

    goto :goto_6

    :cond_2e
    instance-of v5, v0, Lorg/json2/JSONObject;

    if-eqz v5, :cond_3c

    check-cast v0, Lorg/json2/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json2/JSONObject;->similar(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_6

    :cond_3c
    instance-of v5, v0, Lorg/json2/JSONArray;

    if-eqz v5, :cond_4a

    check-cast v0, Lorg/json2/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json2/JSONArray;->similar(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_6

    :cond_4a
    instance-of v5, v0, Ljava/lang/Number;

    if-eqz v5, :cond_5e

    instance-of v5, v1, Ljava/lang/Number;

    if-eqz v5, :cond_5e

    check-cast v0, Ljava/lang/Number;

    check-cast v1, Ljava/lang/Number;

    invoke-static {v0, v1}, Lorg/json2/JSONObject;->isNumberSimilar(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_6

    :cond_5e
    instance-of v5, v0, Lorg/json2/JSONString;

    if-eqz v5, :cond_7a

    instance-of v5, v1, Lorg/json2/JSONString;

    if-eqz v5, :cond_7a

    check-cast v0, Lorg/json2/JSONString;

    invoke-interface {v0}, Lorg/json2/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lorg/json2/JSONString;

    invoke-interface {v1}, Lorg/json2/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_6

    :cond_7a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_6

    :cond_82
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public toJSONObject(Lorg/json2/JSONArray;)Lorg/json2/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lorg/json2/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lorg/json2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lorg/json2/JSONObject;

    invoke-virtual {p1}, Lorg/json2/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Lorg/json2/JSONObject;-><init>(I)V

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1}, Lorg/json2/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2e

    invoke-virtual {p1, v0}, Lorg/json2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2e
    move-object v0, v1

    goto :goto_f
.end method

.method public toList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    sget-object v3, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_25
    const/4 v0, 0x0

    :cond_26
    :goto_26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2a
    instance-of v3, v0, Lorg/json2/JSONArray;

    if-eqz v3, :cond_35

    check-cast v0, Lorg/json2/JSONArray;

    invoke-virtual {v0}, Lorg/json2/JSONArray;->toList()Ljava/util/List;

    move-result-object v0

    goto :goto_26

    :cond_35
    instance-of v3, v0, Lorg/json2/JSONObject;

    if-eqz v3, :cond_26

    check-cast v0, Lorg/json2/JSONObject;

    invoke-virtual {v0}, Lorg/json2/JSONObject;->toMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_26

    :cond_40
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p0, v0, p1, v2}, Lorg/json2/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/json2/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;II)Ljava/io/Writer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v4

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_26

    if-ne v4, v2, :cond_2d

    :try_start_d
    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lorg/json2/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_26

    :cond_17
    :goto_17
    const/16 v0, 0x5d

    :try_start_19
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-object p1

    :catch_1d
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    const-string v2, "Unable to write JSONArray value at index: 0"

    invoke-direct {v1, v2, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2d
    if-eqz v4, :cond_17

    add-int v5, p3, p2

    move v0, v1

    move v3, v1

    :goto_33
    if-ge v3, v4, :cond_6c

    if-eqz v0, :cond_3c

    const/16 v0, 0x2c

    :try_start_39
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_3c
    if-lez p2, :cond_43

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_43
    invoke-static {p1, v5}, Lorg/json2/JSONObject;->indent(Ljava/io/Writer;I)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_46} :catch_26

    :try_start_46
    iget-object v0, p0, Lorg/json2/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, v5}, Lorg/json2/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_54
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4f} :catch_26

    add-int/lit8 v1, v3, 0x1

    move v0, v2

    move v3, v1

    goto :goto_33

    :catch_54
    move-exception v0

    :try_start_55
    new-instance v1, Lorg/json2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to write JSONArray value at index: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6c
    if-lez p2, :cond_73

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_73
    invoke-static {p1, p3}, Lorg/json2/JSONObject;->indent(Ljava/io/Writer;I)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_76} :catch_26

    goto :goto_17
.end method
