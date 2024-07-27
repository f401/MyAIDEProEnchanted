.class public final Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;
.super Lutilcode/com/google/gson/stream/JsonWriter;


# static fields
.field private static final SENTINEL_CLOSED:Lutilcode/com/google/gson/JsonPrimitive;

.field private static final UNWRITABLE_WRITER:Ljava/io/Writer;


# instance fields
.field private pendingName:Ljava/lang/String;

.field private product:Lutilcode/com/google/gson/JsonElement;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lutilcode/com/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter$1;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter$1;-><init>()V

    sput-object v0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    sput-object v0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lutilcode/com/google/gson/JsonPrimitive;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    sget-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->product:Lutilcode/com/google/gson/JsonElement;

    return-void
.end method

.method private peek()Lutilcode/com/google/gson/JsonElement;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonElement;

    return-object v0
.end method

.method private put(Lutilcode/com/google/gson/JsonElement;)V
    .registers 4

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lutilcode/com/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->getSerializeNulls()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->peek()Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonObject;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lutilcode/com/google/gson/JsonObject;->add(Ljava/lang/String;Lutilcode/com/google/gson/JsonElement;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->product:Lutilcode/com/google/gson/JsonElement;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->peek()Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    instance-of v1, v0, Lutilcode/com/google/gson/JsonArray;

    if-eqz v1, :cond_4

    check-cast v0, Lutilcode/com/google/gson/JsonArray;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/JsonArray;->add(Lutilcode/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public beginArray()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/JsonArray;

    invoke-direct {v0}, Lutilcode/com/google/gson/JsonArray;-><init>()V

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->put(Lutilcode/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public beginObject()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/JsonObject;

    invoke-direct {v0}, Lutilcode/com/google/gson/JsonObject;-><init>()V

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->put(Lutilcode/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    sget-object v1, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lutilcode/com/google/gson/JsonPrimitive;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->peek()Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lutilcode/com/google/gson/JsonArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public endObject()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->peek()Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lutilcode/com/google/gson/JsonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public get()Lutilcode/com/google/gson/JsonElement;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->product:Lutilcode/com/google/gson/JsonElement;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected one JSON element but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->peek()Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lutilcode/com/google/gson/JsonObject;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public nullValue()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->put(Lutilcode/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public value(D)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->put(Lutilcode/com/google/gson/JsonElement;)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public value(J)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->put(Lutilcode/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->put(Lutilcode/com/google/gson/JsonElement;)V

    goto :goto_0
.end method

.method public value(Ljava/lang/Number;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->put(Lutilcode/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public value(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->put(Lutilcode/com/google/gson/JsonElement;)V

    goto :goto_0
.end method

.method public value(Z)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->put(Lutilcode/com/google/gson/JsonElement;)V

    return-object p0
.end method
