.class final Lutilcode/com/google/gson/internal/bind/TypeAdapters$10;
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
        "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
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

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$10;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-result-object v0

    return-object v0
.end method

.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginArray()V

    :goto_8
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_e
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_8

    :catch_1a
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_21
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endArray()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    if-ge v1, v3, :cond_42

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    :cond_42
    return-object v4
.end method

.method public bridge synthetic write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$10;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V

    return-void
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginArray()Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_15

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lutilcode/com/google/gson/stream/JsonWriter;->value(J)Lutilcode/com/google/gson/stream/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endArray()Lutilcode/com/google/gson/stream/JsonWriter;

    return-void
.end method
