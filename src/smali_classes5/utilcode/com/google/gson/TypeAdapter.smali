.class public abstract Lutilcode/com/google/gson/TypeAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJsonTree(Lutilcode/com/google/gson/JsonElement;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;-><init>(Lutilcode/com/google/gson/JsonElement;)V

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final nullSafe()Lutilcode/com/google/gson/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/TypeAdapter$1;-><init>(Lutilcode/com/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    invoke-virtual {p0, v0, p1}, Lutilcode/com/google/gson/TypeAdapter;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0, p2}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lutilcode/com/google/gson/JsonElement;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    invoke-virtual {p0, v0, p1}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->get()Lutilcode/com/google/gson/JsonElement;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
