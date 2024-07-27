.class public Lgroovyjarjarantlr/ANTLRTokdefParser;
.super Lgroovyjarjarantlr/LLkParser;

# interfaces
.implements Lgroovyjarjarantlr/ANTLRTokdefParserTokenTypes;


# static fields
.field public static final EQ:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final tp:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final u7:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

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

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STRING"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ASSIGN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "INT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SL_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ML_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ESC"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "XDIGIT"

    aput-object v2, v0, v1

    sput-object v0, Lgroovyjarjarantlr/ANTLRTokdefParser;->u7:[Ljava/lang/String;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRTokdefParser;->VH()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRTokdefParser;->tp:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRTokdefParser;->gn()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRTokdefParser;->EQ:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method private static final VH()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2
        0x0
    .end array-data
.end method

.method private static final gn()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x32
        0x0
    .end array-data
.end method
