.class public final Lutilcode/com/google/gson/JsonParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)Lutilcode/com/google/gson/JsonElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonIOException;,
            Lutilcode/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lutilcode/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/JsonParser;->parse(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lutilcode/com/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v0, v2, :cond_18

    :cond_17
    return-object v1

    :cond_18
    new-instance v0, Lutilcode/com/google/gson/JsonSyntaxException;

    const-string v1, "Did not consume the entire document."

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catch Lutilcode/com/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_20} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_20} :catch_27

    :catch_20
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_27
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2e
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/lang/String;)Lutilcode/com/google/gson/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonIOException;,
            Lutilcode/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_8
    invoke-static {p1}, Lutilcode/com/google/gson/internal/Streams;->parse(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;
    :try_end_b
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_b} :catch_32
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_10
    .catchall {:try_start_8 .. :try_end_b} :catchall_2d

    move-result-object v0

    invoke-virtual {p1, v1}, Lutilcode/com/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object v0

    :catch_10
    move-exception v0

    :try_start_11
    new-instance v2, Lutilcode/com/google/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lutilcode/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    invoke-virtual {p1, v1}, Lutilcode/com/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v0

    :catch_32
    move-exception v0

    :try_start_33
    new-instance v2, Lutilcode/com/google/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lutilcode/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_2d
.end method
