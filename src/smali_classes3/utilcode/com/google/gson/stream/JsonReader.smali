.class public Lutilcode/com/google/gson/stream/JsonReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lutilcode/com/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    new-instance v0, Lutilcode/com/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lutilcode/com/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lutilcode/com/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lutilcode/com/google/gson/internal/JsonReaderInternalAccess;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    const/16 v3, 0x20

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lenient:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    new-array v0, v3, [I

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->stack:[I

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    const/4 v1, 0x1

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    const/4 v1, 0x6

    aput v1, v0, v2

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    new-array v0, v3, [I

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lutilcode/com/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lutilcode/com/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v1

    add-int/2addr v0, v2

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-le v0, v2, :cond_1

    array-length v0, v1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lutilcode/com/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private fillBuffer(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-eq v2, v3, :cond_3

    sub-int/2addr v2, v3

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    invoke-static {v1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    :cond_0
    iget-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    if-nez v3, :cond_1

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    if-nez v3, :cond_1

    if-lez v2, :cond_1

    aget-char v2, v1, v0

    const v4, 0xfeff

    if-ne v2, v4, :cond_1

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-lt v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    goto :goto_0
.end method

.method private isLiteral(C)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    :cond_1
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x2f

    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    :goto_0
    if-ne v0, v1, :cond_3

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    :cond_3
    add-int/lit8 v2, v0, 0x1

    aget-char v0, v3, v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_5

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    const/16 v4, 0x20

    if-eq v0, v4, :cond_4

    const/16 v4, 0xd

    if-eq v0, v4, :cond_4

    const/16 v4, 0x9

    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_9

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    if-ne v2, v1, :cond_6

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    if-eqz v1, :cond_0

    :cond_6
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v3, v1

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_7

    if-ne v2, v5, :cond_0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->skipToEndOfLine()V

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    const-string v0, "*/"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    :cond_8
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    const/16 v1, 0x23

    if-ne v0, v1, :cond_a

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->skipToEndOfLine()V

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    :cond_a
    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_1
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x10

    iget-object v5, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    const/4 v0, 0x0

    :cond_0
    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v5, v3

    if-ne v3, p1, :cond_2

    iput v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    sub-int v1, v4, v2

    add-int/lit8 v1, v1, -0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v2, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_4

    iput v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    sub-int v1, v4, v2

    add-int/lit8 v1, v1, -0x1

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_3
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    :cond_4
    const/16 v6, 0xa

    if-ne v3, v6, :cond_5

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    iput v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, v3, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_7
    sub-int v1, v3, v2

    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int v4, v3, v1

    iget v5, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v3, v1

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    :cond_2
    :pswitch_1
    move v2, v1

    :goto_1
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_2
    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    return-object v0

    :cond_3
    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekKeyword()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v2, 0x5

    const-string v1, "true"

    const-string v0, "TRUE"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_8

    iget v6, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v3

    :goto_2
    return v2

    :cond_1
    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v2, 0x6

    const-string v1, "false"

    const-string v0, "FALSE"

    goto :goto_0

    :cond_3
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v2, 0x7

    const-string v1, "null"

    const-string v0, "NULL"

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    move v2, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v5

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_9

    add-int/lit8 v0, v5, 0x1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    goto :goto_2

    :cond_a
    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v5

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2
.end method

.method private peekNumber()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v10, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    move v9, v4

    :goto_0
    add-int v4, v0, v9

    if-ne v4, v1, :cond_5

    array-length v0, v10

    if-ne v9, v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v9, 0x1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const/4 v0, 0x2

    if-ne v7, v0, :cond_12

    if-eqz v6, :cond_12

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    if-eqz v8, :cond_12

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    if-nez v8, :cond_12

    :cond_3
    if-eqz v8, :cond_11

    :goto_2
    iput-wide v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedLong:J

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v9

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    const/16 v0, 0xf

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0xf

    goto :goto_1

    :cond_4
    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    :cond_5
    add-int v4, v0, v9

    aget-char v4, v10, v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1e

    const/16 v5, 0x45

    if-eq v4, v5, :cond_1b

    const/16 v5, 0x65

    if-eq v4, v5, :cond_1b

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_17

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_15

    const/16 v5, 0x30

    if-lt v4, v5, :cond_6

    const/16 v5, 0x39

    if-le v4, v5, :cond_7

    :cond_6
    invoke-direct {p0, v4}, Lutilcode/com/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v5, 0x1

    if-eq v7, v5, :cond_8

    if-nez v7, :cond_9

    :cond_8
    add-int/lit8 v2, v4, -0x30

    neg-int v2, v2

    int-to-long v2, v2

    const/4 v4, 0x2

    :goto_3
    move v5, v8

    move v7, v4

    :goto_4
    add-int/lit8 v4, v9, 0x1

    move v8, v5

    move v9, v4

    goto :goto_0

    :cond_9
    const/4 v5, 0x2

    if-ne v7, v5, :cond_e

    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-nez v5, :cond_a

    const/4 v0, 0x0

    goto :goto_1

    :cond_a
    const-wide/16 v12, 0xa

    mul-long/2addr v12, v2

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    sub-long v4, v12, v4

    const-wide v12, -0xcccccccccccccccL

    cmp-long v11, v2, v12

    if-gtz v11, :cond_b

    const-wide v12, -0xcccccccccccccccL

    cmp-long v11, v2, v12

    if-nez v11, :cond_d

    cmp-long v2, v4, v2

    if-gez v2, :cond_d

    :cond_b
    const/4 v2, 0x1

    :goto_5
    and-int/2addr v6, v2

    move-wide v2, v4

    :cond_c
    move v4, v7

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    goto :goto_5

    :cond_e
    const/4 v4, 0x3

    if-ne v7, v4, :cond_f

    const/4 v4, 0x4

    goto :goto_3

    :cond_f
    const/4 v4, 0x5

    if-eq v7, v4, :cond_10

    const/4 v4, 0x6

    if-ne v7, v4, :cond_c

    :cond_10
    const/4 v4, 0x7

    goto :goto_3

    :cond_11
    neg-long v2, v2

    goto/16 :goto_2

    :cond_12
    const/4 v0, 0x2

    if-eq v7, v0, :cond_13

    const/4 v0, 0x4

    if-eq v7, v0, :cond_13

    const/4 v0, 0x7

    if-ne v7, v0, :cond_14

    :cond_13
    iput v9, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    const/16 v0, 0x10

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0x10

    goto/16 :goto_1

    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_15
    const/4 v4, 0x2

    if-ne v7, v4, :cond_16

    const/4 v4, 0x3

    move v5, v8

    move v7, v4

    goto :goto_4

    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_17
    if-nez v7, :cond_18

    const/4 v7, 0x1

    const/4 v4, 0x1

    move v5, v4

    goto :goto_4

    :cond_18
    const/4 v4, 0x5

    if-ne v7, v4, :cond_1a

    :cond_19
    const/4 v4, 0x6

    move v5, v8

    move v7, v4

    goto :goto_4

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1b
    const/4 v4, 0x2

    if-eq v7, v4, :cond_1c

    const/4 v4, 0x4

    if-ne v7, v4, :cond_1d

    :cond_1c
    const/4 v4, 0x5

    move v5, v8

    move v7, v4

    goto :goto_4

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1e
    const/4 v4, 0x5

    if-eq v7, v4, :cond_19

    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private push(I)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stack:[I

    iput-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iput-object v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    return-void
.end method

.method private readEscapeCharacter()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x66

    const/16 v0, 0xa

    const/4 v5, 0x4

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    if-eq v1, v0, :cond_e

    const/16 v2, 0x22

    if-eq v1, v2, :cond_f

    const/16 v2, 0x27

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_f

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x62

    if-eq v1, v2, :cond_d

    if-eq v1, v6, :cond_c

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_8

    const/16 v0, 0x72

    if-eq v1, v0, :cond_b

    const/16 v0, 0x74

    if-eq v1, v0, :cond_a

    const/16 v0, 0x75

    if-ne v1, v0, :cond_9

    add-int/lit8 v0, v3, 0x4

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v5}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    move v1, v2

    :goto_0
    add-int/lit8 v3, v2, 0x4

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    aget-char v3, v3, v1

    shl-int/lit8 v0, v0, 0x4

    int-to-char v4, v0

    const/16 v0, 0x30

    if-lt v3, v0, :cond_4

    const/16 v0, 0x39

    if-gt v3, v0, :cond_4

    add-int/lit8 v0, v3, -0x30

    :goto_1
    add-int/2addr v0, v4

    int-to-char v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    const/16 v0, 0x61

    if-lt v3, v0, :cond_5

    if-gt v3, v6, :cond_5

    add-int/lit8 v0, v3, -0x61

    :goto_2
    add-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_5
    const/16 v0, 0x41

    if-lt v3, v0, :cond_6

    const/16 v0, 0x46

    if-gt v3, v0, :cond_6

    add-int/lit8 v0, v3, -0x41

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    :cond_8
    :goto_3
    return v0

    :cond_9
    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a
    const/16 v0, 0x9

    goto :goto_3

    :cond_b
    const/16 v0, 0xd

    goto :goto_3

    :cond_c
    const/16 v0, 0xc

    goto :goto_3

    :cond_d
    const/16 v0, 0x8

    goto :goto_3

    :cond_e
    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    iput v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    :cond_f
    move v0, v1

    goto :goto_3
.end method

.method private skipQuotedValue(C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    :cond_0
    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    :goto_0
    if-ge v1, v0, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    if-ne v1, p1, :cond_1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_1
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_2

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->readEscapeCharacter()C

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    :cond_2
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v1, v2

    if-le v1, v3, :cond_0

    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v3

    const/16 v4, 0xa

    if-ne v1, v4, :cond_4

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    :goto_1
    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int v2, v1, v0

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    :cond_2
    :pswitch_1
    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    :goto_1
    return-void

    :cond_3
    add-int/2addr v0, v1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lutilcode/com/google/gson/stream/MalformedJsonException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->push(I)V

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->push(I)V

    const/4 v0, 0x0

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method doPeek()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v8, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v5, -0x1

    aget v6, v4, v6

    if-ne v6, v2, :cond_2

    add-int/lit8 v5, v5, -0x1

    aput v1, v4, v5

    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_18

    const/16 v5, 0x27

    if-eq v4, v5, :cond_17

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_14

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_14

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_13

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_12

    const/16 v0, 0x7b

    if-eq v4, v0, :cond_11

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v0

    if-eqz v0, :cond_f

    :cond_1
    :goto_1
    return v0

    :cond_2
    if-ne v6, v1, :cond_5

    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_4

    const/16 v1, 0x5d

    if-ne v4, v1, :cond_3

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    :cond_3
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    :cond_5
    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    if-ne v6, v8, :cond_7

    :cond_6
    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v0, v3, v4

    if-ne v6, v8, :cond_1b

    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_1b

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_1a

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_19

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    move v0, v1

    goto :goto_1

    :cond_7
    if-ne v6, v0, :cond_a

    add-int/lit8 v5, v5, -0x1

    aput v8, v4, v5

    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_9

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    iget v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lutilcode/com/google/gson/stream/JsonReader;->limit:I

    if-lt v4, v5, :cond_8

    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_8
    iget-object v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    aget-char v4, v4, v5

    const/16 v7, 0x3e

    if-ne v4, v7, :cond_0

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    :cond_9
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a
    const/4 v4, 0x6

    if-ne v6, v4, :cond_c

    iget-boolean v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v4, :cond_b

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    :cond_b
    iget-object v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aput v3, v4, v5

    goto/16 :goto_0

    :cond_c
    if-ne v6, v3, :cond_e

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lutilcode/com/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    const/16 v0, 0x11

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0x11

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    iget v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0x8

    if-ne v6, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peekNumber()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xa

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0xa

    goto/16 :goto_1

    :cond_10
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_11
    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    move v0, v2

    goto/16 :goto_1

    :cond_12
    if-ne v6, v2, :cond_14

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    :cond_13
    const/4 v0, 0x3

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_14
    if-eq v6, v2, :cond_15

    if-ne v6, v1, :cond_16

    :cond_15
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iput v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    move v0, v3

    goto/16 :goto_1

    :cond_16
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v0, 0x8

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0x8

    goto/16 :goto_1

    :cond_18
    const/16 v0, 0x9

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0x9

    goto/16 :goto_1

    :cond_19
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1a
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    :cond_1b
    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_20

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_1d

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0xe

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0xe

    goto/16 :goto_1

    :cond_1c
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1d
    if-eq v6, v8, :cond_1e

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    move v0, v1

    goto/16 :goto_1

    :cond_1e
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xc

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0xc

    goto/16 :goto_1

    :cond_20
    const/16 v0, 0xd

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0xd

    goto/16 :goto_1
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected END_ARRAY but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected END_OBJECT but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v4, v3, v0

    if-eqz v4, :cond_0

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
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

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method locationString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineNumber:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lineStart:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a boolean but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iput v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    :cond_2
    :goto_1
    iput v5, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v4, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_0

    :cond_4
    if-eq v0, v2, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    :cond_5
    if-ne v0, v2, :cond_8

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_7
    if-eq v0, v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a double but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/16 v0, 0x22

    goto :goto_2

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lutilcode/com/google/gson/stream/MalformedJsonException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    iget-wide v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v0, v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iput v6, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected an int but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-nez v1, :cond_8

    const/4 v1, 0x0

    iput-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v6, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0

    :cond_3
    if-eq v0, v2, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    if-ne v0, v3, :cond_5

    :cond_4
    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected an int but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-ne v0, v2, :cond_7

    const/16 v0, 0x27

    :goto_3
    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/16 v0, 0x22

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected an int but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public nextLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iput v6, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedLong:J

    :goto_0
    return-wide v0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v0, v2

    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    iput-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v6, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_0

    :cond_2
    if-eq v0, v2, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_4

    :cond_3
    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a long but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v0, 0x27

    :goto_3
    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/16 v0, 0x22

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a long but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a name but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected null but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a string but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lutilcode/com/google/gson/stream/JsonToken;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lutilcode/com/google/gson/stream/JsonToken;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NAME:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BOOLEAN:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lutilcode/com/google/gson/stream/JsonReader;->lenient:Z

    return-void
.end method

.method public skipValue()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    :cond_1
    if-ne v2, v5, :cond_3

    invoke-direct {p0, v4}, Lutilcode/com/google/gson/stream/JsonReader;->push(I)V

    :goto_0
    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_1
    iput v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    iget-object v0, p0, Lutilcode/com/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    :cond_3
    if-ne v2, v4, :cond_4

    invoke-direct {p0, v5}, Lutilcode/com/google/gson/stream/JsonReader;->push(I)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->stackSize:I

    goto :goto_2

    :cond_6
    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    :cond_7
    invoke-direct {p0}, Lutilcode/com/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_1

    :cond_8
    const/16 v3, 0x8

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_1

    :cond_a
    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lutilcode/com/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_1

    :cond_c
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    iget v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lutilcode/com/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lutilcode/com/google/gson/stream/JsonReader;->pos:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lutilcode/com/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
