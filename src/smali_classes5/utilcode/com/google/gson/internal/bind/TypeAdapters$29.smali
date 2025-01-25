.class final Lutilcode/com/google/gson/internal/bind/TypeAdapters$29;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutilcode/com/google/gson/TypeAdapter",
        "<",
        "Lutilcode/com/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$29;->read(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_15  #0x6
    new-instance v0, Lutilcode/com/google/gson/JsonObject;

    invoke-direct {v0}, Lutilcode/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginObject()V

    :goto_1d
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$29;->read(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lutilcode/com/google/gson/JsonObject;->add(Ljava/lang/String;Lutilcode/com/google/gson/JsonElement;)V

    goto :goto_1d

    :cond_2f
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endObject()V

    :goto_32
    return-object v0

    :pswitch_33  #0x5
    new-instance v0, Lutilcode/com/google/gson/JsonArray;

    invoke-direct {v0}, Lutilcode/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginArray()V

    :goto_3b
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$29;->read(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/JsonArray;->add(Lutilcode/com/google/gson/JsonElement;)V

    goto :goto_3b

    :cond_49
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endArray()V

    goto :goto_32

    :pswitch_4d  #0x4
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextNull()V

    sget-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    goto :goto_32

    :pswitch_53  #0x3
    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :pswitch_5d  #0x2
    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_32

    :pswitch_6b  #0x1
    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    new-instance v1, Lutilcode/com/google/gson/internal/LazilyParsedNumber;

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lutilcode/com/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_32

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6b  #00000001
        :pswitch_5d  #00000002
        :pswitch_53  #00000003
        :pswitch_4d  #00000004
        :pswitch_33  #00000005
        :pswitch_15  #00000006
    .end packed-switch
.end method

.method public bridge synthetic write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lutilcode/com/google/gson/JsonElement;

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$29;->write(Lutilcode/com/google/gson/stream/JsonWriter;Lutilcode/com/google/gson/JsonElement;)V

    return-void
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Lutilcode/com/google/gson/JsonElement;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lutilcode/com/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p2}, Lutilcode/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Lutilcode/com/google/gson/JsonElement;->getAsJsonPrimitive()Lutilcode/com/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_b

    :cond_24
    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->value(Z)Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_b

    :cond_32
    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_b

    :cond_3a
    invoke-virtual {p2}, Lutilcode/com/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginArray()Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lutilcode/com/google/gson/JsonElement;->getAsJsonArray()Lutilcode/com/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$29;->write(Lutilcode/com/google/gson/stream/JsonWriter;Lutilcode/com/google/gson/JsonElement;)V

    goto :goto_4b

    :cond_5b
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endArray()Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_b

    :cond_5f
    invoke-virtual {p2}, Lutilcode/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginObject()Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lutilcode/com/google/gson/JsonElement;->getAsJsonObject()Lutilcode/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$29;->write(Lutilcode/com/google/gson/stream/JsonWriter;Lutilcode/com/google/gson/JsonElement;)V

    goto :goto_74

    :cond_93
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endObject()Lutilcode/com/google/gson/stream/JsonWriter;

    goto/16 :goto_b

    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
