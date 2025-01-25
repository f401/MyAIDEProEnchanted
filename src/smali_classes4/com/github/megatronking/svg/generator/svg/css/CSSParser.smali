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

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    :cond_19
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

    packed-switch p1, :pswitch_data_28

    :pswitch_3  #0x4, 0x6
    const/4 v0, -0x1

    :goto_4
    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    if-lez v1, :cond_1f

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitStack:[I

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ne v1, v0, :cond_1f

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    return-void

    :pswitch_19  #0x3
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_1b  #0x5
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_1d  #0x7
    const/4 v0, 0x6

    goto :goto_4

    :cond_1f
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unmatched block"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_19  #00000003
        :pswitch_3  #00000004
        :pswitch_1b  #00000005
        :pswitch_3  #00000006
        :pswitch_1d  #00000007
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

    move v3, v0

    move v2, v0

    move v4, v0

    :cond_c
    :goto_c
    if-eqz v4, :cond_13

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-gtz v2, :cond_8d

    :goto_12
    return v0

    :cond_13
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v8

    sparse-switch v8, :sswitch_data_90

    int-to-short v6, v0

    :goto_1b
    if-eqz v7, :cond_57

    if-ne v6, v9, :cond_45

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v10, :cond_c

    int-to-char v6, v3

    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    :cond_2a
    :goto_2a
    move v7, v0

    goto :goto_c

    :sswitch_2c
    int-to-short v6, v1

    goto :goto_1b

    :sswitch_2e
    int-to-short v6, v9

    add-int/lit8 v5, v8, -0x30

    goto :goto_1b

    :sswitch_32
    int-to-short v6, v9

    add-int/lit8 v5, v8, -0x61

    add-int/lit8 v5, v5, 0xa

    goto :goto_1b

    :sswitch_38
    int-to-short v6, v9

    add-int/lit8 v5, v8, -0x41

    add-int/lit8 v5, v5, 0xa

    goto :goto_1b

    :sswitch_3e
    int-to-short v6, v11

    goto :goto_1b

    :sswitch_40
    int-to-short v6, v10

    goto :goto_1b

    :sswitch_42
    int-to-short v6, v0

    move v4, v1

    goto :goto_1b

    :cond_45
    if-lez v2, :cond_50

    int-to-char v6, v3

    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    invoke-direct {p0, v8}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    move v7, v0

    goto :goto_c

    :cond_50
    if-nez v4, :cond_2a

    int-to-char v6, v8

    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    goto :goto_2a

    :cond_57
    if-nez v4, :cond_c

    if-ne v6, v1, :cond_5f

    move v7, v1

    move v3, v0

    move v2, v0

    goto :goto_c

    :cond_5f
    if-ne v6, v11, :cond_66

    invoke-direct {p0, v8}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    move v4, v1

    goto :goto_c

    :cond_66
    if-ne v6, v10, :cond_85

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v6

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_77

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readComment()V

    iput-boolean v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    move v4, v1

    goto :goto_c

    :cond_77
    const/16 v8, 0x2f

    invoke-direct {p0, v8}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    const/4 v8, -0x1

    if-ne v6, v8, :cond_81

    move v4, v1

    goto :goto_c

    :cond_81
    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    goto :goto_c

    :cond_85
    int-to-char v6, v8

    invoke-direct {p0, v6}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    if-ne v8, p1, :cond_c

    move v4, v1

    goto :goto_c

    :cond_8d
    move v0, v1

    goto :goto_12

    nop

    :sswitch_data_90
    .sparse-switch
        -0x1 -> :sswitch_42
        0x9 -> :sswitch_3e
        0xa -> :sswitch_3e
        0xd -> :sswitch_3e
        0x20 -> :sswitch_3e
        0x22 -> :sswitch_3e
        0x27 -> :sswitch_3e
        0x28 -> :sswitch_3e
        0x29 -> :sswitch_3e
        0x2f -> :sswitch_40
        0x30 -> :sswitch_2e
        0x31 -> :sswitch_2e
        0x32 -> :sswitch_2e
        0x33 -> :sswitch_2e
        0x34 -> :sswitch_2e
        0x35 -> :sswitch_2e
        0x36 -> :sswitch_2e
        0x37 -> :sswitch_2e
        0x38 -> :sswitch_2e
        0x39 -> :sswitch_2e
        0x41 -> :sswitch_38
        0x42 -> :sswitch_38
        0x43 -> :sswitch_38
        0x44 -> :sswitch_38
        0x45 -> :sswitch_38
        0x46 -> :sswitch_38
        0x5b -> :sswitch_3e
        0x5c -> :sswitch_2c
        0x5d -> :sswitch_3e
        0x61 -> :sswitch_32
        0x62 -> :sswitch_32
        0x63 -> :sswitch_32
        0x64 -> :sswitch_32
        0x65 -> :sswitch_32
        0x66 -> :sswitch_32
        0x7b -> :sswitch_3e
        0x7d -> :sswitch_3e
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

    packed-switch v2, :pswitch_data_34

    :cond_e
    :goto_e
    :pswitch_e  #0x0
    return v0

    :pswitch_f  #0x1
    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v2, :cond_e

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    aget-char v1, v2, v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1f

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseAtRule()V

    goto :goto_e

    :cond_1f
    iput-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->encounteredRuleSet:Z

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseRuleSet()V

    goto :goto_e

    :pswitch_25  #0x2, 0x4, 0x6
    invoke-direct {p0, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    goto :goto_e

    :pswitch_29  #0x3, 0x5, 0x7
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unexpected top level block close"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_31  #0xffffffff
    move v0, v1

    goto :goto_e

    nop

    :pswitch_data_34
    .packed-switch -0x1
        :pswitch_31  #ffffffff
        :pswitch_e  #00000000
        :pswitch_f  #00000001
        :pswitch_25  #00000002
        :pswitch_29  #00000003
        :pswitch_25  #00000004
        :pswitch_29  #00000005
        :pswitch_25  #00000006
        :pswitch_29  #00000007
    .end packed-switch
.end method

.method private inBlock()Z
    .registers 2

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private nextToken(C)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    invoke-direct {p0, p1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->getIdentifier(C)Z

    :cond_11
    :goto_11
    return v0

    :sswitch_12
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readTill(C)V

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v1, :cond_11

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    goto :goto_11

    :sswitch_22
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readTill(C)V

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v1, :cond_11

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    goto :goto_11

    :sswitch_32
    const/4 v0, 0x2

    goto :goto_11

    :sswitch_34
    const/4 v0, 0x3

    goto :goto_11

    :sswitch_36
    const/4 v0, 0x4

    goto :goto_11

    :sswitch_38
    const/4 v0, 0x5

    goto :goto_11

    :sswitch_3a
    const/4 v0, 0x6

    goto :goto_11

    :sswitch_3c
    const/4 v0, 0x7

    goto :goto_11

    :sswitch_3e
    const/4 v0, -0x1

    goto :goto_11

    :sswitch_data_40
    .sparse-switch
        -0x1 -> :sswitch_3e
        0x22 -> :sswitch_22
        0x27 -> :sswitch_12
        0x28 -> :sswitch_3a
        0x29 -> :sswitch_3c
        0x5b -> :sswitch_32
        0x5d -> :sswitch_34
        0x7b -> :sswitch_36
        0x7d -> :sswitch_38
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

    if-ne v0, v3, :cond_48

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    aget-char v0, v0, v2

    const/16 v3, 0x40

    if-ne v0, v3, :cond_48

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    aget-char v0, v0, v1

    const/16 v3, 0x69

    if-ne v0, v3, :cond_48

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x2

    aget-char v0, v0, v3

    const/16 v3, 0x6d

    if-ne v0, v3, :cond_48

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x3

    aget-char v0, v0, v3

    const/16 v3, 0x70

    if-ne v0, v3, :cond_48

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x4

    aget-char v0, v0, v3

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_48

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x5

    aget-char v0, v0, v3

    const/16 v3, 0x72

    if-ne v0, v3, :cond_48

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    const/4 v3, 0x6

    aget-char v0, v0, v3

    const/16 v3, 0x74

    if-eq v0, v3, :cond_63

    :cond_48
    move v0, v2

    :goto_49
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v3, v2

    :cond_4f
    :goto_4f
    if-eqz v3, :cond_65

    if-eqz v0, :cond_62

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->encounteredRuleSet:Z

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->handleImport(Ljava/lang/String;)V

    :cond_62
    return-void

    :cond_63
    move v0, v1

    goto :goto_49

    :cond_65
    invoke-direct {p0, v7}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->nextToken(C)I

    move-result v4

    packed-switch v4, :pswitch_data_e4

    :pswitch_6c  #0x0
    goto :goto_4f

    :pswitch_6d  #0xffffffff
    move v3, v1

    goto :goto_4f

    :pswitch_6f  #0x1
    iget v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v4, :cond_84

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v5, v5, -0x1

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_84

    iget v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    move v3, v1

    :cond_84
    iget v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v4, :cond_4f

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_99

    iget-boolean v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v4, :cond_99

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_99
    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v6, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_4f

    :pswitch_a3  #0x4
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_b4

    iget-boolean v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b4
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v5, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v4}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_cc

    if-eq v3, v7, :cond_cc

    invoke-direct {p0, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    :cond_cc
    move v3, v1

    goto :goto_4f

    :pswitch_ce  #0x2, 0x6
    iget-object v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v6, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v4}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    goto/16 :goto_4f

    :pswitch_dc  #0x3, 0x5, 0x7
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unexpected close in @ rule"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_e4
    .packed-switch -0x1
        :pswitch_6d  #ffffffff
        :pswitch_6c  #00000000
        :pswitch_6f  #00000001
        :pswitch_ce  #00000002
        :pswitch_dc  #00000003
        :pswitch_a3  #00000004
        :pswitch_dc  #00000005
        :pswitch_ce  #00000006
        :pswitch_dc  #00000007
    .end packed-switch
.end method

.method private parseDeclaration()I
    .registers 5

    const/4 v3, 0x1

    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseIdentifiers(CZ)I

    move-result v0

    if-eq v0, v3, :cond_b

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-gez v0, :cond_32

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

    goto :goto_a

    :cond_32
    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method private parseDeclarationBlock()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :goto_0
    :pswitch_0  #0x1
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseDeclaration()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    :pswitch_7  #0x0, 0x2, 0x4, 0x6
    goto :goto_0

    :pswitch_8  #0xffffffff, 0x5
    return-void

    :pswitch_9  #0x3, 0x7
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unexpected close in declaration block"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_8  #ffffffff
        :pswitch_7  #00000000
        :pswitch_0  #00000001
        :pswitch_7  #00000002
        :pswitch_9  #00000003
        :pswitch_7  #00000004
        :pswitch_8  #00000005
        :pswitch_7  #00000006
        :pswitch_9  #00000007
    .end packed-switch
.end method

.method private parseIdentifiers(CZ)I
    .registers 9

    const/16 v5, 0x20

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_8
    :goto_8
    invoke-direct {p0, p1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->nextToken(C)I

    move-result v0

    packed-switch v0, :pswitch_data_7a

    :pswitch_f  #0x0
    goto :goto_8

    :goto_10
    :pswitch_10  #0xffffffff, 0x3, 0x5, 0x7
    return v0

    :pswitch_11  #0x1
    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_43

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v0, :cond_41

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_38

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_38
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_41
    const/4 v0, 0x1

    goto :goto_10

    :cond_43
    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_54

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_54
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_8

    :pswitch_5e  #0x2, 0x4, 0x6
    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz p2, :cond_6f

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v3, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6f
    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    if-nez p2, :cond_8

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_8

    :pswitch_data_7a
    .packed-switch -0x1
        :pswitch_10  #ffffffff
        :pswitch_f  #00000000
        :pswitch_11  #00000001
        :pswitch_5e  #00000002
        :pswitch_10  #00000003
        :pswitch_5e  #00000004
        :pswitch_10  #00000005
        :pswitch_5e  #00000006
        :pswitch_10  #00000007
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

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    invoke-interface {v0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->startRule()V

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseDeclarationBlock()V

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    invoke-interface {v0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->endRule()V

    :cond_13
    return-void
.end method

.method private parseSelectors()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v2, :cond_14

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->handleSelector(Ljava/lang/String;)V

    :cond_14
    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_19
    :goto_19
    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->nextToken(C)I

    move-result v2

    if-eq v2, v0, :cond_25

    packed-switch v2, :pswitch_data_4a

    :pswitch_22  #0x0, 0x1
    goto :goto_19

    :pswitch_23  #0xffffffff
    move v0, v1

    :pswitch_24  #0x4
    return v0

    :cond_25
    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v2, :cond_19

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->callback:Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v5, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;->handleSelector(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_38  #0x2, 0x6
    invoke-direct {p0, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseTillClosed(I)V

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_19

    :pswitch_41  #0x3, 0x5, 0x7
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unexpected block close in selector"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_4a
    .packed-switch -0x1
        :pswitch_23  #ffffffff
        :pswitch_22  #00000000
        :pswitch_22  #00000001
        :pswitch_38  #00000002
        :pswitch_41  #00000003
        :pswitch_24  #00000004
        :pswitch_41  #00000005
        :pswitch_38  #00000006
        :pswitch_41  #00000007
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

    :cond_7
    :goto_7
    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->nextToken(C)I

    move-result v2

    packed-switch v2, :pswitch_data_7c

    :pswitch_11  #0x0
    goto :goto_7

    :pswitch_12  #0xffffffff
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unclosed block"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a  #0x1
    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_2b

    iget-boolean v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2b
    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBuffer:[C

    iget v4, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->tokenBufferLength:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_7

    :pswitch_39  #0x2, 0x4, 0x6
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_4a

    iget-boolean v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4a
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->startBlock(I)V

    goto :goto_7

    :pswitch_57  #0x3, 0x5, 0x7
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_68

    iget-boolean v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readWS:Z

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_68
    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitBuffer:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->charMapping:[C

    aget-char v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->endBlock(I)V

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->inBlock()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :pswitch_data_7c
    .packed-switch -0x1
        :pswitch_12  #ffffffff
        :pswitch_11  #00000000
        :pswitch_1a  #00000001
        :pswitch_39  #00000002
        :pswitch_57  #00000003
        :pswitch_39  #00000004
        :pswitch_57  #00000005
        :pswitch_39  #00000006
        :pswitch_57  #00000007
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

    if-eqz v0, :cond_c

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Can not handle look ahead of more than one character"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->didPushChar:Z

    iput p1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushedChar:I

    return-void
.end method

.method private readChar()I
    .registers 3

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->didPushChar:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->didPushChar:Z

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushedChar:I

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->iterateIndex:I

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->chars:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_15

    const/4 v0, -0x1

    goto :goto_9

    :cond_15
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->chars:[C

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->iterateIndex:I

    aget-char v0, v0, v1

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->iterateIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->iterateIndex:I

    goto :goto_9
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

    sparse-switch v0, :sswitch_data_28

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unclosed comment"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_10
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_19

    return-void

    :cond_19
    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/css/CSSException;

    const-string v1, "Unclosed comment"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/svg/css/CSSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->pushChar(I)V

    goto :goto_0

    :sswitch_data_28
    .sparse-switch
        -0x1 -> :sswitch_8
        0x2a -> :sswitch_10
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

    :goto_a
    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v8

    sparse-switch v8, :sswitch_data_7e

    int-to-short v3, v4

    :goto_15
    if-eqz v7, :cond_6e

    if-ne v3, v9, :cond_53

    mul-int/lit8 v3, v5, 0x10

    add-int/2addr v3, v2

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x4

    if-ne v6, v5, :cond_7c

    int-to-char v5, v3

    invoke-direct {p0, v5}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    move v5, v3

    move v7, v4

    goto :goto_a

    :sswitch_28
    int-to-short v3, v1

    goto :goto_15

    :sswitch_2a
    int-to-short v3, v9

    add-int/lit8 v2, v8, -0x30

    goto :goto_15

    :sswitch_2e
    int-to-short v3, v9

    add-int/lit8 v2, v8, -0x61

    add-int/lit8 v2, v2, 0xa

    goto :goto_15

    :sswitch_34
    int-to-short v3, v9

    add-int/lit8 v2, v8, -0x41

    add-int/lit8 v2, v2, 0xa

    goto :goto_15

    :sswitch_3a
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

    :cond_53
    if-lez v6, :cond_68

    int-to-char v7, v5

    invoke-direct {p0, v7}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    if-ne v3, v1, :cond_5f

    move v5, v4

    move v6, v4

    move v7, v1

    goto :goto_a

    :cond_5f
    if-ne v8, p1, :cond_62

    move v0, v1

    :cond_62
    int-to-char v3, v8

    invoke-direct {p0, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    move v7, v4

    goto :goto_a

    :cond_68
    int-to-char v3, v8

    invoke-direct {p0, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    move v7, v4

    goto :goto_a

    :cond_6e
    if-ne v3, v1, :cond_74

    move v5, v4

    move v6, v4

    move v7, v1

    goto :goto_a

    :cond_74
    if-ne v8, p1, :cond_77

    move v0, v1

    :cond_77
    int-to-char v3, v8

    invoke-direct {p0, v3}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->append(C)V

    goto :goto_a

    :cond_7c
    move v5, v3

    goto :goto_a

    :sswitch_data_7e
    .sparse-switch
        -0x1 -> :sswitch_3a
        0x30 -> :sswitch_2a
        0x31 -> :sswitch_2a
        0x32 -> :sswitch_2a
        0x33 -> :sswitch_2a
        0x34 -> :sswitch_2a
        0x35 -> :sswitch_2a
        0x36 -> :sswitch_2a
        0x37 -> :sswitch_2a
        0x38 -> :sswitch_2a
        0x39 -> :sswitch_2a
        0x41 -> :sswitch_34
        0x42 -> :sswitch_34
        0x43 -> :sswitch_34
        0x44 -> :sswitch_34
        0x45 -> :sswitch_34
        0x46 -> :sswitch_34
        0x5c -> :sswitch_28
        0x61 -> :sswitch_2e
        0x62 -> :sswitch_2e
        0x63 -> :sswitch_2e
        0x64 -> :sswitch_2e
        0x65 -> :sswitch_2e
        0x66 -> :sswitch_2e
    .end sparse-switch
.end method

.method private readWS()I
    .registers 3

    :goto_0
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->readChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    return v0

    :cond_f
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

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitStack:[I

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->stackCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->unitStack:[I

    :cond_17
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
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_22

    move-result-object v0

    :try_start_6
    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_22

    :catch_22
    move-exception v0

    const/4 v0, 0x0

    check-cast v0, [C

    goto :goto_16
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

    if-eqz p3, :cond_15

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->parseDeclarationBlock()V

    :goto_14
    return-void

    :cond_15
    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/css/CSSParser;->getNextStatement()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_14
.end method
