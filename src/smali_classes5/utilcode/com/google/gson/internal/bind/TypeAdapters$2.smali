.class final Lutilcode/com/google/gson/internal/bind/TypeAdapters$2;
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
        "Ljava/util/BitSet;",
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

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$2;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/util/BitSet;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginArray()V

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    move v1, v2

    :goto_f
    sget-object v5, Lutilcode/com/google/gson/stream/JsonToken;->END_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    if-eq v0, v5, :cond_78

    sget-object v5, Lutilcode/com/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v3, :cond_70

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6b

    const/4 v6, 0x3

    if-ne v5, v6, :cond_54

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    :try_start_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2a} :catch_3c

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v3

    :goto_2e
    if-eqz v0, :cond_33

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    :cond_33
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_f

    :cond_3a
    move v0, v2

    goto :goto_2e

    :catch_3c
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitset value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    goto :goto_2e

    :cond_70
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v3

    goto :goto_2e

    :cond_78
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endArray()V

    return-object v4
.end method

.method public bridge synthetic write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$2;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginArray()Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_15

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lutilcode/com/google/gson/stream/JsonWriter;->value(J)Lutilcode/com/google/gson/stream/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endArray()Lutilcode/com/google/gson/stream/JsonWriter;

    return-void
.end method
