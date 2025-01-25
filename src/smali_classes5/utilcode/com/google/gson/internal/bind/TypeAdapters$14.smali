.class final Lutilcode/com/google/gson/internal/bind/TypeAdapters$14;
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
        "Ljava/lang/Number;",
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
.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    const/4 v2, 0x3

    if-eq v1, v2, :cond_31

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_19
    return-object v0

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting number, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Lutilcode/com/google/gson/internal/LazilyParsedNumber;

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public bridge synthetic read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$14;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lutilcode/com/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lutilcode/com/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$14;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
