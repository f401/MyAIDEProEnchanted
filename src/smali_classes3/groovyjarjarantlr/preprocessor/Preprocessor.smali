.class public Lgroovyjarjarantlr/preprocessor/Preprocessor;
.super Lgroovyjarjarantlr/LLkParser;

# interfaces
.implements Lgroovyjarjarantlr/preprocessor/PreprocessorTokenTypes;


# static fields
.field public static final EQ:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final J0:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final J8:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final QX:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final XL:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final aM:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final tp:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final u7:[Ljava/lang/String;

.field public static final we:Lgroovyjarjarantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<0>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EOF"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<2>"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NULL_TREE_LOOKAHEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\"tokens\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HEADER_ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SUBRULE_BLOCK"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\"class\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\"extends\""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SEMI"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TOKENS_SPEC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "OPTIONS_START"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ASSIGN_RHS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RCURLY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\"protected\""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\"private\""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\"public\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "BANG"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ARG_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\"returns\""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "RULE_BLOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\"throws\""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "COMMA"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\"exception\""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\"catch\""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ALT"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ELEMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "LPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "RPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "ID_OR_KEYWORD"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "CURLY_BLOCK_SCARF"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "NEWLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SL_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ML_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "CHAR_LITERAL"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "STRING_LITERAL"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "ESC"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "XDIGIT"

    aput-object v2, v0, v1

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->u7:[Ljava/lang/String;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/preprocessor/Preprocessor;->VH()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->tp:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/preprocessor/Preprocessor;->gn()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->EQ:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/preprocessor/Preprocessor;->u7()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->we:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/preprocessor/Preprocessor;->tp()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/preprocessor/Preprocessor;->EQ()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/preprocessor/Preprocessor;->we()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/preprocessor/Preprocessor;->J0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/preprocessor/Preprocessor;->J8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/preprocessor/Preprocessor;->Ws()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/preprocessor/Preprocessor;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method private static final EQ()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x800
        0x0
    .end array-data
.end method

.method private static final J0()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x402080
        0x0
    .end array-data
.end method

.method private static final J8()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x2070382
        0x0
    .end array-data
.end method

.method private static final VH()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x2
        0x0
    .end array-data
.end method

.method private static final Ws()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x6070382
        0x0
    .end array-data
.end method

.method private static final gn()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x471382
        0x0
    .end array-data
.end method

.method private static final tp()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x182
        0x0
    .end array-data
.end method

.method private static final u7()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x70200
        0x0
    .end array-data
.end method

.method private static final we()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x70382
        0x0
    .end array-data
.end method
