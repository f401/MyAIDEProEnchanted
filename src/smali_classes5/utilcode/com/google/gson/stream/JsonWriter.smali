.class public Lutilcode/com/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lutilcode/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    move v0, v1

    :goto_8
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_22

    sget-object v2, Lutilcode/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    sget-object v0, Lutilcode/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lutilcode/com/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stack:[I

    const/4 v0, 0x0

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->push(I)V

    const-string v0, ":"

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz p1, :cond_1c

    iput-object p1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeName()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_e
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->newline()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->replaceTop(I)V

    return-void

    :cond_16
    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v2, 0x2

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    if-eq v0, v2, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_17

    if-ne v0, v3, :cond_23

    iget-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->lenient:Z

    if-eqz v0, :cond_1b

    :cond_17
    invoke-direct {p0, v3}, Lutilcode/com/google/gson/stream/JsonWriter;->replaceTop(I)V

    :goto_1a
    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->replaceTop(I)V

    goto :goto_1a

    :cond_37
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->newline()V

    goto :goto_1a

    :cond_42
    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->replaceTop(I)V

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->newline()V

    goto :goto_1a
.end method

.method private close(IILjava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    if-eq v0, p2, :cond_8

    if-ne v0, p1, :cond_1d

    :cond_8
    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v1, :cond_25

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    if-ne v0, p2, :cond_17

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->newline()V

    :cond_17
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dangling name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newline()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    const/4 v0, 0x1

    :goto_f
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private open(ILjava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeValue()V

    invoke-direct {p0, p1}, Lutilcode/com/google/gson/stream/JsonWriter;->push(I)V

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private peek()I
    .registers 3

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_b

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    return v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private push(I)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_11

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stack:[I

    :cond_11
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    aput p1, v0, v1

    return-void
.end method

.method private replaceTop(I)V
    .registers 4

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private string(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->htmlSafe:Z

    if-eqz v0, :cond_26

    sget-object v0, Lutilcode/com/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    :goto_7
    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v2

    move v1, v2

    :goto_14
    if-ge v3, v4, :cond_47

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x80

    if-ge v2, v5, :cond_29

    aget-object v2, v0, v2

    if-nez v2, :cond_2f

    :cond_22
    :goto_22
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_14

    :cond_26
    sget-object v0, Lutilcode/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_7

    :cond_29
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_40

    const-string v2, "\\u2028"

    :cond_2f
    :goto_2f
    if-ge v1, v3, :cond_38

    iget-object v5, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_38
    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    goto :goto_22

    :cond_40
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_22

    const-string v2, "\\u2029"

    goto :goto_2f

    :cond_47
    if-ge v1, v4, :cond_50

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_50
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeDeferredName()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeName()V

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    :cond_f
    return-void
.end method


# virtual methods
.method public beginArray()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x1

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x3

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    if-gt v0, v1, :cond_19

    if-ne v0, v1, :cond_15

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_19

    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    return-void

    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSerializeNulls()Z
    .registers 2

    iget-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public final isHtmlSafe()Z
    .registers 2

    iget-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->htmlSafe:Z

    return v0
.end method

.method public isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public jsonValue(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6
.end method

.method public name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_15

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_d

    iput-object p1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    return-object p0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullValue()Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    :cond_b
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_15
    return-object p0

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_15
.end method

.method public final setHtmlSafe(Z)V
    .registers 2

    iput-boolean p1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->htmlSafe:Z

    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    const-string v0, ":"

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    :goto_d
    return-void

    :cond_e
    iput-object p1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    const-string v0, ": "

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_d
.end method

.method public final setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->lenient:Z

    return-void
.end method

.method public final setSerializeNulls(Z)V
    .registers 2

    iput-boolean p1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->serializeNulls:Z

    return-void
.end method

.method public value(D)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    iget-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_13

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_13
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric values must be finite, but was "

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

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "true"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_1b
    const-string v0, "false"

    goto :goto_17
.end method

.method public value(Ljava/lang/Number;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v1, :cond_2a

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    :cond_2a
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public value(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeValue()V

    invoke-direct {p0, p1}, Lutilcode/com/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public value(Z)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_10

    const-string v0, "true"

    :goto_c
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_10
    const-string v0, "false"

    goto :goto_c
.end method
