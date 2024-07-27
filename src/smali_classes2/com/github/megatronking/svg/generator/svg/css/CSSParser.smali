.class public Lcom/github/megatronking/svg/generator/svg/css/CSSParser;
.super Ljava/lang/Object;


# static fields
.field private static final BRACE_CLOSE:I = 0x5

.field private static final BRACE_OPEN:I = 0x4

.field private static final BRACKET_CLOSE:I = 0x3

.field private static final BRACKET_OPEN:I = 0x2

.field private static final END:I = -0x1

.field private static final IDENTIFIER:I = 0x1

.field private static final PAREN_CLOSE:I = 0x7

.field private static final PAREN_OPEN:I = 0x6

.field private static final charMapping:[C


# instance fields
.field private callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

.field private chars:[C

.field private didPushChar:Z

.field private encounteredRuleSet:Z

.field private iterateIndex:I

.field private pushedChar:I

.field private readWS:Z

.field private stackCount:I

.field private tokenBuffer:[C

.field private tokenBufferLength:I

.field private unitBuffer:Ljava/lang/StringBuffer;

.field private unitStack:[I


# direct methods
.method static final constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [C

    int-to-char v1, v3

    aput-char v1, v0, v3

    const/4 v1, 0x1

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x28

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x29

    aput-char v2, v0, v1

    const/16 v1, 0x8

    int-to-char v2, v3

    aput-char v2, v0, v1

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitStack:[I

    const/16 v0, 0x50

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private append(C)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    :cond_0
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    return-void
.end method

.method private endBlock(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitStack:[I

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    return-void

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unmatched block"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getIdentifier(C)Z
    .registers 14

    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    move v5, v0

    move v7, v0

    move v2, v0

    move v3, v0

    move v4, v0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-gtz v2, :cond_b

    :goto_1
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    int-to-short v6, v0

    :goto_2
    if-eqz v7, :cond_5

    if-ne v6, v9, :cond_3

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v10, :cond_0

    int-to-char v6, v3

    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    :cond_2
    :goto_3
    move v7, v0

    goto :goto_0

    :sswitch_0
    int-to-short v6, v1

    goto :goto_2

    :sswitch_1
    int-to-short v6, v9

    add-int/lit8 v5, v8, -0x30

    goto :goto_2

    :sswitch_2
    int-to-short v6, v9

    add-int/lit8 v5, v8, -0x61

    add-int/lit8 v5, v5, 0xa

    goto :goto_2

    :sswitch_3
    int-to-short v6, v9

    add-int/lit8 v5, v8, -0x41

    add-int/lit8 v5, v5, 0xa

    goto :goto_2

    :sswitch_4
    int-to-short v6, v11

    goto :goto_2

    :sswitch_5
    int-to-short v6, v10

    goto :goto_2

    :sswitch_6
    int-to-short v6, v0

    move v4, v1

    goto :goto_2

    :cond_3
    if-lez v2, :cond_4

    int-to-char v6, v3

    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    invoke-direct {p0, v8}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    move v7, v0

    goto :goto_0

    :cond_4
    if-nez v4, :cond_2

    int-to-char v6, v8

    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    goto :goto_3

    :cond_5
    if-nez v4, :cond_0

    if-ne v6, v1, :cond_6

    move v7, v1

    move v2, v0

    move v3, v0

    goto :goto_0

    :cond_6
    if-ne v6, v11, :cond_7

    invoke-direct {p0, v8}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    move v4, v1

    goto :goto_0

    :cond_7
    if-ne v6, v10, :cond_a

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v6

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_8

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readComment()V

    iput-boolean v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    move v4, v1

    goto :goto_0

    :cond_8
    const/16 v8, 0x2f

    invoke-direct {p0, v8}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    const/4 v8, -0x1

    if-ne v6, v8, :cond_9

    move v4, v1

    goto :goto_0

    :cond_9
    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    goto :goto_0

    :cond_a
    int-to-char v6, v8

    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    if-ne v8, p1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_b
    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_6
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xd -> :sswitch_4
        0x20 -> :sswitch_4
        0x22 -> :sswitch_4
        0x27 -> :sswitch_4
        0x28 -> :sswitch_4
        0x29 -> :sswitch_4
        0x2f -> :sswitch_5
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_3
        0x45 -> :sswitch_3
        0x46 -> :sswitch_3
        0x5b -> :sswitch_4
        0x5c -> :sswitch_0
        0x5d -> :sswitch_4
        0x61 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x7b -> :sswitch_4
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method private getNextStatement()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->nextToken(C)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    aget-char v1, v2, v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseAtRule()V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->encounteredRuleSet:Z

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseRuleSet()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unexpected top level block close"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inBlock()Z
    .registers 2

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private nextToken(C)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    invoke-direct {p0, p1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->getIdentifier(C)Z

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readTill(C)V

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readTill(C)V

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const/4 v0, -0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_8
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x5b -> :sswitch_2
        0x5d -> :sswitch_3
        0x7b -> :sswitch_4
        0x7d -> :sswitch_5
    .end sparse-switch
.end method

.method private parseAtRule()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v8, 0x20

    const/16 v7, 0x3b

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    aget-char v0, v0, v2

    const/16 v3, 0x40

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    aget-char v0, v0, v1

    const/16 v3, 0x69

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x2

    aget-char v0, v0, v3

    const/16 v3, 0x6d

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x3

    aget-char v0, v0, v3

    const/16 v3, 0x70

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x4

    aget-char v0, v0, v3

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x5

    aget-char v0, v0, v3

    const/16 v3, 0x72

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x6

    aget-char v0, v0, v3

    const/16 v3, 0x74

    if-eq v0, v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v3, v2

    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->encounteredRuleSet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->handleImport(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v7}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->nextToken(C)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move v3, v1

    goto :goto_1

    :pswitch_2
    iget v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v5, v5, -0x1

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_5

    iget v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    move v3, v1

    :cond_5
    iget v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_6

    iget-boolean v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v6, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_7

    iget-boolean v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v5, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v4}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    if-eq v3, v7, :cond_8

    invoke-direct {p0, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    :cond_8
    move v3, v1

    goto :goto_1

    :pswitch_4
    iget-object v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v6, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v4}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unexpected close in @ rule"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseDeclaration()I
    .registers 5

    const/4 v3, 0x1

    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseIdentifiers(CZ)I

    move-result v0

    if-eq v0, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->handleProperty(Ljava/lang/String;)V

    const/16 v0, 0x3b

    invoke-direct {p0, v0, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseIdentifiers(CZ)I

    move-result v0

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->handleValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private parseDeclarationBlock()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseDeclaration()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    return-void

    :pswitch_3
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unexpected close in declaration block"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private parseIdentifiers(CZ)I
    .registers 9

    const/16 v5, 0x20

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->nextToken(C)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :goto_1
    :pswitch_1
    return v0

    :pswitch_2
    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_3

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v3, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private parseRuleSet()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseSelectors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    invoke-interface {v0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->startRule()V

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseDeclarationBlock()V

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    invoke-interface {v0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->endRule()V

    :cond_0
    return-void
.end method

.method private parseSelectors()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->handleSelector(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->nextToken(C)I

    move-result v2

    if-eq v2, v0, :cond_2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    :pswitch_2
    return v0

    :cond_2
    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->handleSelector(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unexpected block close in selector"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseTillClosed(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/16 v5, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->startBlock(I)V

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->nextToken(C)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unclosed block"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->startBlock(I)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-boolean v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->endBlock(I)V

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->inBlock()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private pushChar(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->didPushChar:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Can not handle look ahead of more than one character"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->didPushChar:Z

    iput p1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushedChar:I

    return-void
.end method

.method private readChar()I
    .registers 3

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->didPushChar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->didPushChar:Z

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushedChar:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->iterateIndex:I

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->chars:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->chars:[C

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->iterateIndex:I

    aget-char v0, v0, v1

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->iterateIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->iterateIndex:I

    goto :goto_0
.end method

.method private readComment()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unclosed comment"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unclosed comment"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method private readTill(C)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    iput v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    move v2, v4

    move v0, v4

    move v5, v4

    move v6, v4

    move v7, v4

    :goto_0
    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    int-to-short v3, v4

    :goto_1
    if-eqz v7, :cond_5

    if-ne v3, v9, :cond_1

    mul-int/lit8 v3, v5, 0x10

    add-int/2addr v3, v2

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x4

    if-ne v6, v5, :cond_8

    int-to-char v5, v3

    invoke-direct {p0, v5}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    move v5, v3

    move v7, v4

    goto :goto_0

    :sswitch_0
    int-to-short v3, v1

    goto :goto_1

    :sswitch_1
    int-to-short v3, v9

    add-int/lit8 v2, v8, -0x30

    goto :goto_1

    :sswitch_2
    int-to-short v3, v9

    add-int/lit8 v2, v8, -0x61

    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    :sswitch_3
    int-to-short v3, v9

    add-int/lit8 v2, v8, -0x41

    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    :sswitch_4
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unclosed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lez v6, :cond_4

    int-to-char v7, v5

    invoke-direct {p0, v7}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    if-ne v3, v1, :cond_2

    move v5, v4

    move v6, v4

    move v7, v1

    goto :goto_0

    :cond_2
    if-ne v8, p1, :cond_3

    move v0, v1

    :cond_3
    int-to-char v3, v8

    invoke-direct {p0, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    move v7, v4

    goto :goto_0

    :cond_4
    int-to-char v3, v8

    invoke-direct {p0, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    move v7, v4

    goto :goto_0

    :cond_5
    if-ne v3, v1, :cond_6

    move v5, v4

    move v6, v4

    move v7, v1

    goto :goto_0

    :cond_6
    if-ne v8, p1, :cond_7

    move v0, v1

    :cond_7
    int-to-char v3, v8

    invoke-direct {p0, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    goto :goto_0

    :cond_8
    move v5, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_3
        0x45 -> :sswitch_3
        0x46 -> :sswitch_3
        0x5c -> :sswitch_0
        0x61 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
    .end sparse-switch
.end method

.method private readWS()I
    .registers 3

    :goto_0
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    goto :goto_0
.end method

.method private startBlock(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitStack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitStack:[I

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitStack:[I

    :cond_0
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitStack:[I

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    aput p1, v0, v1

    return-void
.end method

.method private string2chars(Ljava/lang/String;)[C
    .registers 4

    :try_start_0
    const-string v0, "java.lang.String"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    check-cast v0, [C

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    invoke-direct {p0, p1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->string2chars(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->chars:[C

    iput v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    iput v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    iput-boolean v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->encounteredRuleSet:Z

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseDeclarationBlock()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->getNextStatement()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
