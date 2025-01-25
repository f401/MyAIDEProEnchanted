.class public final Lutilcode/com/google/gson/JsonStreamParser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lutilcode/com/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lutilcode/com/google/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lutilcode/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lutilcode/com/google/gson/JsonStreamParser;->parser:Lutilcode/com/google/gson/stream/JsonReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/stream/JsonReader;->setLenient(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lutilcode/com/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    iget-object v1, p0, Lutilcode/com/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lutilcode/com/google/gson/JsonStreamParser;->parser:Lutilcode/com/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lutilcode/com/google/gson/stream/JsonToken;
    :try_end_b
    .catch Lutilcode/com/google/gson/stream/MalformedJsonException; {:try_start_3 .. :try_end_b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_12
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    if-eq v0, v2, :cond_10

    const/4 v0, 0x1

    :goto_e
    :try_start_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catch_12
    move-exception v0

    new-instance v2, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v0

    :catch_1c
    move-exception v0

    :try_start_1d
    new-instance v2, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_19
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lutilcode/com/google/gson/JsonStreamParser;->next()Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public next()Lutilcode/com/google/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/JsonStreamParser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    :try_start_6
    iget-object v0, p0, Lutilcode/com/google/gson/JsonStreamParser;->parser:Lutilcode/com/google/gson/stream/JsonReader;

    invoke-static {v0}, Lutilcode/com/google/gson/internal/Streams;->parse(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;
    :try_end_b
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_b} :catch_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_b} :catch_1c
    .catch Lutilcode/com/google/gson/JsonParseException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_1b

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_1b
    throw v0

    :catch_1c
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonParseException;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lutilcode/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_25
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonParseException;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lutilcode/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
