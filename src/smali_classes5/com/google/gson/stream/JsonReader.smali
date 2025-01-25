.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

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

    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1594
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1616
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 238
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v1, 0x6

    aput v1, v0, v2

    .line 283
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 284
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 290
    if-eqz p1, :cond_31

    .line 293
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 294
    return-void

    .line 291
    :cond_31
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

    .line 1408
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_5

    .line 1411
    return-void

    .line 1409
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

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

    .line 1576
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1577
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1579
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v1

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v2, :cond_1a

    array-length v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1591
    :cond_19
    :goto_19
    return-void

    .line 1583
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2e

    .line 1584
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-ne v2, v1, :cond_19

    .line 1583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1590
    :cond_2e
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_19
.end method

.method private fillBuffer(I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1284
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1285
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1286
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-eq v2, v3, :cond_49

    .line 1287
    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1288
    invoke-static {v1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1293
    :goto_14
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1295
    :cond_16
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_48

    .line 1296
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1299
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    if-nez v3, :cond_45

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v3, :cond_45

    if-lez v2, :cond_45

    aget-char v4, v1, v0

    const v5, 0xfeff

    if-ne v4, v5, :cond_45

    .line 1300
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1301
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1302
    add-int/lit8 p1, p1, 0x1

    .line 1305
    :cond_45
    if-lt v2, p1, :cond_16

    .line 1306
    const/4 v0, 0x1

    .line 1309
    :cond_48
    return v0

    .line 1290
    :cond_49
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_14
.end method

.method private isLiteral(C)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    sparse-switch p1, :sswitch_data_a

    .line 765
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 751
    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 763
    :sswitch_8
    const/4 v0, 0x0

    goto :goto_4

    .line 745
    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1327
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1328
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1329
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1331
    :goto_6
    if-ne v0, v1, :cond_34

    .line 1332
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1333
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1334
    if-nez p1, :cond_15

    .line 1403
    const/4 v0, -0x1

    :cond_14
    :goto_14
    return v0

    .line 1401
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1336
    :cond_30
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1337
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1340
    :cond_34
    add-int/lit8 v2, v0, 0x1

    aget-char v0, v3, v0

    .line 1341
    const/16 v4, 0xa

    if-ne v0, v4, :cond_46

    .line 1342
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1343
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_44
    move v0, v2

    .line 1331
    goto :goto_6

    .line 1345
    :cond_46
    const/16 v4, 0x20

    if-eq v0, v4, :cond_44

    const/16 v4, 0xd

    if-eq v0, v4, :cond_44

    const/16 v4, 0x9

    if-eq v0, v4, :cond_44

    .line 1349
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_9e

    .line 1350
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1351
    if-ne v2, v1, :cond_6b

    .line 1352
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1353
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    .line 1354
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1355
    if-eqz v1, :cond_14

    .line 1360
    :cond_6b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1361
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v3, v1

    .line 1362
    sparse-switch v2, :sswitch_data_b4

    goto :goto_14

    .line 1365
    :sswitch_76
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1366
    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1369
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1370
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1371
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_6

    .line 1375
    :sswitch_8a
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1376
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1377
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1378
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_6

    .line 1367
    :cond_97
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1384
    :cond_9e
    const/16 v1, 0x23

    if-ne v0, v1, :cond_b0

    .line 1385
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1391
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1392
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1393
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1394
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_6

    .line 1396
    :cond_b0
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_14

    .line 1362
    :sswitch_data_b4
    .sparse-switch
        0x2a -> :sswitch_76
        0x2f -> :sswitch_8a
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x10

    .line 987
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 988
    const/4 v0, 0x0

    .line 990
    :cond_5
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 991
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v5, v4

    move v1, v4

    .line 994
    :goto_b
    if-ge v5, v2, :cond_63

    .line 995
    add-int/lit8 v4, v5, 0x1

    aget-char v3, v6, v5

    .line 997
    if-ne v3, p1, :cond_29

    .line 998
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 999
    sub-int v2, v4, v1

    add-int/lit8 v2, v2, -0x1

    .line 1000
    if-nez v0, :cond_21

    .line 1001
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1004
    :goto_20
    return-object v0

    .line 1003
    :cond_21
    invoke-virtual {v0, v6, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1006
    :cond_29
    const/16 v5, 0x5c

    if-ne v3, v5, :cond_55

    .line 1007
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1008
    sub-int v2, v4, v1

    add-int/lit8 v2, v2, -0x1

    .line 1009
    if-nez v0, :cond_42

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1013
    :cond_42
    invoke-virtual {v0, v6, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1014
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1015
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1016
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v1, v2

    move v4, v2

    :goto_52
    move v5, v4

    move v2, v3

    .line 1022
    goto :goto_b

    .line 1018
    :cond_55
    const/16 v5, 0xa

    if-ne v3, v5, :cond_61

    .line 1019
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1020
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_61
    move v3, v2

    .line 1022
    goto :goto_52

    .line 1024
    :cond_63
    if-nez v0, :cond_72

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v2, v5, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1028
    :cond_72
    sub-int v2, v5, v1

    invoke-virtual {v0, v6, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1029
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1030
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1031
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

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

    .line 1041
    const/4 v0, 0x0

    move v1, v2

    .line 1046
    :goto_3
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v4, v3, v1

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v4, v5, :cond_2a

    .line 1047
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v3, v1

    aget-char v3, v4, v3

    sparse-switch v3, :sswitch_data_68

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1053
    :sswitch_16
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1086
    :cond_19
    :goto_19
    :sswitch_19
    if-nez v0, :cond_5a

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1091
    :goto_24
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1092
    return-object v0

    .line 1070
    :cond_2a
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_38

    .line 1071
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_3

    .line 1079
    :cond_38
    if-nez v0, :cond_45

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1082
    :cond_45
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1083
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1085
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_66

    move v1, v2

    goto :goto_19

    .line 1086
    :cond_5a
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_66
    move v1, v2

    .line 1085
    goto :goto_3

    .line 1047
    :sswitch_data_68
    .sparse-switch
        0x9 -> :sswitch_19
        0xa -> :sswitch_19
        0xc -> :sswitch_19
        0xd -> :sswitch_19
        0x20 -> :sswitch_19
        0x23 -> :sswitch_16
        0x2c -> :sswitch_19
        0x2f -> :sswitch_16
        0x3a -> :sswitch_19
        0x3b -> :sswitch_16
        0x3d -> :sswitch_16
        0x5b -> :sswitch_19
        0x5c -> :sswitch_16
        0x5d -> :sswitch_19
        0x7b -> :sswitch_19
        0x7d -> :sswitch_19
    .end sparse-switch
.end method

.method private peekKeyword()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 599
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 603
    const/16 v1, 0x74

    if-eq v0, v1, :cond_f

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2c

    .line 604
    :cond_f
    const-string v1, "true"

    .line 605
    const-string v0, "TRUE"

    .line 606
    const/4 v2, 0x5

    .line 620
    :goto_14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 621
    const/4 v4, 0x1

    :goto_19
    if-ge v4, v5, :cond_62

    .line 622
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_4a

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_4a

    move v2, v3

    .line 638
    :goto_2b
    return v2

    .line 607
    :cond_2c
    const/16 v1, 0x66

    if-eq v0, v1, :cond_34

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3a

    .line 608
    :cond_34
    const-string v1, "false"

    .line 609
    const-string v0, "FALSE"

    .line 610
    const/4 v2, 0x6

    goto :goto_14

    .line 611
    :cond_3a
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_42

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_48

    .line 612
    :cond_42
    const-string v1, "null"

    .line 613
    const-string v0, "NULL"

    .line 614
    const/4 v2, 0x7

    goto :goto_14

    :cond_48
    move v2, v3

    .line 616
    goto :goto_2b

    .line 625
    :cond_4a
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    .line 626
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    move v2, v3

    .line 627
    goto :goto_2b

    .line 621
    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 631
    :cond_62
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v5

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_71

    add-int/lit8 v0, v5, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_80

    :cond_71
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    .line 632
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_80

    move v2, v3

    .line 633
    goto :goto_2b

    .line 637
    :cond_80
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 638
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2b
.end method

.method private peekNumber()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 644
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 645
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 647
    const-wide/16 v8, 0x0

    .line 648
    const/4 v11, 0x0

    .line 649
    const/4 v10, 0x1

    .line 650
    const/4 v12, 0x0

    .line 652
    const/4 v4, 0x0

    move v13, v4

    .line 656
    :goto_13
    const/4 v4, 0x0

    add-int v5, v3, v13

    if-ne v5, v2, :cond_5c

    .line 657
    array-length v2, v14

    if-ne v13, v2, :cond_1d

    .line 660
    const/4 v2, 0x0

    .line 740
    :goto_1c
    return v2

    .line 662
    :cond_1d
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_54

    .line 707
    :cond_27
    const/4 v2, 0x2

    if-ne v12, v2, :cond_fc

    if-eqz v10, :cond_fc

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v8, v2

    if-nez v2, :cond_34

    if-eqz v11, :cond_fc

    :cond_34
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_3c

    if-nez v11, :cond_fc

    .line 732
    :cond_3c
    if-eqz v11, :cond_f9

    :goto_3e
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 733
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 734
    const/16 v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v2, 0xf

    goto :goto_1c

    .line 665
    :cond_54
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 666
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 669
    :cond_5c
    add-int v5, v3, v13

    aget-char v5, v14, v5

    .line 670
    sparse-switch v5, :sswitch_data_11a

    .line 705
    const/16 v6, 0x30

    if-lt v5, v6, :cond_6b

    const/16 v6, 0x39

    if-le v5, v6, :cond_aa

    :cond_6b
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 709
    const/4 v2, 0x0

    goto :goto_1c

    .line 691
    :sswitch_75
    const/4 v4, 0x2

    if-eq v12, v4, :cond_7b

    const/4 v4, 0x4

    if-ne v12, v4, :cond_83

    .line 692
    :cond_7b
    const/4 v6, 0x5

    move-wide v4, v8

    move v12, v6

    .line 655
    :goto_7e
    add-int/lit8 v6, v13, 0x1

    move-wide v8, v4

    move v13, v6

    goto :goto_13

    .line 695
    :cond_83
    const/4 v2, 0x0

    goto :goto_1c

    .line 698
    :sswitch_85
    const/4 v4, 0x2

    if-ne v12, v4, :cond_8c

    .line 699
    const/4 v6, 0x3

    move-wide v4, v8

    move v12, v6

    .line 700
    goto :goto_7e

    .line 702
    :cond_8c
    const/4 v2, 0x0

    goto :goto_1c

    .line 672
    :sswitch_8e
    if-nez v12, :cond_96

    .line 673
    const/4 v6, 0x1

    .line 674
    const/4 v7, 0x1

    move-wide v4, v8

    move v11, v6

    move v12, v7

    .line 675
    goto :goto_7e

    .line 676
    :cond_96
    const/4 v4, 0x5

    if-ne v12, v4, :cond_9d

    .line 677
    const/4 v6, 0x6

    move-wide v4, v8

    move v12, v6

    .line 678
    goto :goto_7e

    .line 680
    :cond_9d
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 683
    :sswitch_a0
    const/4 v4, 0x5

    if-ne v12, v4, :cond_a7

    .line 684
    const/4 v6, 0x6

    move-wide v4, v8

    move v12, v6

    .line 685
    goto :goto_7e

    .line 687
    :cond_a7
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 711
    :cond_aa
    const/4 v6, 0x1

    if-eq v12, v6, :cond_af

    if-nez v12, :cond_b6

    :cond_af
    add-int/lit8 v4, v5, -0x30

    neg-int v4, v4

    int-to-long v4, v4

    .line 713
    const/4 v6, 0x2

    move v12, v6

    goto :goto_7e

    .line 714
    :cond_b6
    const/4 v6, 0x2

    if-ne v12, v6, :cond_e8

    .line 715
    const-wide/16 v6, 0x0

    cmp-long v6, v8, v6

    if-nez v6, :cond_c2

    .line 716
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 718
    :cond_c2
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v8

    add-int/lit8 v5, v5, -0x30

    int-to-long v0, v5

    move-wide/from16 v16, v0

    sub-long v6, v6, v16

    .line 719
    const-wide v16, -0xcccccccccccccccL

    cmp-long v5, v8, v16

    if-gtz v5, :cond_e2

    const-wide v16, -0xcccccccccccccccL

    cmp-long v5, v8, v16

    if-nez v5, :cond_e3

    cmp-long v5, v6, v8

    if-gez v5, :cond_e3

    :cond_e2
    const/4 v4, 0x1

    .line 721
    :cond_e3
    and-int v8, v10, v4

    move-wide v4, v6

    move v10, v8

    goto :goto_7e

    :cond_e8
    const/4 v4, 0x3

    if-ne v12, v4, :cond_ef

    .line 723
    const/4 v6, 0x4

    move-wide v4, v8

    move v12, v6

    goto :goto_7e

    .line 724
    :cond_ef
    const/4 v4, 0x5

    if-eq v12, v4, :cond_f5

    const/4 v4, 0x6

    if-ne v12, v4, :cond_116

    .line 725
    :cond_f5
    const/4 v6, 0x7

    move-wide v4, v8

    move v12, v6

    goto :goto_7e

    .line 732
    :cond_f9
    neg-long v8, v8

    goto/16 :goto_3e

    .line 735
    :cond_fc
    const/4 v2, 0x2

    if-eq v12, v2, :cond_105

    const/4 v2, 0x4

    if-eq v12, v2, :cond_105

    const/4 v2, 0x7

    if-ne v12, v2, :cond_113

    .line 737
    :cond_105
    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 738
    const/16 v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v2, 0x10

    goto/16 :goto_1c

    .line 740
    :cond_113
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_116
    move-wide v4, v8

    goto/16 :goto_7e

    .line 670
    nop

    :sswitch_data_11a
    .sparse-switch
        0x2b -> :sswitch_a0
        0x2d -> :sswitch_8e
        0x2e -> :sswitch_85
        0x45 -> :sswitch_75
        0x65 -> :sswitch_75
    .end sparse-switch
.end method

.method private push(I)V
    .registers 8

    const/4 v5, 0x0

    .line 1264
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_2b

    .line 1265
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 1266
    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    .line 1267
    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 1268
    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1270
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1271
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1272
    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1273
    iput-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1275
    :cond_2b
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    .line 1276
    return-void
.end method

.method private readEscapeCharacter()C
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    .line 1504
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1508
    :cond_e
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1509
    sparse-switch v0, :sswitch_data_b8

    .line 1559
    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1505
    :cond_22
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1511
    :sswitch_29
    add-int/lit8 v0, v2, 0x4

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_35

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1515
    :cond_35
    const/4 v0, 0x0

    .line 1516
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    move v1, v2

    :goto_39
    add-int/lit8 v3, v2, 0x4

    if-ge v1, v3, :cond_98

    .line 1517
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v3, v3, v1

    .line 1518
    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    .line 1519
    const/16 v4, 0x30

    if-lt v3, v4, :cond_5a

    const/16 v4, 0x39

    if-gt v3, v4, :cond_5a

    .line 1520
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 1516
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1512
    :cond_53
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1521
    :cond_5a
    const/16 v4, 0x61

    if-lt v3, v4, :cond_69

    const/16 v4, 0x66

    if-gt v3, v4, :cond_69

    .line 1522
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_50

    .line 1523
    :cond_69
    const/16 v4, 0x41

    if-lt v3, v4, :cond_78

    const/16 v4, 0x46

    if-gt v3, v4, :cond_78

    .line 1524
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_50

    .line 1526
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1529
    :cond_98
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1556
    :goto_9e
    :sswitch_9e
    return v0

    .line 1533
    :sswitch_9f
    const/16 v0, 0x9

    goto :goto_9e

    .line 1542
    :sswitch_a2
    const/16 v0, 0xd

    goto :goto_9e

    .line 1539
    :sswitch_a5
    const/16 v0, 0xa

    goto :goto_9e

    .line 1545
    :sswitch_a8
    const/16 v0, 0xc

    goto :goto_9e

    .line 1536
    :sswitch_ab
    const/16 v0, 0x8

    goto :goto_9e

    .line 1548
    :sswitch_ae
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1549
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_9e

    .line 1509
    nop

    :sswitch_data_b8
    .sparse-switch
        0xa -> :sswitch_ae
        0x22 -> :sswitch_9e
        0x27 -> :sswitch_9e
        0x2f -> :sswitch_9e
        0x5c -> :sswitch_9e
        0x62 -> :sswitch_ab
        0x66 -> :sswitch_a8
        0x6e -> :sswitch_a5
        0x72 -> :sswitch_a2
        0x74 -> :sswitch_9f
        0x75 -> :sswitch_29
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1099
    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1100
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v2, v1

    .line 1102
    :goto_7
    if-ge v2, v0, :cond_2e

    .line 1103
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    .line 1104
    if-ne v2, p1, :cond_12

    .line 1105
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1106
    return-void

    .line 1107
    :cond_12
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_21

    .line 1108
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1109
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1110
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1111
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_1f
    :goto_1f
    move v2, v1

    .line 1116
    goto :goto_7

    .line 1112
    :cond_21
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1f

    .line 1113
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1114
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1f

    .line 1117
    :cond_2e
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1119
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

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

    .line 1435
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1437
    :goto_5
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v3, :cond_12

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1438
    :cond_12
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v3

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2d

    .line 1439
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1440
    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1445
    :cond_26
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_5

    :cond_2d
    move v1, v0

    .line 1443
    :goto_2e
    if-ge v1, v2, :cond_40

    .line 1444
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_26

    .line 1443
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1448
    :cond_40
    const/4 v0, 0x1

    .line 1450
    :cond_41
    return v0
.end method

.method private skipToEndOfLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1420
    :cond_d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1421
    const/16 v1, 0xa

    if-ne v0, v1, :cond_24

    .line 1422
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1423
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1426
    :cond_23
    :goto_23
    return-void

    .line 1425
    :cond_24
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_23
.end method

.method private skipUnquotedValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1124
    :cond_0
    const/4 v0, 0x0

    .line 1125
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_1d

    .line 1126
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    sparse-switch v1, :sswitch_data_28

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1132
    :sswitch_14
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1144
    :sswitch_17
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1150
    :goto_1c
    return-void

    .line 1148
    :cond_1d
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1c

    .line 1126
    :sswitch_data_28
    .sparse-switch
        0x9 -> :sswitch_17
        0xa -> :sswitch_17
        0xc -> :sswitch_17
        0xd -> :sswitch_17
        0x20 -> :sswitch_17
        0x23 -> :sswitch_14
        0x2c -> :sswitch_17
        0x2f -> :sswitch_14
        0x3a -> :sswitch_17
        0x3b -> :sswitch_14
        0x3d -> :sswitch_14
        0x5b -> :sswitch_17
        0x5c -> :sswitch_14
        0x5d -> :sswitch_17
        0x7b -> :sswitch_17
        0x7d -> :sswitch_17
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

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

    .line 341
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 342
    if-nez v0, :cond_9

    .line 343
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 345
    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 347
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    .line 348
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 352
    return-void

    .line 350
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

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

    .line 377
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 378
    if-nez v0, :cond_8

    .line 379
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 381
    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 382
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 387
    return-void

    .line 385
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

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

    .line 1216
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1217
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1218
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1219
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1220
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

    .line 462
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v5, -0x1

    aget v6, v4, v6

    .line 463
    if-ne v6, v2, :cond_27

    .line 464
    add-int/lit8 v5, v5, -0x1

    aput v1, v4, v5

    .line 549
    :cond_13
    :goto_13
    :pswitch_13  #0x3a
    :sswitch_13
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v4

    .line 550
    sparse-switch v4, :sswitch_data_176

    .line 576
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 579
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v0

    .line 580
    if-eqz v0, :cond_103

    .line 594
    :cond_26
    :goto_26
    return v0

    .line 465
    :cond_27
    if-ne v6, v1, :cond_3e

    .line 467
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v4

    .line 468
    sparse-switch v4, :sswitch_data_194

    .line 476
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 470
    :sswitch_37
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_26

    .line 472
    :sswitch_3a
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_13

    .line 474
    :cond_3e
    const/4 v7, 0x3

    if-eq v6, v7, :cond_43

    if-ne v6, v8, :cond_57

    .line 479
    :cond_43
    add-int/lit8 v3, v5, -0x1

    aput v0, v4, v3

    .line 481
    if-ne v6, v8, :cond_12f

    .line 482
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 483
    sparse-switch v0, :sswitch_data_1a2

    .line 491
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 516
    :cond_57
    if-ne v6, v0, :cond_89

    .line 517
    add-int/lit8 v5, v5, -0x1

    aput v8, v4, v5

    .line 519
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v4

    .line 520
    packed-switch v4, :pswitch_data_1b0

    .line 530
    :pswitch_64  #0x3b, 0x3c
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 524
    :pswitch_6b  #0x3d
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 525
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v4, v5, :cond_7a

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_7a
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v4, v4, v5

    const/16 v7, 0x3e

    if-ne v4, v7, :cond_13

    .line 526
    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_13

    .line 522
    :cond_89
    const/4 v4, 0x6

    if-ne v6, v4, :cond_9d

    .line 533
    iget-boolean v4, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v4, :cond_93

    .line 534
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 536
    :cond_93
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aput v3, v4, v5

    goto/16 :goto_13

    .line 537
    :cond_9d
    if-ne v6, v3, :cond_ba

    .line 538
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v4

    .line 539
    const/4 v5, -0x1

    if-ne v4, v5, :cond_af

    .line 540
    const/16 v0, 0x11

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0x11

    goto/16 :goto_26

    .line 542
    :cond_af
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 543
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_13

    .line 545
    :cond_ba
    const/16 v4, 0x8

    if-ne v6, v4, :cond_13

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :sswitch_c6
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v0, v2

    goto/16 :goto_26

    .line 552
    :sswitch_cb
    if-ne v6, v2, :cond_d7

    .line 553
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_26

    .line 572
    :sswitch_d1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/4 v0, 0x3

    goto/16 :goto_26

    .line 559
    :cond_d7
    :sswitch_d7
    if-eq v6, v2, :cond_db

    if-ne v6, v1, :cond_e9

    .line 560
    :cond_db
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 561
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 562
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v0, v3

    goto/16 :goto_26

    .line 564
    :cond_e9
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 567
    :sswitch_f0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 568
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0x8

    goto/16 :goto_26

    .line 570
    :sswitch_fb
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0x9

    goto/16 :goto_26

    .line 584
    :cond_103
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v0

    .line 585
    if-nez v0, :cond_26

    .line 589
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 593
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 594
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0xa

    goto/16 :goto_26

    .line 590
    :cond_120
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 485
    :sswitch_127
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v0, v1

    goto/16 :goto_26

    .line 487
    :sswitch_12c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 494
    :cond_12f
    :sswitch_12f
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 495
    sparse-switch v0, :sswitch_data_1bc

    .line 508
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 509
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 510
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 511
    const/16 v0, 0xe

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0xe

    goto/16 :goto_26

    .line 502
    :sswitch_14e
    if-eq v6, v8, :cond_155

    .line 503
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v0, v1

    goto/16 :goto_26

    .line 505
    :cond_155
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 499
    :sswitch_15c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 500
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0xc

    goto/16 :goto_26

    .line 497
    :sswitch_167
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v0, 0xd

    goto/16 :goto_26

    .line 513
    :cond_16f
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 550
    :sswitch_data_176
    .sparse-switch
        0x22 -> :sswitch_fb
        0x27 -> :sswitch_f0
        0x2c -> :sswitch_d7
        0x3b -> :sswitch_d7
        0x5b -> :sswitch_d1
        0x5d -> :sswitch_cb
        0x7b -> :sswitch_c6
    .end sparse-switch

    .line 468
    :sswitch_data_194
    .sparse-switch
        0x2c -> :sswitch_13
        0x3b -> :sswitch_3a
        0x5d -> :sswitch_37
    .end sparse-switch

    .line 483
    :sswitch_data_1a2
    .sparse-switch
        0x2c -> :sswitch_12f
        0x3b -> :sswitch_12c
        0x7d -> :sswitch_127
    .end sparse-switch

    .line 520
    :pswitch_data_1b0
    .packed-switch 0x3a
        :pswitch_13  #0000003a
        :pswitch_64  #0000003b
        :pswitch_64  #0000003c
        :pswitch_6b  #0000003d
    .end packed-switch

    .line 495
    :sswitch_data_1bc
    .sparse-switch
        0x22 -> :sswitch_167
        0x27 -> :sswitch_15c
        0x7d -> :sswitch_14e
    .end sparse-switch
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 360
    if-nez v0, :cond_8

    .line 361
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 363
    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 364
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 365
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 370
    return-void

    .line 368
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected END_ARRAY but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

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

    .line 394
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 395
    if-nez v0, :cond_8

    .line 396
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 398
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 399
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 400
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 401
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 406
    return-void

    .line 404
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected END_OBJECT but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

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

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1469
    const/4 v0, 0x0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    :goto_e
    if-ge v0, v2, :cond_3d

    .line 1470
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_42

    .line 1474
    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1479
    :pswitch_1a  #0x3, 0x4, 0x5
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1480
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v4, v3, v0

    if-eqz v4, :cond_17

    .line 1481
    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1473
    :pswitch_2b  #0x1, 0x2
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1491
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1470
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2b  #00000001
        :pswitch_2b  #00000002
        :pswitch_1a  #00000003
        :pswitch_1a  #00000004
        :pswitch_1a  #00000005
    .end packed-switch
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 413
    if-nez v0, :cond_8

    .line 414
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 416
    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final isLenient()Z
    .registers 2

    .line 333
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method locationString()Ljava/lang/String;
    .registers 6

    .line 1458
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1459
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1460
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

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

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

    .line 840
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 841
    if-nez v1, :cond_9

    .line 842
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 844
    :cond_9
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    .line 845
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 846
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 847
    const/4 v0, 0x1

    .line 851
    :goto_1b
    return v0

    .line 848
    :cond_1c
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2e

    .line 849
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 850
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1b

    .line 853
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a boolean but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

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

    .line 886
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 887
    if-nez v0, :cond_d

    .line 888
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 891
    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_23

    .line 892
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 893
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 894
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v0, v0

    .line 917
    :goto_22
    return-wide v0

    .line 897
    :cond_23
    const/16 v1, 0x10

    if-ne v0, v1, :cond_65

    .line 898
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 899
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 908
    :cond_3b
    :goto_3b
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 909
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 910
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_53

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_a8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_a8

    .line 914
    :cond_53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 915
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 916
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_22

    .line 900
    :cond_65
    if-eq v0, v2, :cond_6b

    const/16 v1, 0x9

    if-ne v0, v1, :cond_76

    .line 901
    :cond_6b
    if-ne v0, v2, :cond_a5

    const/16 v0, 0x27

    :goto_6f
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3b

    .line 902
    :cond_76
    const/16 v1, 0xa

    if-ne v0, v1, :cond_81

    .line 903
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3b

    .line 904
    :cond_81
    if-eq v0, v5, :cond_3b

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a double but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 901
    :cond_a5
    const/16 v0, 0x22

    goto :goto_6f

    .line 911
    :cond_a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

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

    .line 1163
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1164
    if-nez v0, :cond_d

    .line 1165
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1169
    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_48

    .line 1170
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v0, v2

    .line 1171
    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-nez v1, :cond_28

    .line 1174
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1175
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 1209
    :goto_27
    return v0

    .line 1172
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected an int but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1179
    :cond_48
    const/16 v1, 0x10

    if-ne v0, v1, :cond_82

    .line 1180
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1181
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1195
    :goto_60
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1201
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1202
    double-to-int v0, v2

    .line 1203
    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-nez v1, :cond_d8

    .line 1206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1207
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1208
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_27

    .line 1182
    :cond_82
    if-eq v0, v2, :cond_8a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_8a

    if-ne v0, v3, :cond_a8

    .line 1183
    :cond_8a
    if-ne v0, v3, :cond_ca

    .line 1184
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1189
    :goto_92
    :try_start_92
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1190
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1191
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_92 .. :try_end_9f} :catch_f8

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_27

    .line 1197
    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected an int but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1186
    :cond_ca
    if-ne v0, v2, :cond_d5

    const/16 v0, 0x27

    :goto_ce
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_92

    :cond_d5
    const/16 v0, 0x22

    goto :goto_ce

    .line 1204
    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected an int but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1193
    :catch_f8
    move-exception v0

    goto/16 :goto_60
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

    .line 931
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 932
    if-nez v0, :cond_d

    .line 933
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 936
    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_22

    .line 937
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 938
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 939
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 972
    :goto_21
    return-wide v0

    .line 942
    :cond_22
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5c

    .line 943
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 944
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 958
    :goto_3a
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 964
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 965
    double-to-long v0, v2

    .line 966
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-nez v2, :cond_b2

    .line 969
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 970
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 971
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_21

    .line 945
    :cond_5c
    if-eq v0, v2, :cond_64

    const/16 v1, 0x9

    if-eq v0, v1, :cond_64

    if-ne v0, v3, :cond_82

    .line 946
    :cond_64
    if-ne v0, v3, :cond_a4

    .line 947
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 952
    :goto_6c
    :try_start_6c
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 953
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 954
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_79} :catch_d2

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_21

    .line 960
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a long but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 949
    :cond_a4
    if-ne v0, v2, :cond_af

    const/16 v0, 0x27

    :goto_a8
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_6c

    :cond_af
    const/16 v0, 0x22

    goto :goto_a8

    .line 967
    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a long but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 956
    :catch_d2
    move-exception v0

    goto/16 :goto_3a
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 778
    if-nez v0, :cond_8

    .line 779
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 782
    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    .line 783
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    .line 791
    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 792
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 793
    return-object v0

    .line 784
    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    .line 785
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 786
    :cond_27
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    .line 787
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 789
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a name but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

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

    .line 864
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 865
    if-nez v0, :cond_8

    .line 866
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 868
    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 870
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 874
    return-void

    .line 872
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected null but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

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

    .line 805
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 806
    if-nez v0, :cond_8

    .line 807
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 810
    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_20

    .line 811
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 828
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 829
    return-object v0

    .line 812
    :cond_20
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    .line 813
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 814
    :cond_2b
    const/16 v1, 0x9

    if-ne v0, v1, :cond_36

    .line 815
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 816
    :cond_36
    const/16 v1, 0xb

    if-ne v0, v1, :cond_40

    .line 817
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 818
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_10

    .line 819
    :cond_40
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4b

    .line 820
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 821
    :cond_4b
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    .line 822
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 823
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_10

    .line 825
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a string but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 424
    if-nez v0, :cond_8

    .line 425
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 428
    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 457
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 455
    :pswitch_11  #0x11
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    :goto_13
    return-object v0

    .line 453
    :pswitch_14  #0xf, 0x10
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 440
    :pswitch_17  #0xc, 0xd, 0xe
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 450
    :pswitch_1a  #0x8, 0x9, 0xa, 0xb
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 445
    :pswitch_1d  #0x7
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 443
    :pswitch_20  #0x5, 0x6
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 436
    :pswitch_23  #0x4
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 434
    :pswitch_26  #0x3
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 432
    :pswitch_29  #0x2
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 430
    :pswitch_2c  #0x1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 428
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_1a  #00000009
        :pswitch_1a  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
        :pswitch_17  #0000000d
        :pswitch_17  #0000000e
        :pswitch_14  #0000000f
        :pswitch_14  #00000010
        :pswitch_11  #00000011
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2

    .line 326
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 327
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

    .line 1228
    move v0, v1

    .line 1230
    :cond_4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1231
    if-nez v2, :cond_c

    .line 1232
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1235
    :cond_c
    if-ne v2, v5, :cond_2c

    .line 1236
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1237
    add-int/lit8 v0, v0, 0x1

    .line 1256
    :cond_13
    :goto_13
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1257
    if-nez v0, :cond_4

    .line 1259
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 1260
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    .line 1261
    return-void

    .line 1238
    :cond_2c
    if-ne v2, v4, :cond_34

    .line 1239
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1241
    :cond_34
    const/4 v3, 0x4

    if-ne v2, v3, :cond_40

    .line 1242
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1243
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1244
    :cond_40
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 1245
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1246
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1247
    :cond_4c
    const/16 v3, 0xe

    if-eq v2, v3, :cond_54

    const/16 v3, 0xa

    if-ne v2, v3, :cond_58

    .line 1248
    :cond_54
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_13

    .line 1249
    :cond_58
    const/16 v3, 0x8

    if-eq v2, v3, :cond_60

    const/16 v3, 0xc

    if-ne v2, v3, :cond_66

    .line 1250
    :cond_60
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_13

    .line 1251
    :cond_66
    const/16 v3, 0x9

    if-eq v2, v3, :cond_6e

    const/16 v3, 0xd

    if-ne v2, v3, :cond_74

    .line 1252
    :cond_6e
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_13

    .line 1253
    :cond_74
    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    .line 1254
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
