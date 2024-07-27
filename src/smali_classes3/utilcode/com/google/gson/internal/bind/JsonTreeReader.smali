.class public final Lutilcode/com/google/gson/internal/bind/JsonTreeReader;
.super Lutilcode/com/google/gson/stream/JsonReader;


# static fields
.field private static final SENTINEL_CLOSED:Ljava/lang/Object;

.field private static final UNREADABLE_READER:Ljava/io/Reader;


# instance fields
.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private stack:[Ljava/lang/Object;

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader$1;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader$1;-><init>()V

    sput-object v0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lutilcode/com/google/gson/JsonElement;)V
    .registers 4

    const/16 v1, 0x20

    sget-object v0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method private expect(Lutilcode/com/google/gson/stream/JsonToken;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private locationString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private peekStack()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private popStack()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    return-object v2
.end method

.method private push(Ljava/lang/Object;)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iput-object v3, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iput-object v4, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->expect(Lutilcode/com/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonArray;

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->expect(Lutilcode/com/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonObject;

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    aput-object v2, v0, v1

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iput v3, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    return-void
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->expect(Lutilcode/com/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public endObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->expect(Lutilcode/com/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    aget-object v3, v2, v0

    instance-of v3, v3, Lutilcode/com/google/gson/JsonArray;

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_0

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v3, v2, v0

    instance-of v3, v3, Lutilcode/com/google/gson/JsonObject;

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_0

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->END_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->END_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BOOLEAN:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->expect(Lutilcode/com/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_0
    return v0
.end method

.method public nextDouble()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide v0

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->isLenient()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_2
    return-wide v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsInt()I

    move-result v0

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_1
    return v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v2, :cond_1

    iget-object v3, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_1
    return-wide v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NAME:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->expect(Lutilcode/com/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-object v1
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->expect(Lutilcode/com/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lutilcode/com/google/gson/stream/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-nez v0, :cond_0

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lutilcode/com/google/gson/stream/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v2, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lutilcode/com/google/gson/JsonObject;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NAME:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_3
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lutilcode/com/google/gson/JsonObject;

    if-eqz v1, :cond_5

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lutilcode/com/google/gson/JsonArray;

    if-eqz v1, :cond_6

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lutilcode/com/google/gson/JsonPrimitive;

    if-eqz v1, :cond_a

    check-cast v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BOOLEAN:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    instance-of v1, v0, Lutilcode/com/google/gson/JsonNull;

    if-eqz v1, :cond_b

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_b
    sget-object v1, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public promoteNameToValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NAME:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->expect(Lutilcode/com/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    new-instance v1, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public skipValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->NAME:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->nextName()Ljava/lang/String;

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x2

    const-string v2, "null"

    aput-object v2, v0, v1

    :cond_0
    :goto_0
    iget v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    const-string v2, "null"

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
