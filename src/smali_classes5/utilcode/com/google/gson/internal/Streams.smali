.class public final Lutilcode/com/google/gson/internal/Streams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutilcode/com/google/gson/internal/Streams$AppendableWriter;,
        Lutilcode/com/google/gson/internal/Streams$AppendableWriter$CurrentWrite;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static parse(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonParseException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_29
    .catch Lutilcode/com/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_3} :catch_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_14

    const/4 v1, 0x0

    :try_start_4
    sget-object v0, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p0}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonElement;
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Lutilcode/com/google/gson/stream/MalformedJsonException; {:try_start_4 .. :try_end_c} :catch_22
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_c} :catch_14

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    move-object v2, v0

    :goto_f
    if-eqz v1, :cond_2d

    sget-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    goto :goto_c

    :catch_14
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1b
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_22
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_29
    move-exception v2

    const/4 v0, 0x1

    move v1, v0

    goto :goto_f

    :cond_2d
    new-instance v0, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v0, v2}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static write(Lutilcode/com/google/gson/JsonElement;Lutilcode/com/google/gson/stream/JsonWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/Writer;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lutilcode/com/google/gson/internal/Streams$AppendableWriter;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_6
.end method
