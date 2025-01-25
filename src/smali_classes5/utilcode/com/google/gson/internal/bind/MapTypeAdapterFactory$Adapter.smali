.class final Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lutilcode/com/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lutilcode/com/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TK;>;"
        }
    .end annotation
.end field

.field final this$0:Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory;Lutilcode/com/google/gson/Gson;Ljava/lang/reflect/Type;Lutilcode/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lutilcode/com/google/gson/TypeAdapter;Lutilcode/com/google/gson/internal/ObjectConstructor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TV;>;",
            "Lutilcode/com/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    new-instance v0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p4, p3}, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    new-instance v0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p6, p5}, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    iput-object p7, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lutilcode/com/google/gson/internal/ObjectConstructor;

    return-void
.end method

.method private keyToString(Lutilcode/com/google/gson/JsonElement;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lutilcode/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lutilcode/com/google/gson/JsonElement;->getAsJsonPrimitive()Lutilcode/com/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_28
    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_39
    invoke-virtual {p1}, Lutilcode/com/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "null"

    goto :goto_18

    :cond_42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v1, v0, :cond_d

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lutilcode/com/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lutilcode/com/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_56

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginArray()V

    :goto_1c
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginArray()V

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3b

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endArray()V

    goto :goto_1c

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endArray()V

    goto :goto_c

    :cond_56
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginObject()V

    :cond_59
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    sget-object v1, Lutilcode/com/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lutilcode/com/google/gson/internal/JsonReaderInternalAccess;

    invoke-virtual {v1, p1}, Lutilcode/com/google/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lutilcode/com/google/gson/stream/JsonReader;)V

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8d
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endObject()V

    goto/16 :goto_c
.end method

.method public bridge synthetic write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/stream/JsonWriter;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-boolean v0, v0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginObject()Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_18

    :cond_39
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endObject()Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_6

    :cond_3d
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lutilcode/com/google/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lutilcode/com/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_84

    invoke-virtual {v6}, Lutilcode/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_84
    const/4 v0, 0x1

    :goto_85
    or-int/2addr v0, v2

    move v2, v0

    goto :goto_58

    :cond_88
    move v0, v1

    goto :goto_85

    :cond_8a
    if-eqz v2, :cond_b5

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginArray()Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_93
    if-ge v1, v2, :cond_b0

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginArray()Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonElement;

    invoke-static {v0, p1}, Lutilcode/com/google/gson/internal/Streams;->write(Lutilcode/com/google/gson/JsonElement;Lutilcode/com/google/gson/stream/JsonWriter;)V

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endArray()Lutilcode/com/google/gson/stream/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_b0
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endArray()Lutilcode/com/google/gson/stream/JsonWriter;

    goto/16 :goto_6

    :cond_b5
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginObject()Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_bc
    if-ge v1, v2, :cond_d7

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonElement;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lutilcode/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    :cond_d7
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endObject()Lutilcode/com/google/gson/stream/JsonWriter;

    goto/16 :goto_6
.end method
