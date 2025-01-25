.class public Lgroovyjarjarantlr/actions/csharp/ActionLexer;
.super Lgroovyjarjarantlr/CharScanner;

# interfaces
.implements Lgroovyjarjarantlr/actions/csharp/ActionLexerTokenTypes;
.implements Lgroovyjarjarantlr/TokenStream;


# static fields
.field public static final BT:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final J0:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final J8:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final KD:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final Mr:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final P8:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final QX:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final SI:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final U2:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final XL:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final a8:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final aM:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final cb:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final cn:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final dx:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final ei:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final er:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final gW:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final j3:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final lg:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final nw:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final rN:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final ro:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final sh:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final vy:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final yS:Lgroovyjarjarantlr/collections/impl/BitSet;


# instance fields
.field private Sf:Lgroovyjarjarantlr/Tool;

.field protected ef:Lgroovyjarjarantlr/CodeGenerator;

.field protected sG:Lgroovyjarjarantlr/RuleBlock;

.field vJ:Lgroovyjarjarantlr/ActionTransInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->we()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->J0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->rN()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->nw()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->SI()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->KD()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ro()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->cn()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Mr:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sh()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->U2:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->cb()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->a8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->J8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->lg:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Ws()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->rN:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->QX()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->er:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->aM()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->gW:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->BT:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Mr()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->vy:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->U2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->P8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->a8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ei:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->lg()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->nw:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->er()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->SI:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->KD:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->gW()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ro:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->BT()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->cn:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->vy()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sh:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->P8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->cb:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ei()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method private static final BT()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ff0a9500002600L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final J0()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x840000000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_d
    const/4 v2, 0x3

    if-gt v1, v2, :cond_17

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-object v0
.end method

.method private static final J8()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ff010d00002600L
        0x7fffffe8ffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final KD()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x10100002600L
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final Mr()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x2000be0100002600L
        0x20000000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final P8()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3fffe9500002600L
        0x7fffffea7fffffeL  # 3.7857645700037357E-270
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final QX()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ff1a9500002600L  # 1.99479437137812E-289
        0x7fffffea7fffffeL  # 3.7857645700037357E-270
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final SI()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x100002600L  # 2.122000597E-314
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final U2()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x2000000100002600L  # 1.491669568808863E-154
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final Ws()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ff089400000000L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final XL()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x0
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final a8()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0xbe0100002600L
        0x20000000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final aM()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x2000ff0100002600L  # 1.58453465115535E-154
        0x28000000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final cb()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ff000000000000L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final cn()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x400000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_13
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1d

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1d
    return-object v0
.end method

.method private static final ei()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ffbe9500002600L
        0x7fffffea7fffffeL  # 3.7857645700037357E-270
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final er()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0xac0100002600L
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final gW()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ff7b9500002600L
        0x7fffffeaffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final j3()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ff038d00002600L
        0x7fffffe8ffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final lg()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x10c00000000L
        0x7fffffe8ffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final nw()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x100002600L  # 2.122000597E-314
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final rN()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x809c00002408L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_d
    const/4 v2, 0x3

    if-gt v1, v2, :cond_17

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-object v0
.end method

.method private static final ro()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ff099500002600L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final sh()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x8000000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_13
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1d

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1d
    return-object v0
.end method

.method private static final vy()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ff089500002600L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final we()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x1800000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_d
    const/4 v2, 0x3

    if-gt v1, v2, :cond_17

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-object v0
.end method

.method private static final yS()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x3ffad8d00002600L
        0x7fffffe8ffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final DW(Z)V
    .registers 8

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_62

    const/16 v5, 0x24

    if-eq v4, v5, :cond_5e

    sget-object v4, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->aM(Z)V

    goto :goto_65

    :cond_25
    if-lt v2, v3, :cond_48

    if-eqz p1, :cond_44

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    :goto_45
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_48
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_5e
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->a8(Z)V

    goto :goto_65

    :cond_62
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Zo(Z)V

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method protected final EQ(Z)V
    .registers 11

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    const/16 v5, 0x5a

    const/16 v6, 0x41

    const/16 v7, 0x5f

    packed-switch v2, :pswitch_data_94

    :pswitch_18  #0x5b, 0x5c, 0x5d, 0x5e, 0x60
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_2e  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v4, v3}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_39

    :cond_32
    :pswitch_32  #0x5f
    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_39

    :pswitch_36  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a
    invoke-virtual {p0, v6, v5}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    :goto_39
    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->a8:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    invoke-virtual {v2, v8}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-eq v2, v7, :cond_32

    packed-switch v2, :pswitch_data_10c

    packed-switch v2, :pswitch_data_124

    packed-switch v2, :pswitch_data_15c

    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_6a  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v2, 0x30

    const/16 v8, 0x39

    invoke-virtual {p0, v2, v8}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_39

    :cond_72
    if-eqz p1, :cond_90

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_91

    :cond_90
    const/4 p1, 0x0

    :goto_91
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :pswitch_data_94
    .packed-switch 0x41
        :pswitch_36  #00000041
        :pswitch_36  #00000042
        :pswitch_36  #00000043
        :pswitch_36  #00000044
        :pswitch_36  #00000045
        :pswitch_36  #00000046
        :pswitch_36  #00000047
        :pswitch_36  #00000048
        :pswitch_36  #00000049
        :pswitch_36  #0000004a
        :pswitch_36  #0000004b
        :pswitch_36  #0000004c
        :pswitch_36  #0000004d
        :pswitch_36  #0000004e
        :pswitch_36  #0000004f
        :pswitch_36  #00000050
        :pswitch_36  #00000051
        :pswitch_36  #00000052
        :pswitch_36  #00000053
        :pswitch_36  #00000054
        :pswitch_36  #00000055
        :pswitch_36  #00000056
        :pswitch_36  #00000057
        :pswitch_36  #00000058
        :pswitch_36  #00000059
        :pswitch_36  #0000005a
        :pswitch_18  #0000005b
        :pswitch_18  #0000005c
        :pswitch_18  #0000005d
        :pswitch_18  #0000005e
        :pswitch_32  #0000005f
        :pswitch_18  #00000060
        :pswitch_2e  #00000061
        :pswitch_2e  #00000062
        :pswitch_2e  #00000063
        :pswitch_2e  #00000064
        :pswitch_2e  #00000065
        :pswitch_2e  #00000066
        :pswitch_2e  #00000067
        :pswitch_2e  #00000068
        :pswitch_2e  #00000069
        :pswitch_2e  #0000006a
        :pswitch_2e  #0000006b
        :pswitch_2e  #0000006c
        :pswitch_2e  #0000006d
        :pswitch_2e  #0000006e
        :pswitch_2e  #0000006f
        :pswitch_2e  #00000070
        :pswitch_2e  #00000071
        :pswitch_2e  #00000072
        :pswitch_2e  #00000073
        :pswitch_2e  #00000074
        :pswitch_2e  #00000075
        :pswitch_2e  #00000076
        :pswitch_2e  #00000077
        :pswitch_2e  #00000078
        :pswitch_2e  #00000079
        :pswitch_2e  #0000007a
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x30
        :pswitch_6a  #00000030
        :pswitch_6a  #00000031
        :pswitch_6a  #00000032
        :pswitch_6a  #00000033
        :pswitch_6a  #00000034
        :pswitch_6a  #00000035
        :pswitch_6a  #00000036
        :pswitch_6a  #00000037
        :pswitch_6a  #00000038
        :pswitch_6a  #00000039
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x41
        :pswitch_36  #00000041
        :pswitch_36  #00000042
        :pswitch_36  #00000043
        :pswitch_36  #00000044
        :pswitch_36  #00000045
        :pswitch_36  #00000046
        :pswitch_36  #00000047
        :pswitch_36  #00000048
        :pswitch_36  #00000049
        :pswitch_36  #0000004a
        :pswitch_36  #0000004b
        :pswitch_36  #0000004c
        :pswitch_36  #0000004d
        :pswitch_36  #0000004e
        :pswitch_36  #0000004f
        :pswitch_36  #00000050
        :pswitch_36  #00000051
        :pswitch_36  #00000052
        :pswitch_36  #00000053
        :pswitch_36  #00000054
        :pswitch_36  #00000055
        :pswitch_36  #00000056
        :pswitch_36  #00000057
        :pswitch_36  #00000058
        :pswitch_36  #00000059
        :pswitch_36  #0000005a
    .end packed-switch

    :pswitch_data_15c
    .packed-switch 0x61
        :pswitch_2e  #00000061
        :pswitch_2e  #00000062
        :pswitch_2e  #00000063
        :pswitch_2e  #00000064
        :pswitch_2e  #00000065
        :pswitch_2e  #00000066
        :pswitch_2e  #00000067
        :pswitch_2e  #00000068
        :pswitch_2e  #00000069
        :pswitch_2e  #0000006a
        :pswitch_2e  #0000006b
        :pswitch_2e  #0000006c
        :pswitch_2e  #0000006d
        :pswitch_2e  #0000006e
        :pswitch_2e  #0000006f
        :pswitch_2e  #00000070
        :pswitch_2e  #00000071
        :pswitch_2e  #00000072
        :pswitch_2e  #00000073
        :pswitch_2e  #00000074
        :pswitch_2e  #00000075
        :pswitch_2e  #00000076
        :pswitch_2e  #00000077
        :pswitch_2e  #00000078
        :pswitch_2e  #00000079
        :pswitch_2e  #0000007a
    .end packed-switch
.end method

.method protected final FH(Z)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x22

    const/16 v5, 0xff

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/16 v9, 0x27

    if-eq v3, v9, :cond_7f

    packed-switch v3, :pswitch_data_17e

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->nw:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_47

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v5, :cond_47

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_47

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v5, :cond_47

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->rN(Z)V

    goto :goto_82

    :pswitch_43  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->J8(Z)V

    goto :goto_82

    :cond_47
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_69

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_69

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v5, :cond_69

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_69

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v5, :cond_69

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL(Z)V

    goto :goto_82

    :cond_69
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_7f
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->VH(Z)V

    :goto_82
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->SI:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_15b

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->KD:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_15b

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_15b

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v5, :cond_15b

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v10, 0x20

    const/16 v11, 0xd

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x2f

    const/16 v15, 0x2d

    const/16 v5, 0x2b

    const/16 v6, 0x2a

    if-eq v3, v13, :cond_e1

    if-eq v3, v12, :cond_e1

    if-eq v3, v11, :cond_e1

    if-eq v3, v10, :cond_e1

    if-eq v3, v15, :cond_e4

    if-eq v3, v14, :cond_e4

    if-eq v3, v6, :cond_e4

    if-ne v3, v5, :cond_cb

    goto :goto_e4

    :cond_cb
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_e1
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :cond_e4
    :goto_e4
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v6, :cond_112

    if-eq v3, v5, :cond_10e

    if-eq v3, v15, :cond_10a

    if-ne v3, v14, :cond_f4

    invoke-virtual {v0, v14}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_115

    :cond_f4
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_10a
    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_115

    :cond_10e
    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_115

    :cond_112
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_115
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v13, :cond_150

    if-eq v3, v12, :cond_150

    if-eq v3, v11, :cond_150

    if-eq v3, v10, :cond_150

    const/16 v5, 0x5f

    if-eq v3, v5, :cond_153

    if-eq v3, v4, :cond_153

    const/16 v5, 0x23

    if-eq v3, v5, :cond_153

    if-eq v3, v9, :cond_153

    const/16 v5, 0x28

    if-eq v3, v5, :cond_153

    packed-switch v3, :pswitch_data_196

    packed-switch v3, :pswitch_data_1ae

    packed-switch v3, :pswitch_data_1e8

    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_150
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :cond_153
    :pswitch_153  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->FH(Z)V

    const/16 v5, 0xff

    const/4 v6, 0x2

    goto/16 :goto_82

    :cond_15b
    if-eqz p1, :cond_179

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v4

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_17a

    :cond_179
    const/4 v2, 0x0

    :goto_17a
    iput-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    nop

    :pswitch_data_17e
    .packed-switch 0x30
        :pswitch_43  #00000030
        :pswitch_43  #00000031
        :pswitch_43  #00000032
        :pswitch_43  #00000033
        :pswitch_43  #00000034
        :pswitch_43  #00000035
        :pswitch_43  #00000036
        :pswitch_43  #00000037
        :pswitch_43  #00000038
        :pswitch_43  #00000039
    .end packed-switch

    :pswitch_data_196
    .packed-switch 0x30
        :pswitch_153  #00000030
        :pswitch_153  #00000031
        :pswitch_153  #00000032
        :pswitch_153  #00000033
        :pswitch_153  #00000034
        :pswitch_153  #00000035
        :pswitch_153  #00000036
        :pswitch_153  #00000037
        :pswitch_153  #00000038
        :pswitch_153  #00000039
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x41
        :pswitch_153  #00000041
        :pswitch_153  #00000042
        :pswitch_153  #00000043
        :pswitch_153  #00000044
        :pswitch_153  #00000045
        :pswitch_153  #00000046
        :pswitch_153  #00000047
        :pswitch_153  #00000048
        :pswitch_153  #00000049
        :pswitch_153  #0000004a
        :pswitch_153  #0000004b
        :pswitch_153  #0000004c
        :pswitch_153  #0000004d
        :pswitch_153  #0000004e
        :pswitch_153  #0000004f
        :pswitch_153  #00000050
        :pswitch_153  #00000051
        :pswitch_153  #00000052
        :pswitch_153  #00000053
        :pswitch_153  #00000054
        :pswitch_153  #00000055
        :pswitch_153  #00000056
        :pswitch_153  #00000057
        :pswitch_153  #00000058
        :pswitch_153  #00000059
        :pswitch_153  #0000005a
        :pswitch_153  #0000005b
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x61
        :pswitch_153  #00000061
        :pswitch_153  #00000062
        :pswitch_153  #00000063
        :pswitch_153  #00000064
        :pswitch_153  #00000065
        :pswitch_153  #00000066
        :pswitch_153  #00000067
        :pswitch_153  #00000068
        :pswitch_153  #00000069
        :pswitch_153  #0000006a
        :pswitch_153  #0000006b
        :pswitch_153  #0000006c
        :pswitch_153  #0000006d
        :pswitch_153  #0000006e
        :pswitch_153  #0000006f
        :pswitch_153  #00000070
        :pswitch_153  #00000071
        :pswitch_153  #00000072
        :pswitch_153  #00000073
        :pswitch_153  #00000074
        :pswitch_153  #00000075
        :pswitch_153  #00000076
        :pswitch_153  #00000077
        :pswitch_153  #00000078
        :pswitch_153  #00000079
        :pswitch_153  #0000007a
    .end packed-switch
.end method

.method protected final Hw(Z)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x23

    const/16 v5, 0x22

    const/16 v6, 0x5f

    const/16 v7, 0x28

    const/16 v8, 0x20

    const/16 v9, 0xd

    const/4 v10, 0x0

    const/16 v11, 0xa

    const/16 v12, 0x9

    if-eq v3, v12, :cond_5d

    if-eq v3, v11, :cond_5d

    if-eq v3, v9, :cond_5d

    if-eq v3, v8, :cond_5d

    if-eq v3, v7, :cond_6b

    if-eq v3, v6, :cond_6b

    if-eq v3, v5, :cond_6b

    if-eq v3, v4, :cond_6b

    packed-switch v3, :pswitch_data_2ca

    packed-switch v3, :pswitch_data_2e2

    packed-switch v3, :pswitch_data_31c

    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_5d
    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {v0, v10}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_6b
    :pswitch_6b  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->v5(Z)V

    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v13

    const/16 v14, 0x5d

    const/16 v15, 0x2c

    if-eq v13, v12, :cond_a6

    if-eq v13, v11, :cond_a6

    if-eq v13, v9, :cond_a6

    if-eq v13, v8, :cond_a6

    if-eq v13, v15, :cond_b4

    if-ne v13, v14, :cond_90

    goto :goto_b4

    :cond_90
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_a6
    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v13

    invoke-virtual {v0, v10}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v13}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_b4
    :goto_b4
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v13

    if-ne v13, v15, :cond_16d

    sget-object v13, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->lg:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v14

    invoke-virtual {v13, v14}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v13

    if-eqz v13, :cond_16d

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v14

    if-lt v14, v13, :cond_16d

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v13

    const/16 v14, 0xff

    if-gt v13, v14, :cond_16d

    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v13

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v13}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v13

    if-eq v13, v12, :cond_117

    if-eq v13, v11, :cond_117

    if-eq v13, v9, :cond_117

    if-eq v13, v8, :cond_117

    if-eq v13, v7, :cond_125

    if-eq v13, v6, :cond_125

    if-eq v13, v5, :cond_125

    if-eq v13, v4, :cond_125

    packed-switch v13, :pswitch_data_354

    packed-switch v13, :pswitch_data_36c

    packed-switch v13, :pswitch_data_3a6

    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_117
    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v13

    invoke-virtual {v0, v10}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v13}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_125
    :pswitch_125  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v13

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->v5(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v13}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v14

    if-eq v14, v12, :cond_15e

    if-eq v14, v11, :cond_15e

    if-eq v14, v9, :cond_15e

    if-eq v14, v8, :cond_15e

    if-eq v14, v15, :cond_193

    const/16 v4, 0x5d

    if-ne v14, v4, :cond_148

    goto :goto_193

    :cond_148
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_15e
    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    invoke-virtual {v0, v10}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_193

    :cond_16d
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    if-eq v4, v15, :cond_192

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v13, 0x5d

    if-ne v4, v13, :cond_17c

    goto :goto_192

    :cond_17c
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_192
    :goto_192
    const/4 v13, 0x0

    :cond_193
    :goto_193
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    if-eq v4, v15, :cond_1b6

    const/16 v14, 0x5d

    if-ne v4, v14, :cond_1a0

    const/4 v4, 0x0

    goto/16 :goto_24c

    :cond_1a0
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_1b6
    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    if-eq v4, v12, :cond_1f9

    if-eq v4, v11, :cond_1f9

    if-eq v4, v9, :cond_1f9

    if-eq v4, v8, :cond_1f9

    if-eq v4, v7, :cond_207

    if-eq v4, v6, :cond_207

    if-eq v4, v5, :cond_207

    const/16 v5, 0x23

    if-eq v4, v5, :cond_207

    packed-switch v4, :pswitch_data_3de

    packed-switch v4, :pswitch_data_3f6

    packed-switch v4, :pswitch_data_430

    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_1f9
    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    invoke-virtual {v0, v10}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_207
    :pswitch_207  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->v5(Z)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-eq v5, v12, :cond_23e

    if-eq v5, v11, :cond_23e

    if-eq v5, v9, :cond_23e

    if-eq v5, v8, :cond_23e

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_228

    goto :goto_24c

    :cond_228
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_23e
    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {v0, v10}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_24c
    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v2, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/CodeGenerator;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    if-eqz v13, :cond_280

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_280
    if-eqz v4, :cond_298

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_298
    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    iget-object v4, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lgroovyjarjarantlr/CodeGenerator;->j6(Lgroovyjarjarantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_2c5

    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v14

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v3

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v14, v2}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_2c6

    :cond_2c5
    move-object v14, v5

    :goto_2c6
    iput-object v14, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    nop

    :pswitch_data_2ca
    .packed-switch 0x30
        :pswitch_6b  #00000030
        :pswitch_6b  #00000031
        :pswitch_6b  #00000032
        :pswitch_6b  #00000033
        :pswitch_6b  #00000034
        :pswitch_6b  #00000035
        :pswitch_6b  #00000036
        :pswitch_6b  #00000037
        :pswitch_6b  #00000038
        :pswitch_6b  #00000039
    .end packed-switch

    :pswitch_data_2e2
    .packed-switch 0x41
        :pswitch_6b  #00000041
        :pswitch_6b  #00000042
        :pswitch_6b  #00000043
        :pswitch_6b  #00000044
        :pswitch_6b  #00000045
        :pswitch_6b  #00000046
        :pswitch_6b  #00000047
        :pswitch_6b  #00000048
        :pswitch_6b  #00000049
        :pswitch_6b  #0000004a
        :pswitch_6b  #0000004b
        :pswitch_6b  #0000004c
        :pswitch_6b  #0000004d
        :pswitch_6b  #0000004e
        :pswitch_6b  #0000004f
        :pswitch_6b  #00000050
        :pswitch_6b  #00000051
        :pswitch_6b  #00000052
        :pswitch_6b  #00000053
        :pswitch_6b  #00000054
        :pswitch_6b  #00000055
        :pswitch_6b  #00000056
        :pswitch_6b  #00000057
        :pswitch_6b  #00000058
        :pswitch_6b  #00000059
        :pswitch_6b  #0000005a
        :pswitch_6b  #0000005b
    .end packed-switch

    :pswitch_data_31c
    .packed-switch 0x61
        :pswitch_6b  #00000061
        :pswitch_6b  #00000062
        :pswitch_6b  #00000063
        :pswitch_6b  #00000064
        :pswitch_6b  #00000065
        :pswitch_6b  #00000066
        :pswitch_6b  #00000067
        :pswitch_6b  #00000068
        :pswitch_6b  #00000069
        :pswitch_6b  #0000006a
        :pswitch_6b  #0000006b
        :pswitch_6b  #0000006c
        :pswitch_6b  #0000006d
        :pswitch_6b  #0000006e
        :pswitch_6b  #0000006f
        :pswitch_6b  #00000070
        :pswitch_6b  #00000071
        :pswitch_6b  #00000072
        :pswitch_6b  #00000073
        :pswitch_6b  #00000074
        :pswitch_6b  #00000075
        :pswitch_6b  #00000076
        :pswitch_6b  #00000077
        :pswitch_6b  #00000078
        :pswitch_6b  #00000079
        :pswitch_6b  #0000007a
    .end packed-switch

    :pswitch_data_354
    .packed-switch 0x30
        :pswitch_125  #00000030
        :pswitch_125  #00000031
        :pswitch_125  #00000032
        :pswitch_125  #00000033
        :pswitch_125  #00000034
        :pswitch_125  #00000035
        :pswitch_125  #00000036
        :pswitch_125  #00000037
        :pswitch_125  #00000038
        :pswitch_125  #00000039
    .end packed-switch

    :pswitch_data_36c
    .packed-switch 0x41
        :pswitch_125  #00000041
        :pswitch_125  #00000042
        :pswitch_125  #00000043
        :pswitch_125  #00000044
        :pswitch_125  #00000045
        :pswitch_125  #00000046
        :pswitch_125  #00000047
        :pswitch_125  #00000048
        :pswitch_125  #00000049
        :pswitch_125  #0000004a
        :pswitch_125  #0000004b
        :pswitch_125  #0000004c
        :pswitch_125  #0000004d
        :pswitch_125  #0000004e
        :pswitch_125  #0000004f
        :pswitch_125  #00000050
        :pswitch_125  #00000051
        :pswitch_125  #00000052
        :pswitch_125  #00000053
        :pswitch_125  #00000054
        :pswitch_125  #00000055
        :pswitch_125  #00000056
        :pswitch_125  #00000057
        :pswitch_125  #00000058
        :pswitch_125  #00000059
        :pswitch_125  #0000005a
        :pswitch_125  #0000005b
    .end packed-switch

    :pswitch_data_3a6
    .packed-switch 0x61
        :pswitch_125  #00000061
        :pswitch_125  #00000062
        :pswitch_125  #00000063
        :pswitch_125  #00000064
        :pswitch_125  #00000065
        :pswitch_125  #00000066
        :pswitch_125  #00000067
        :pswitch_125  #00000068
        :pswitch_125  #00000069
        :pswitch_125  #0000006a
        :pswitch_125  #0000006b
        :pswitch_125  #0000006c
        :pswitch_125  #0000006d
        :pswitch_125  #0000006e
        :pswitch_125  #0000006f
        :pswitch_125  #00000070
        :pswitch_125  #00000071
        :pswitch_125  #00000072
        :pswitch_125  #00000073
        :pswitch_125  #00000074
        :pswitch_125  #00000075
        :pswitch_125  #00000076
        :pswitch_125  #00000077
        :pswitch_125  #00000078
        :pswitch_125  #00000079
        :pswitch_125  #0000007a
    .end packed-switch

    :pswitch_data_3de
    .packed-switch 0x30
        :pswitch_207  #00000030
        :pswitch_207  #00000031
        :pswitch_207  #00000032
        :pswitch_207  #00000033
        :pswitch_207  #00000034
        :pswitch_207  #00000035
        :pswitch_207  #00000036
        :pswitch_207  #00000037
        :pswitch_207  #00000038
        :pswitch_207  #00000039
    .end packed-switch

    :pswitch_data_3f6
    .packed-switch 0x41
        :pswitch_207  #00000041
        :pswitch_207  #00000042
        :pswitch_207  #00000043
        :pswitch_207  #00000044
        :pswitch_207  #00000045
        :pswitch_207  #00000046
        :pswitch_207  #00000047
        :pswitch_207  #00000048
        :pswitch_207  #00000049
        :pswitch_207  #0000004a
        :pswitch_207  #0000004b
        :pswitch_207  #0000004c
        :pswitch_207  #0000004d
        :pswitch_207  #0000004e
        :pswitch_207  #0000004f
        :pswitch_207  #00000050
        :pswitch_207  #00000051
        :pswitch_207  #00000052
        :pswitch_207  #00000053
        :pswitch_207  #00000054
        :pswitch_207  #00000055
        :pswitch_207  #00000056
        :pswitch_207  #00000057
        :pswitch_207  #00000058
        :pswitch_207  #00000059
        :pswitch_207  #0000005a
        :pswitch_207  #0000005b
    .end packed-switch

    :pswitch_data_430
    .packed-switch 0x61
        :pswitch_207  #00000061
        :pswitch_207  #00000062
        :pswitch_207  #00000063
        :pswitch_207  #00000064
        :pswitch_207  #00000065
        :pswitch_207  #00000066
        :pswitch_207  #00000067
        :pswitch_207  #00000068
        :pswitch_207  #00000069
        :pswitch_207  #0000006a
        :pswitch_207  #0000006b
        :pswitch_207  #0000006c
        :pswitch_207  #0000006d
        :pswitch_207  #0000006e
        :pswitch_207  #0000006f
        :pswitch_207  #00000070
        :pswitch_207  #00000071
        :pswitch_207  #00000072
        :pswitch_207  #00000073
        :pswitch_207  #00000074
        :pswitch_207  #00000075
        :pswitch_207  #00000076
        :pswitch_207  #00000077
        :pswitch_207  #00000078
        :pswitch_207  #00000079
        :pswitch_207  #0000007a
    .end packed-switch
.end method

.method protected final J0(Z)V
    .registers 8

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_1f

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1f

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->u7(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    if-lt v2, v3, :cond_43

    if-eqz p1, :cond_3f

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_40

    :cond_3f
    const/4 p1, 0x0

    :goto_40
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_43
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_5a

    :goto_59
    throw p1

    :goto_5a
    goto :goto_59
.end method

.method protected final J8(Z)V
    .registers 11

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v5, 0x39

    const/16 v6, 0x30

    const/4 v7, 0x2

    if-lt v4, v6, :cond_2c

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    if-gt v4, v5, :cond_2c

    sget-object v4, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->cb:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    invoke-virtual {v4, v8}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->u7(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    if-lt v2, v3, :cond_c6

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_46

    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    invoke-virtual {v2, v8}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_46

    :goto_42
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_8e

    :cond_46
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_5b

    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    invoke-virtual {v2, v8}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_42

    :cond_5b
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_82

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_66
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v6, :cond_8e

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_8e

    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->u7(Z)V

    goto :goto_66

    :cond_82
    sget-object v1, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_b0

    :cond_8e
    :goto_8e
    if-eqz p1, :cond_ac

    const/16 p1, 0x1b

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_ad

    :cond_ac
    const/4 p1, 0x0

    :goto_ad
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_b0
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_c6
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_dd

    :goto_dc
    throw p1

    :goto_dd
    goto :goto_dc
.end method

.method protected final Mr(Z)V
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-eq v2, v3, :cond_53

    const/16 v3, 0x24

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x27

    if-eq v2, v3, :cond_4b

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_47

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_43

    packed-switch v2, :pswitch_data_78

    packed-switch v2, :pswitch_data_90

    packed-switch v2, :pswitch_data_c8

    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_3f  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->J8(Z)V

    goto :goto_56

    :cond_43
    :pswitch_43  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->U2(Z)V

    goto :goto_56

    :cond_47
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_56

    :cond_4b
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->VH(Z)V

    goto :goto_56

    :cond_4f
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->a8(Z)V

    goto :goto_56

    :cond_53
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL(Z)V

    :goto_56
    if-eqz p1, :cond_74

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_75

    :cond_74
    const/4 p1, 0x0

    :goto_75
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :pswitch_data_78
    .packed-switch 0x30
        :pswitch_3f  #00000030
        :pswitch_3f  #00000031
        :pswitch_3f  #00000032
        :pswitch_3f  #00000033
        :pswitch_3f  #00000034
        :pswitch_3f  #00000035
        :pswitch_3f  #00000036
        :pswitch_3f  #00000037
        :pswitch_3f  #00000038
        :pswitch_3f  #00000039
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x41
        :pswitch_43  #00000041
        :pswitch_43  #00000042
        :pswitch_43  #00000043
        :pswitch_43  #00000044
        :pswitch_43  #00000045
        :pswitch_43  #00000046
        :pswitch_43  #00000047
        :pswitch_43  #00000048
        :pswitch_43  #00000049
        :pswitch_43  #0000004a
        :pswitch_43  #0000004b
        :pswitch_43  #0000004c
        :pswitch_43  #0000004d
        :pswitch_43  #0000004e
        :pswitch_43  #0000004f
        :pswitch_43  #00000050
        :pswitch_43  #00000051
        :pswitch_43  #00000052
        :pswitch_43  #00000053
        :pswitch_43  #00000054
        :pswitch_43  #00000055
        :pswitch_43  #00000056
        :pswitch_43  #00000057
        :pswitch_43  #00000058
        :pswitch_43  #00000059
        :pswitch_43  #0000005a
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x61
        :pswitch_43  #00000061
        :pswitch_43  #00000062
        :pswitch_43  #00000063
        :pswitch_43  #00000064
        :pswitch_43  #00000065
        :pswitch_43  #00000066
        :pswitch_43  #00000067
        :pswitch_43  #00000068
        :pswitch_43  #00000069
        :pswitch_43  #0000006a
        :pswitch_43  #0000006b
        :pswitch_43  #0000006c
        :pswitch_43  #0000006d
        :pswitch_43  #0000006e
        :pswitch_43  #0000006f
        :pswitch_43  #00000070
        :pswitch_43  #00000071
        :pswitch_43  #00000072
        :pswitch_43  #00000073
        :pswitch_43  #00000074
        :pswitch_43  #00000075
        :pswitch_43  #00000076
        :pswitch_43  #00000077
        :pswitch_43  #00000078
        :pswitch_43  #00000079
        :pswitch_43  #0000007a
    .end packed-switch
.end method

.method protected final QX(Z)V
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "//"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-eq v2, v5, :cond_40

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_1e

    goto :goto_40

    :cond_1e
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v6, 0x3

    if-lt v2, v6, :cond_40

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v7, 0xff

    if-gt v2, v7, :cond_40

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v6, :cond_40

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v7, :cond_40

    const v1, 0xffff

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto :goto_b

    :cond_40
    :goto_40
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_52

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_52

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    goto :goto_65

    :cond_52
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_5c

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_65

    :cond_5c
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_8a

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_65
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    if-eqz p1, :cond_86

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_87

    :cond_86
    const/4 p1, 0x0

    :goto_87
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_8a
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_a1

    :goto_a0
    throw p1

    :goto_a1
    goto :goto_a0
.end method

.method protected final U2(Z)V
    .registers 16

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->EQ(Z)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_35

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ro:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v6, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_41

    :cond_35
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ro:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_25f

    :goto_41
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_23d

    const/16 v7, 0xa

    if-eq v3, v7, :cond_23d

    const/16 v8, 0xd

    if-eq v3, v8, :cond_23d

    const/16 v9, 0x20

    if-eq v3, v9, :cond_23d

    const/16 v10, 0x22

    if-eq v3, v10, :cond_23d

    const/16 v10, 0x24

    if-eq v3, v10, :cond_23d

    const/16 v10, 0x5d

    if-eq v3, v10, :cond_23d

    const/16 v11, 0x5f

    if-eq v3, v11, :cond_23d

    const/16 v11, 0xff

    const/4 v12, 0x3

    packed-switch v3, :pswitch_data_278

    packed-switch v3, :pswitch_data_282

    packed-switch v3, :pswitch_data_28e

    packed-switch v3, :pswitch_data_2a6

    packed-switch v3, :pswitch_data_2e0

    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_8d  #0x28
    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_c3

    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->cn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-virtual {p0, v12}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v12, :cond_c3

    invoke-virtual {p0, v12}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v11, :cond_c3

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_db

    :cond_c3
    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->cn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_148

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v12, :cond_148

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v11, :cond_148

    :cond_db
    :goto_db
    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sh:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_10e

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v12, :cond_10e

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v11, :cond_10e

    invoke-virtual {p0, v12}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v12, :cond_10e

    invoke-virtual {p0, v12}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v11, :cond_10e

    :goto_ff
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3(Z)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_db

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_ff

    :cond_10e
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v6, :cond_135

    if-eq v2, v7, :cond_135

    if-eq v2, v8, :cond_135

    if-eq v2, v9, :cond_135

    if-ne v2, v3, :cond_11f

    goto :goto_143

    :cond_11f
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_135
    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_143
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto/16 :goto_23d

    :cond_148
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_15e  #0x2e
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_169

    :pswitch_164  #0x2d
    const-string v1, "->"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_169
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->U2(Z)V

    goto/16 :goto_23d

    :pswitch_16e  #0x5b
    const/4 v2, 0x0

    :goto_16f
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v13, 0x5b

    if-ne v3, v13, :cond_224

    invoke-virtual {p0, v13}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v13

    invoke-virtual {v3, v13}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_1ad

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sh:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v13

    invoke-virtual {v3, v13}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_1ad

    invoke-virtual {p0, v12}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v12, :cond_1ad

    invoke-virtual {p0, v12}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v11, :cond_1ad

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v13, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_1d1

    :cond_1ad
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sh:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v13

    invoke-virtual {v3, v13}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_20e

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v12, :cond_20e

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v11, :cond_20e

    invoke-virtual {p0, v12}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v12, :cond_20e

    invoke-virtual {p0, v12}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v11, :cond_20e

    :goto_1d1
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3(Z)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v6, :cond_1f9

    if-eq v3, v7, :cond_1f9

    if-eq v3, v8, :cond_1f9

    if-eq v3, v9, :cond_1f9

    if-ne v3, v10, :cond_1e3

    goto :goto_207

    :cond_1e3
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_1f9
    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v13, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_207
    invoke-virtual {p0, v10}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16f

    :cond_20e
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_224
    if-lt v2, v1, :cond_227

    goto :goto_23d

    :cond_227
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_23d
    :goto_23d
    :pswitch_23d  #0x27, 0x29, 0x2b, 0x2c, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    if-eqz p1, :cond_25b

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_25c

    :cond_25b
    const/4 p1, 0x0

    :goto_25c
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_25f
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_276

    :goto_275
    throw p1

    :goto_276
    goto :goto_275

    nop

    :pswitch_data_278
    .packed-switch 0x27
        :pswitch_23d  #00000027
        :pswitch_8d  #00000028
        :pswitch_23d  #00000029
    .end packed-switch

    :pswitch_data_282
    .packed-switch 0x2b
        :pswitch_23d  #0000002b
        :pswitch_23d  #0000002c
        :pswitch_164  #0000002d
        :pswitch_15e  #0000002e
    .end packed-switch

    :pswitch_data_28e
    .packed-switch 0x30
        :pswitch_23d  #00000030
        :pswitch_23d  #00000031
        :pswitch_23d  #00000032
        :pswitch_23d  #00000033
        :pswitch_23d  #00000034
        :pswitch_23d  #00000035
        :pswitch_23d  #00000036
        :pswitch_23d  #00000037
        :pswitch_23d  #00000038
        :pswitch_23d  #00000039
    .end packed-switch

    :pswitch_data_2a6
    .packed-switch 0x41
        :pswitch_23d  #00000041
        :pswitch_23d  #00000042
        :pswitch_23d  #00000043
        :pswitch_23d  #00000044
        :pswitch_23d  #00000045
        :pswitch_23d  #00000046
        :pswitch_23d  #00000047
        :pswitch_23d  #00000048
        :pswitch_23d  #00000049
        :pswitch_23d  #0000004a
        :pswitch_23d  #0000004b
        :pswitch_23d  #0000004c
        :pswitch_23d  #0000004d
        :pswitch_23d  #0000004e
        :pswitch_23d  #0000004f
        :pswitch_23d  #00000050
        :pswitch_23d  #00000051
        :pswitch_23d  #00000052
        :pswitch_23d  #00000053
        :pswitch_23d  #00000054
        :pswitch_23d  #00000055
        :pswitch_23d  #00000056
        :pswitch_23d  #00000057
        :pswitch_23d  #00000058
        :pswitch_23d  #00000059
        :pswitch_23d  #0000005a
        :pswitch_16e  #0000005b
    .end packed-switch

    :pswitch_data_2e0
    .packed-switch 0x61
        :pswitch_23d  #00000061
        :pswitch_23d  #00000062
        :pswitch_23d  #00000063
        :pswitch_23d  #00000064
        :pswitch_23d  #00000065
        :pswitch_23d  #00000066
        :pswitch_23d  #00000067
        :pswitch_23d  #00000068
        :pswitch_23d  #00000069
        :pswitch_23d  #0000006a
        :pswitch_23d  #0000006b
        :pswitch_23d  #0000006c
        :pswitch_23d  #0000006d
        :pswitch_23d  #0000006e
        :pswitch_23d  #0000006f
        :pswitch_23d  #00000070
        :pswitch_23d  #00000071
        :pswitch_23d  #00000072
        :pswitch_23d  #00000073
        :pswitch_23d  #00000074
        :pswitch_23d  #00000075
        :pswitch_23d  #00000076
        :pswitch_23d  #00000077
        :pswitch_23d  #00000078
        :pswitch_23d  #00000079
        :pswitch_23d  #0000007a
    .end packed-switch
.end method

.method protected final VH(Z)V
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_19

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->tp(Z)V

    goto :goto_28

    :cond_19
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->U2:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    :goto_28
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_49

    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_4a

    :cond_49
    const/4 p1, 0x0

    :goto_4a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_4d
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final Ws(Z)V
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "/*"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x2a

    const/4 v4, 0x2

    if-ne v2, v3, :cond_1f

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1f

    goto/16 :goto_b5

    :cond_1f
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0xa

    const/16 v5, 0xd

    const/16 v6, 0xff

    const/4 v7, 0x3

    if-ne v2, v5, :cond_48

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v3, :cond_48

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_48

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v6, :cond_48

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_41
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_44
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto :goto_b

    :cond_48
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_6a

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_6a

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v6, :cond_6a

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_6a

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v6, :cond_6a

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_44

    :cond_6a
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v3, :cond_89

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_89

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v6, :cond_89

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_89

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v6, :cond_89

    goto :goto_41

    :cond_89
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_b5

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v6, :cond_b5

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v7, :cond_b5

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v6, :cond_b5

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v7, :cond_b5

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v6, :cond_b5

    const v1, 0xffff

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto/16 :goto_b

    :cond_b5
    :goto_b5
    const-string v1, "*/"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_d8

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_d9

    :cond_d8
    const/4 p1, 0x0

    :goto_d9
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final XL(Z)V
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_b
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_19

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->tp(Z)V

    goto :goto_b

    :cond_19
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Mr:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto :goto_b

    :cond_29
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_4a

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    :goto_4b
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Sf:Lgroovyjarjarantlr/Tool;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Tool;->Hw(Ljava/lang/String;)V

    goto :goto_1d

    :cond_c
    iget-object v0, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Sf:Lgroovyjarjarantlr/Tool;

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lgroovyjarjarantlr/Tool;->DW(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_1d
    return-void
.end method

.method protected final Zo(Z)V
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x23

    if-ne v2, v4, :cond_2d

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v5, 0x28

    if-ne v2, v5, :cond_2d

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->lg(Z)V

    :goto_29
    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    goto/16 :goto_1bf

    :cond_2d
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v5, 0x3d

    const/4 v6, 0x0

    if-ne v2, v4, :cond_13a

    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v2, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_13a

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_84

    const/16 v3, 0xa

    if-eq v2, v3, :cond_84

    const/16 v3, 0xd

    if-eq v2, v3, :cond_84

    const/16 v3, 0x20

    if-eq v2, v3, :cond_84

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_87

    packed-switch v2, :pswitch_data_1f8

    packed-switch v2, :pswitch_data_230

    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_84
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :cond_87
    :pswitch_87  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->EQ(Z)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

    invoke-virtual {v4, v2, v7}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b0

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    goto/16 :goto_123

    :cond_b0
    const-string v2, "define"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "undef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "if"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "elif"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "else"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "endif"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "line"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "warning"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "region"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "endregion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    :cond_108
    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    :cond_123
    :goto_123
    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_132

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :cond_132
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v5, :cond_1bf

    goto/16 :goto_1bc

    :cond_13a
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_15b

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v7, 0x5b

    if-ne v2, v7, :cond_15b

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Hw(Z)V

    goto/16 :goto_29

    :cond_15b
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_1e0

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_1e0

    const-string v2, "##"

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v3, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    if-eqz v3, :cond_198

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v3}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "_AST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    iget-object v3, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

    if-eqz v3, :cond_1a7

    iput-object v2, v3, Lgroovyjarjarantlr/ActionTransInfo;->DW:Ljava/lang/String;

    goto :goto_1a7

    :cond_198
    const-string v3, "\"##\" not valid in this context"

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Zo(Ljava/lang/String;)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    :cond_1a7
    :goto_1a7
    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_1b6

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :cond_1b6
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v5, :cond_1bf

    :goto_1bc
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->er(Z)V

    :cond_1bf
    :goto_1bf
    if-eqz p1, :cond_1dc

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_1dd

    :cond_1dc
    const/4 p1, 0x0

    :goto_1dd
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_1e0
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_1f7

    :goto_1f6
    throw p1

    :goto_1f7
    goto :goto_1f6

    :pswitch_data_1f8
    .packed-switch 0x41
        :pswitch_87  #00000041
        :pswitch_87  #00000042
        :pswitch_87  #00000043
        :pswitch_87  #00000044
        :pswitch_87  #00000045
        :pswitch_87  #00000046
        :pswitch_87  #00000047
        :pswitch_87  #00000048
        :pswitch_87  #00000049
        :pswitch_87  #0000004a
        :pswitch_87  #0000004b
        :pswitch_87  #0000004c
        :pswitch_87  #0000004d
        :pswitch_87  #0000004e
        :pswitch_87  #0000004f
        :pswitch_87  #00000050
        :pswitch_87  #00000051
        :pswitch_87  #00000052
        :pswitch_87  #00000053
        :pswitch_87  #00000054
        :pswitch_87  #00000055
        :pswitch_87  #00000056
        :pswitch_87  #00000057
        :pswitch_87  #00000058
        :pswitch_87  #00000059
        :pswitch_87  #0000005a
    .end packed-switch

    :pswitch_data_230
    .packed-switch 0x61
        :pswitch_87  #00000061
        :pswitch_87  #00000062
        :pswitch_87  #00000063
        :pswitch_87  #00000064
        :pswitch_87  #00000065
        :pswitch_87  #00000066
        :pswitch_87  #00000067
        :pswitch_87  #00000068
        :pswitch_87  #00000069
        :pswitch_87  #0000006a
        :pswitch_87  #0000006b
        :pswitch_87  #0000006c
        :pswitch_87  #0000006d
        :pswitch_87  #0000006e
        :pswitch_87  #0000006f
        :pswitch_87  #00000070
        :pswitch_87  #00000071
        :pswitch_87  #00000072
        :pswitch_87  #00000073
        :pswitch_87  #00000074
        :pswitch_87  #00000075
        :pswitch_87  #00000076
        :pswitch_87  #00000077
        :pswitch_87  #00000078
        :pswitch_87  #00000079
        :pswitch_87  #0000007a
    .end packed-switch
.end method

.method protected final a8(Z)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const-string v4, ": unknown rule or bad lookahead computation"

    const/16 v5, 0xff

    const/16 v6, 0x46

    const-string v8, ")"

    const/16 v9, 0x20

    const/16 v10, 0xd

    const/16 v12, 0xa

    const/16 v14, 0x9

    const/4 v15, 0x3

    const/4 v7, 0x2

    const/16 v11, 0x28

    const/16 v13, 0x24

    if-ne v3, v13, :cond_c4

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v6, :cond_c4

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v6, 0x4f

    if-ne v3, v6, :cond_c4

    const-string v3, "$FOLLOW"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_93

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v15, :cond_93

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v5, :cond_93

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v14, :cond_81

    if-eq v3, v12, :cond_81

    if-eq v3, v10, :cond_81

    if-eq v3, v9, :cond_81

    if-ne v3, v11, :cond_6b

    goto :goto_85

    :cond_6b
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_81
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :goto_85
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_94

    :cond_93
    const/4 v3, 0x0

    :goto_94
    iget-object v5, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v5}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_a0

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v5

    :cond_a0
    iget-object v3, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v3, v5, v2}, Lgroovyjarjarantlr/CodeGenerator;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b9

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "$FOLLOW("

    :goto_af
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->v5(Ljava/lang/String;)V

    goto/16 :goto_30e

    :cond_c4
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v13, :cond_158

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v6, 0x46

    if-ne v3, v6, :cond_158

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v6, 0x49

    if-ne v3, v6, :cond_158

    const-string v3, "$FIRST"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_13a

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_13a

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v15, :cond_13a

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v5, :cond_13a

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v14, :cond_128

    if-eq v3, v12, :cond_128

    if-eq v3, v10, :cond_128

    if-eq v3, v9, :cond_128

    if-ne v3, v11, :cond_112

    goto :goto_12c

    :cond_112
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_128
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :goto_12c
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_13b

    :cond_13a
    const/4 v3, 0x0

    :goto_13b
    iget-object v5, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v5}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_147

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v5

    :cond_147
    iget-object v3, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v3, v5, v2}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b9

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "$FIRST("

    goto/16 :goto_af

    :cond_158
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v13, :cond_1c5

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_1c5

    const-string v3, "$append"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v14, :cond_190

    if-eq v3, v12, :cond_190

    if-eq v3, v10, :cond_190

    if-eq v3, v9, :cond_190

    if-ne v3, v11, :cond_17a

    goto :goto_194

    :cond_17a
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_190
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :goto_194
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3(Z)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "text.Append("

    :goto_1a8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1b5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1b9
    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    goto/16 :goto_30e

    :cond_1c5
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v13, :cond_2ef

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_2ef

    const-string v3, "$set"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_22c

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v5, 0x65

    if-ne v3, v5, :cond_22c

    const-string v3, "Text"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v14, :cond_212

    if-eq v3, v12, :cond_212

    if-eq v3, v10, :cond_212

    if-eq v3, v9, :cond_212

    if-ne v3, v11, :cond_1fc

    goto :goto_216

    :cond_1fc
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_212
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :goto_216
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3(Z)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "text.Length = _begin; text.Append("

    goto/16 :goto_1a8

    :cond_22c
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_288

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v5, 0x6f

    if-ne v3, v5, :cond_288

    const-string v3, "Token"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v14, :cond_264

    if-eq v3, v12, :cond_264

    if-eq v3, v10, :cond_264

    if-eq v3, v9, :cond_264

    if-ne v3, v11, :cond_24e

    goto :goto_268

    :cond_24e
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_264
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :goto_268
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3(Z)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_token = "

    :goto_27c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1b5

    :cond_288
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_2d9

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x79

    if-ne v3, v4, :cond_2d9

    const-string v3, "Type"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v14, :cond_2c0

    if-eq v3, v12, :cond_2c0

    if-eq v3, v10, :cond_2c0

    if-eq v3, v9, :cond_2c0

    if-ne v3, v11, :cond_2aa

    goto :goto_2c4

    :cond_2aa
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_2c0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :goto_2c4
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->j3(Z)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_ttype = "

    goto :goto_27c

    :cond_2d9
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_2ef
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v13, :cond_32f

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_32f

    const-string v2, "$getText"

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    const-string v3, "text.ToString(_begin, text.Length-_begin)"

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    :goto_30e
    if-eqz p1, :cond_32b

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v7

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v3

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v2}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_32c

    :cond_32b
    const/4 v7, 0x0

    :goto_32c
    iput-object v7, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_32f
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_346

    :goto_345
    throw v1

    :goto_346
    goto :goto_345
.end method

.method protected final aM(Z)V
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_ba

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v2, v4, :cond_b6

    const/16 v4, 0x27

    if-eq v2, v4, :cond_b2

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v4, 0x2f

    const/4 v6, 0x2

    if-ne v2, v4, :cond_34

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v7, 0x2a

    if-eq v2, v7, :cond_2f

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_34

    :cond_2f
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->gn(Z)V

    goto/16 :goto_c0

    :cond_34
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v5, 0xd

    if-ne v2, v5, :cond_49

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v3, :cond_49

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    goto/16 :goto_bd

    :cond_49
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_6c

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v7, 0x23

    if-ne v2, v7, :cond_6c

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    goto :goto_c0

    :cond_6c
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_85

    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_81
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_c0

    :cond_85
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_8f

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_bd

    :cond_8f
    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_9c

    goto :goto_81

    :cond_9c
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_b2
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->VH(Z)V

    goto :goto_c0

    :cond_b6
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL(Z)V

    goto :goto_c0

    :cond_ba
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_bd
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    :goto_c0
    if-eqz p1, :cond_dd

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_de

    :cond_dd
    const/4 p1, 0x0

    :goto_de
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final er(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v1, :cond_1c

    iget-object v1, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

    if-eqz v1, :cond_1c

    iget-object v3, v1, Lgroovyjarjarantlr/ActionTransInfo;->DW:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iput-boolean v2, v1, Lgroovyjarjarantlr/ActionTransInfo;->j6:Z

    :cond_1c
    if-eqz p1, :cond_3a

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final gn(Z)V
    .registers 8

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_1b

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_1b

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->QX(Z)V

    goto :goto_2c

    :cond_1b
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_4e

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v4, 0x2a

    if-ne v2, v4, :cond_4e

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Ws(Z)V

    :goto_2c
    if-eqz p1, :cond_4a

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    :goto_4b
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_4e
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final j3(Z)V
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0xd

    const/4 v5, 0x0

    if-eq v2, v3, :cond_4f

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4f

    if-eq v2, v4, :cond_4f

    const/16 v3, 0x20

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x22

    if-eq v2, v3, :cond_52

    const/16 v3, 0x24

    if-eq v2, v3, :cond_52

    const/16 v3, 0x27

    if-eq v2, v3, :cond_52

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_52

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_52

    packed-switch v2, :pswitch_data_ee

    packed-switch v2, :pswitch_data_106

    packed-switch v2, :pswitch_data_13e

    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_4f
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :cond_52
    :pswitch_52  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    const/4 v2, 0x0

    :goto_53
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->rN:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_b3

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    const/16 v7, 0xff

    if-gt v6, v7, :cond_b3

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Mr(Z)V

    sget-object v6, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v6

    if-eqz v6, :cond_8e

    sget-object v6, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->er:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v6, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    goto :goto_9a

    :cond_8e
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->er:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_9d

    :goto_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_9d
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_b3
    if-lt v2, v1, :cond_d5

    if-eqz p1, :cond_d1

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_d2

    :cond_d1
    const/4 p1, 0x0

    :goto_d2
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_d5
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_ec

    :goto_eb
    throw p1

    :goto_ec
    goto :goto_eb

    nop

    :pswitch_data_ee
    .packed-switch 0x30
        :pswitch_52  #00000030
        :pswitch_52  #00000031
        :pswitch_52  #00000032
        :pswitch_52  #00000033
        :pswitch_52  #00000034
        :pswitch_52  #00000035
        :pswitch_52  #00000036
        :pswitch_52  #00000037
        :pswitch_52  #00000038
        :pswitch_52  #00000039
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0x41
        :pswitch_52  #00000041
        :pswitch_52  #00000042
        :pswitch_52  #00000043
        :pswitch_52  #00000044
        :pswitch_52  #00000045
        :pswitch_52  #00000046
        :pswitch_52  #00000047
        :pswitch_52  #00000048
        :pswitch_52  #00000049
        :pswitch_52  #0000004a
        :pswitch_52  #0000004b
        :pswitch_52  #0000004c
        :pswitch_52  #0000004d
        :pswitch_52  #0000004e
        :pswitch_52  #0000004f
        :pswitch_52  #00000050
        :pswitch_52  #00000051
        :pswitch_52  #00000052
        :pswitch_52  #00000053
        :pswitch_52  #00000054
        :pswitch_52  #00000055
        :pswitch_52  #00000056
        :pswitch_52  #00000057
        :pswitch_52  #00000058
        :pswitch_52  #00000059
        :pswitch_52  #0000005a
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x61
        :pswitch_52  #00000061
        :pswitch_52  #00000062
        :pswitch_52  #00000063
        :pswitch_52  #00000064
        :pswitch_52  #00000065
        :pswitch_52  #00000066
        :pswitch_52  #00000067
        :pswitch_52  #00000068
        :pswitch_52  #00000069
        :pswitch_52  #0000006a
        :pswitch_52  #0000006b
        :pswitch_52  #0000006c
        :pswitch_52  #0000006d
        :pswitch_52  #0000006e
        :pswitch_52  #0000006f
        :pswitch_52  #00000070
        :pswitch_52  #00000071
        :pswitch_52  #00000072
        :pswitch_52  #00000073
        :pswitch_52  #00000074
        :pswitch_52  #00000075
        :pswitch_52  #00000076
        :pswitch_52  #00000077
        :pswitch_52  #00000078
        :pswitch_52  #00000079
        :pswitch_52  #0000007a
    .end packed-switch
.end method

.method protected final lg(Z)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Lgroovyjarjarantlr/collections/impl/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lgroovyjarjarantlr/collections/impl/Vector;-><init>(I)V

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    const/16 v7, 0x23

    const/16 v8, 0x22

    const/16 v9, 0x5f

    const/16 v10, 0x20

    const/16 v11, 0xd

    const/4 v12, 0x0

    const/16 v13, 0x9

    if-eq v6, v13, :cond_62

    if-eq v6, v3, :cond_62

    if-eq v6, v11, :cond_62

    if-eq v6, v10, :cond_62

    if-eq v6, v5, :cond_70

    if-eq v6, v9, :cond_70

    if-eq v6, v8, :cond_70

    if-eq v6, v7, :cond_70

    packed-switch v6, :pswitch_data_1a2

    packed-switch v6, :pswitch_data_1dc

    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_62
    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v12}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_70
    :pswitch_70  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->rN(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    iget-object v14, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v6}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lgroovyjarjarantlr/CodeGenerator;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgroovyjarjarantlr/collections/impl/Vector;->DW(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    const/16 v14, 0x29

    const/16 v15, 0x2c

    if-eq v6, v13, :cond_b8

    if-eq v6, v3, :cond_b8

    if-eq v6, v11, :cond_b8

    if-eq v6, v10, :cond_b8

    if-eq v6, v14, :cond_c6

    if-ne v6, v15, :cond_a2

    goto :goto_c6

    :cond_a2
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_b8
    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v12}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_c6
    :goto_c6
    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    if-ne v6, v15, :cond_15f

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    if-eq v6, v13, :cond_10a

    if-eq v6, v3, :cond_10a

    if-eq v6, v11, :cond_10a

    if-eq v6, v10, :cond_10a

    if-eq v6, v5, :cond_118

    if-eq v6, v9, :cond_118

    if-eq v6, v8, :cond_118

    if-eq v6, v7, :cond_118

    packed-switch v6, :pswitch_data_214

    packed-switch v6, :pswitch_data_24e

    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_10a
    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v12}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_118
    :pswitch_118  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->rN(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    iget-object v14, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v6}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lgroovyjarjarantlr/CodeGenerator;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgroovyjarjarantlr/collections/impl/Vector;->DW(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    if-eq v6, v13, :cond_b8

    if-eq v6, v3, :cond_b8

    if-eq v6, v11, :cond_b8

    if-eq v6, v10, :cond_b8

    const/16 v14, 0x29

    if-eq v6, v14, :cond_c6

    if-ne v6, v15, :cond_149

    goto/16 :goto_c6

    :cond_149
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_15f
    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    iget-object v4, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v4, v2}, Lgroovyjarjarantlr/CodeGenerator;->j6(Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    if-eqz p1, :cond_19d

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v4

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_19e

    :cond_19d
    const/4 v2, 0x0

    :goto_19e
    iput-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    nop

    :pswitch_data_1a2
    .packed-switch 0x41
        :pswitch_70  #00000041
        :pswitch_70  #00000042
        :pswitch_70  #00000043
        :pswitch_70  #00000044
        :pswitch_70  #00000045
        :pswitch_70  #00000046
        :pswitch_70  #00000047
        :pswitch_70  #00000048
        :pswitch_70  #00000049
        :pswitch_70  #0000004a
        :pswitch_70  #0000004b
        :pswitch_70  #0000004c
        :pswitch_70  #0000004d
        :pswitch_70  #0000004e
        :pswitch_70  #0000004f
        :pswitch_70  #00000050
        :pswitch_70  #00000051
        :pswitch_70  #00000052
        :pswitch_70  #00000053
        :pswitch_70  #00000054
        :pswitch_70  #00000055
        :pswitch_70  #00000056
        :pswitch_70  #00000057
        :pswitch_70  #00000058
        :pswitch_70  #00000059
        :pswitch_70  #0000005a
        :pswitch_70  #0000005b
    .end packed-switch

    :pswitch_data_1dc
    .packed-switch 0x61
        :pswitch_70  #00000061
        :pswitch_70  #00000062
        :pswitch_70  #00000063
        :pswitch_70  #00000064
        :pswitch_70  #00000065
        :pswitch_70  #00000066
        :pswitch_70  #00000067
        :pswitch_70  #00000068
        :pswitch_70  #00000069
        :pswitch_70  #0000006a
        :pswitch_70  #0000006b
        :pswitch_70  #0000006c
        :pswitch_70  #0000006d
        :pswitch_70  #0000006e
        :pswitch_70  #0000006f
        :pswitch_70  #00000070
        :pswitch_70  #00000071
        :pswitch_70  #00000072
        :pswitch_70  #00000073
        :pswitch_70  #00000074
        :pswitch_70  #00000075
        :pswitch_70  #00000076
        :pswitch_70  #00000077
        :pswitch_70  #00000078
        :pswitch_70  #00000079
        :pswitch_70  #0000007a
    .end packed-switch

    :pswitch_data_214
    .packed-switch 0x41
        :pswitch_118  #00000041
        :pswitch_118  #00000042
        :pswitch_118  #00000043
        :pswitch_118  #00000044
        :pswitch_118  #00000045
        :pswitch_118  #00000046
        :pswitch_118  #00000047
        :pswitch_118  #00000048
        :pswitch_118  #00000049
        :pswitch_118  #0000004a
        :pswitch_118  #0000004b
        :pswitch_118  #0000004c
        :pswitch_118  #0000004d
        :pswitch_118  #0000004e
        :pswitch_118  #0000004f
        :pswitch_118  #00000050
        :pswitch_118  #00000051
        :pswitch_118  #00000052
        :pswitch_118  #00000053
        :pswitch_118  #00000054
        :pswitch_118  #00000055
        :pswitch_118  #00000056
        :pswitch_118  #00000057
        :pswitch_118  #00000058
        :pswitch_118  #00000059
        :pswitch_118  #0000005a
        :pswitch_118  #0000005b
    .end packed-switch

    :pswitch_data_24e
    .packed-switch 0x61
        :pswitch_118  #00000061
        :pswitch_118  #00000062
        :pswitch_118  #00000063
        :pswitch_118  #00000064
        :pswitch_118  #00000065
        :pswitch_118  #00000066
        :pswitch_118  #00000067
        :pswitch_118  #00000068
        :pswitch_118  #00000069
        :pswitch_118  #0000006a
        :pswitch_118  #0000006b
        :pswitch_118  #0000006c
        :pswitch_118  #0000006d
        :pswitch_118  #0000006e
        :pswitch_118  #0000006f
        :pswitch_118  #00000070
        :pswitch_118  #00000071
        :pswitch_118  #00000072
        :pswitch_118  #00000073
        :pswitch_118  #00000074
        :pswitch_118  #00000075
        :pswitch_118  #00000076
        :pswitch_118  #00000077
        :pswitch_118  #00000078
        :pswitch_118  #00000079
        :pswitch_118  #0000007a
    .end packed-switch
.end method

.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 6

    :goto_0
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->u7()V

    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_19

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_19

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->DW(Z)V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    goto :goto_2b

    :cond_19
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_3e

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->EQ()V

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    :goto_2b
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    if-nez v0, :cond_30

    goto :goto_0

    :cond_30
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/Token;->FH(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-object v0

    :cond_3e
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v3

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1
    :try_end_54
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_4 .. :try_end_54} :catch_56
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_4 .. :try_end_54} :catch_54

    :catch_54
    move-exception v0

    goto :goto_5d

    :catch_56
    move-exception v0

    :try_start_57
    new-instance v1, Lgroovyjarjarantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamRecognitionException;-><init>(Lgroovyjarjarantlr/RecognitionException;)V

    throw v1
    :try_end_5d
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_57 .. :try_end_5d} :catch_54

    :goto_5d
    instance-of v1, v0, Lgroovyjarjarantlr/CharStreamIOException;

    if-eqz v1, :cond_6b

    new-instance v1, Lgroovyjarjarantlr/TokenStreamIOException;

    check-cast v0, Lgroovyjarjarantlr/CharStreamIOException;

    iget-object v0, v0, Lgroovyjarjarantlr/CharStreamIOException;->j6:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_6b
    new-instance v1, Lgroovyjarjarantlr/TokenStreamException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    goto :goto_76

    :goto_75
    throw v1

    :goto_76
    goto :goto_75
.end method

.method protected final rN(Z)V
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v3, :cond_f0

    const/16 v3, 0x28

    if-eq v2, v3, :cond_ec

    const/16 v6, 0x5f

    if-eq v2, v6, :cond_e8

    packed-switch v2, :pswitch_data_114

    packed-switch v2, :pswitch_data_14e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v6, 0x2

    const/16 v7, 0x23

    if-ne v2, v7, :cond_43

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v3, :cond_43

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto/16 :goto_ec

    :goto_3e
    :pswitch_3e  #0x5b
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Hw(Z)V

    goto/16 :goto_f3

    :cond_43
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v7, :cond_60

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_60

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_3e

    :cond_60
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v7, :cond_95

    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->we(Z)Z

    move-result v1

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    if-nez v1, :cond_f3

    iget-object v1, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f3

    goto :goto_c7

    :cond_95
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v7, :cond_d2

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v7, :cond_d2

    const-string v1, "##"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    if-eqz v2, :cond_c2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v2}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_AST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c7

    :cond_c2
    const-string v2, "\"##\" not valid in this context"

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->v5(Ljava/lang/String;)V

    :goto_c7
    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    goto :goto_f3

    :cond_d2
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_e8
    :pswitch_e8  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->we(Z)Z

    goto :goto_f3

    :cond_ec
    :goto_ec
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->lg(Z)V

    goto :goto_f3

    :cond_f0
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL(Z)V

    :cond_f3
    :goto_f3
    if-eqz p1, :cond_110

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v5

    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v1

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p1, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, p1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    :cond_110
    iput-object v5, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    nop

    :pswitch_data_114
    .packed-switch 0x41
        :pswitch_e8  #00000041
        :pswitch_e8  #00000042
        :pswitch_e8  #00000043
        :pswitch_e8  #00000044
        :pswitch_e8  #00000045
        :pswitch_e8  #00000046
        :pswitch_e8  #00000047
        :pswitch_e8  #00000048
        :pswitch_e8  #00000049
        :pswitch_e8  #0000004a
        :pswitch_e8  #0000004b
        :pswitch_e8  #0000004c
        :pswitch_e8  #0000004d
        :pswitch_e8  #0000004e
        :pswitch_e8  #0000004f
        :pswitch_e8  #00000050
        :pswitch_e8  #00000051
        :pswitch_e8  #00000052
        :pswitch_e8  #00000053
        :pswitch_e8  #00000054
        :pswitch_e8  #00000055
        :pswitch_e8  #00000056
        :pswitch_e8  #00000057
        :pswitch_e8  #00000058
        :pswitch_e8  #00000059
        :pswitch_e8  #0000005a
        :pswitch_3e  #0000005b
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0x61
        :pswitch_e8  #00000061
        :pswitch_e8  #00000062
        :pswitch_e8  #00000063
        :pswitch_e8  #00000064
        :pswitch_e8  #00000065
        :pswitch_e8  #00000066
        :pswitch_e8  #00000067
        :pswitch_e8  #00000068
        :pswitch_e8  #00000069
        :pswitch_e8  #0000006a
        :pswitch_e8  #0000006b
        :pswitch_e8  #0000006c
        :pswitch_e8  #0000006d
        :pswitch_e8  #0000006e
        :pswitch_e8  #0000006f
        :pswitch_e8  #00000070
        :pswitch_e8  #00000071
        :pswitch_e8  #00000072
        :pswitch_e8  #00000073
        :pswitch_e8  #00000074
        :pswitch_e8  #00000075
        :pswitch_e8  #00000076
        :pswitch_e8  #00000077
        :pswitch_e8  #00000078
        :pswitch_e8  #00000079
        :pswitch_e8  #0000007a
    .end packed-switch
.end method

.method protected final tp(Z)V
    .registers 12

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_11b

    const/16 v4, 0x27

    if-eq v3, v4, :cond_11b

    if-eq v3, v1, :cond_117

    const/16 v1, 0x62

    if-eq v3, v1, :cond_117

    const/16 v1, 0x66

    if-eq v3, v1, :cond_117

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_117

    const/16 v1, 0x72

    if-eq v3, v1, :cond_117

    const/16 v1, 0x74

    if-eq v3, v1, :cond_117

    const/4 v1, 0x0

    const/16 v4, 0x39

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x3

    packed-switch v3, :pswitch_data_140

    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_50  #0x34, 0x35, 0x36, 0x37
    const/16 v3, 0x34

    const/16 v9, 0x37

    invoke-virtual {p0, v3, v9}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_74

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_74

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_74

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_74

    :goto_6f
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->u7(Z)V

    goto/16 :goto_11e

    :cond_74
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_82

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_82

    goto/16 :goto_11e

    :cond_82
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_98  #0x30, 0x31, 0x32, 0x33
    const/16 v3, 0x33

    invoke-virtual {p0, v5, v3}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_f4

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_f4

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_f4

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_f4

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->u7(Z)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_d1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_d1

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_d1

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_d1

    goto :goto_6f

    :cond_d1
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_de

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_de

    goto :goto_11e

    :cond_de
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_f4
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_101

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_101

    goto :goto_11e

    :cond_101
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_117
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_11e

    :cond_11b
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_11e
    if-eqz p1, :cond_13c

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_13d

    :cond_13c
    const/4 p1, 0x0

    :goto_13d
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :pswitch_data_140
    .packed-switch 0x30
        :pswitch_98  #00000030
        :pswitch_98  #00000031
        :pswitch_98  #00000032
        :pswitch_98  #00000033
        :pswitch_50  #00000034
        :pswitch_50  #00000035
        :pswitch_50  #00000036
        :pswitch_50  #00000037
    .end packed-switch
.end method

.method protected final u7(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {p0, v1, v2}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    if-eqz p1, :cond_2b

    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->Sf:Lgroovyjarjarantlr/Tool;

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lgroovyjarjarantlr/Tool;->j6(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method protected final v5(Z)V
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-ne v2, v3, :cond_30

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_30

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_30

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_30

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_30

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL(Z)V

    goto :goto_5f

    :cond_30
    sget-object v2, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->nw:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_4c

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_4c

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->rN(Z)V

    goto :goto_5f

    :cond_4c
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_81

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_81

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->J0(Z)V

    :goto_5f
    if-eqz p1, :cond_7d

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_7e

    :cond_7d
    const/4 p1, 0x0

    :goto_7e
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_81
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final we(Z)Z
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->EQ(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    sget-object v4, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_37

    sget-object v5, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->gW:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    invoke-virtual {v5, v8}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v5

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v8, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v8, v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_43

    :cond_37
    sget-object v5, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->gW:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    invoke-virtual {v5, v8}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v5

    if-eqz v5, :cond_334

    :goto_43
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    const/16 v10, 0x22

    const/16 v11, 0x5f

    const/16 v12, 0x28

    const/4 v13, 0x3

    const/16 v14, 0x20

    const/16 v15, 0xd

    const/16 v8, 0xa

    const/16 v9, 0x9

    if-eq v5, v12, :cond_1e0

    const/16 v4, 0x2e

    if-eq v5, v4, :cond_1d8

    const/16 v4, 0x5b

    if-eq v5, v4, :cond_12e

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_83

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_83

    sget-object v4, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_83

    const-string v2, "->"

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    goto/16 :goto_1db

    :cond_83
    sget-object v4, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->vy:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v5

    if-eqz v5, :cond_118

    iget-object v5, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v3

    iget-object v10, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

    invoke-virtual {v5, v3, v10}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a7

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    :cond_a7
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->P8:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_f4

    iget-object v3, v0, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

    if-eqz v3, :cond_f4

    iget-object v3, v3, Lgroovyjarjarantlr/ActionTransInfo;->DW:Ljava/lang/String;

    if-eqz v3, :cond_f4

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v9, :cond_ec

    if-eq v3, v8, :cond_ec

    if-eq v3, v15, :cond_ec

    if-eq v3, v14, :cond_ec

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_d6

    goto :goto_ef

    :cond_d6
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_ec
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    :goto_ef
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->er(Z)V

    goto/16 :goto_2fc

    :cond_f4
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->ei:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_102

    goto/16 :goto_2fc

    :cond_102
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_118
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_12e
    const/4 v3, 0x0

    :goto_12f
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-ne v5, v4, :cond_1be

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-eq v5, v9, :cond_171

    if-eq v5, v8, :cond_171

    if-eq v5, v15, :cond_171

    if-eq v5, v14, :cond_171

    if-eq v5, v11, :cond_17f

    if-eq v5, v10, :cond_17f

    const/16 v6, 0x23

    if-eq v5, v6, :cond_17f

    const/16 v6, 0x27

    if-eq v5, v6, :cond_17f

    if-eq v5, v12, :cond_17f

    packed-switch v5, :pswitch_data_34c

    packed-switch v5, :pswitch_data_364

    packed-switch v5, :pswitch_data_39e

    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_171
    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v5

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_17f
    :pswitch_17f  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->FH(Z)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    const/16 v6, 0x5d

    if-eq v5, v9, :cond_1a9

    if-eq v5, v8, :cond_1a9

    if-eq v5, v15, :cond_1a9

    if-eq v5, v14, :cond_1a9

    if-ne v5, v6, :cond_193

    goto :goto_1b7

    :cond_193
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_1a9
    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v5

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_1b7
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12f

    :cond_1be
    if-lt v3, v2, :cond_1c2

    goto/16 :goto_2fb

    :cond_1c2
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_1d8
    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_1db
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->we(Z)Z

    goto/16 :goto_2fb

    :cond_1e0
    invoke-virtual {v0, v12}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    const/16 v4, 0xff

    if-eqz v3, :cond_216

    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->BT:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_216

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v13, :cond_216

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_216

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_22e

    :cond_216
    sget-object v3, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->BT:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_31e

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v13, :cond_31e

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_31e

    :goto_22e
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v9, :cond_2c3

    if-eq v3, v8, :cond_2c3

    if-eq v3, v15, :cond_2c3

    if-eq v3, v14, :cond_2c3

    if-eq v3, v11, :cond_264

    if-eq v3, v10, :cond_264

    const/16 v4, 0x23

    if-eq v3, v4, :cond_264

    packed-switch v3, :pswitch_data_3d6

    packed-switch v3, :pswitch_data_3e0

    packed-switch v3, :pswitch_data_3f8

    packed-switch v3, :pswitch_data_432

    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_264
    :goto_264
    :pswitch_264  #0x27, 0x28, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->FH(Z)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_2c3

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v9, :cond_2b0

    if-eq v3, v8, :cond_2b0

    if-eq v3, v15, :cond_2b0

    if-eq v3, v14, :cond_2b0

    if-eq v3, v11, :cond_2ab

    if-eq v3, v10, :cond_2ab

    const/16 v4, 0x23

    const/16 v5, 0x27

    if-eq v3, v4, :cond_264

    if-eq v3, v5, :cond_264

    if-eq v3, v12, :cond_264

    packed-switch v3, :pswitch_data_46a

    packed-switch v3, :pswitch_data_482

    packed-switch v3, :pswitch_data_4bc

    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_2ab
    const/16 v4, 0x23

    const/16 v5, 0x27

    goto :goto_264

    :cond_2b0
    const/16 v4, 0x23

    const/16 v5, 0x27

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_264

    :cond_2c3
    :pswitch_2c3  #0x29
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v9, :cond_2ea

    if-eq v3, v8, :cond_2ea

    if-eq v3, v15, :cond_2ea

    if-eq v3, v14, :cond_2ea

    if-ne v3, v4, :cond_2d4

    goto :goto_2f8

    :cond_2d4
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_2ea
    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/csharp/ActionLexer;->yS(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_2f8
    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_2fb
    const/4 v2, 0x0

    :goto_2fc
    if-eqz p1, :cond_31a

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v5

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-direct {v4, v5, v1, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_31b

    :cond_31a
    const/4 v3, 0x0

    :goto_31b
    iput-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return v2

    :cond_31e
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_334
    new-instance v1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_34b

    :goto_34a
    throw v1

    :goto_34b
    goto :goto_34a

    :pswitch_data_34c
    .packed-switch 0x30
        :pswitch_17f  #00000030
        :pswitch_17f  #00000031
        :pswitch_17f  #00000032
        :pswitch_17f  #00000033
        :pswitch_17f  #00000034
        :pswitch_17f  #00000035
        :pswitch_17f  #00000036
        :pswitch_17f  #00000037
        :pswitch_17f  #00000038
        :pswitch_17f  #00000039
    .end packed-switch

    :pswitch_data_364
    .packed-switch 0x41
        :pswitch_17f  #00000041
        :pswitch_17f  #00000042
        :pswitch_17f  #00000043
        :pswitch_17f  #00000044
        :pswitch_17f  #00000045
        :pswitch_17f  #00000046
        :pswitch_17f  #00000047
        :pswitch_17f  #00000048
        :pswitch_17f  #00000049
        :pswitch_17f  #0000004a
        :pswitch_17f  #0000004b
        :pswitch_17f  #0000004c
        :pswitch_17f  #0000004d
        :pswitch_17f  #0000004e
        :pswitch_17f  #0000004f
        :pswitch_17f  #00000050
        :pswitch_17f  #00000051
        :pswitch_17f  #00000052
        :pswitch_17f  #00000053
        :pswitch_17f  #00000054
        :pswitch_17f  #00000055
        :pswitch_17f  #00000056
        :pswitch_17f  #00000057
        :pswitch_17f  #00000058
        :pswitch_17f  #00000059
        :pswitch_17f  #0000005a
        :pswitch_17f  #0000005b
    .end packed-switch

    :pswitch_data_39e
    .packed-switch 0x61
        :pswitch_17f  #00000061
        :pswitch_17f  #00000062
        :pswitch_17f  #00000063
        :pswitch_17f  #00000064
        :pswitch_17f  #00000065
        :pswitch_17f  #00000066
        :pswitch_17f  #00000067
        :pswitch_17f  #00000068
        :pswitch_17f  #00000069
        :pswitch_17f  #0000006a
        :pswitch_17f  #0000006b
        :pswitch_17f  #0000006c
        :pswitch_17f  #0000006d
        :pswitch_17f  #0000006e
        :pswitch_17f  #0000006f
        :pswitch_17f  #00000070
        :pswitch_17f  #00000071
        :pswitch_17f  #00000072
        :pswitch_17f  #00000073
        :pswitch_17f  #00000074
        :pswitch_17f  #00000075
        :pswitch_17f  #00000076
        :pswitch_17f  #00000077
        :pswitch_17f  #00000078
        :pswitch_17f  #00000079
        :pswitch_17f  #0000007a
    .end packed-switch

    :pswitch_data_3d6
    .packed-switch 0x27
        :pswitch_264  #00000027
        :pswitch_264  #00000028
        :pswitch_2c3  #00000029
    .end packed-switch

    :pswitch_data_3e0
    .packed-switch 0x30
        :pswitch_264  #00000030
        :pswitch_264  #00000031
        :pswitch_264  #00000032
        :pswitch_264  #00000033
        :pswitch_264  #00000034
        :pswitch_264  #00000035
        :pswitch_264  #00000036
        :pswitch_264  #00000037
        :pswitch_264  #00000038
        :pswitch_264  #00000039
    .end packed-switch

    :pswitch_data_3f8
    .packed-switch 0x41
        :pswitch_264  #00000041
        :pswitch_264  #00000042
        :pswitch_264  #00000043
        :pswitch_264  #00000044
        :pswitch_264  #00000045
        :pswitch_264  #00000046
        :pswitch_264  #00000047
        :pswitch_264  #00000048
        :pswitch_264  #00000049
        :pswitch_264  #0000004a
        :pswitch_264  #0000004b
        :pswitch_264  #0000004c
        :pswitch_264  #0000004d
        :pswitch_264  #0000004e
        :pswitch_264  #0000004f
        :pswitch_264  #00000050
        :pswitch_264  #00000051
        :pswitch_264  #00000052
        :pswitch_264  #00000053
        :pswitch_264  #00000054
        :pswitch_264  #00000055
        :pswitch_264  #00000056
        :pswitch_264  #00000057
        :pswitch_264  #00000058
        :pswitch_264  #00000059
        :pswitch_264  #0000005a
        :pswitch_264  #0000005b
    .end packed-switch

    :pswitch_data_432
    .packed-switch 0x61
        :pswitch_264  #00000061
        :pswitch_264  #00000062
        :pswitch_264  #00000063
        :pswitch_264  #00000064
        :pswitch_264  #00000065
        :pswitch_264  #00000066
        :pswitch_264  #00000067
        :pswitch_264  #00000068
        :pswitch_264  #00000069
        :pswitch_264  #0000006a
        :pswitch_264  #0000006b
        :pswitch_264  #0000006c
        :pswitch_264  #0000006d
        :pswitch_264  #0000006e
        :pswitch_264  #0000006f
        :pswitch_264  #00000070
        :pswitch_264  #00000071
        :pswitch_264  #00000072
        :pswitch_264  #00000073
        :pswitch_264  #00000074
        :pswitch_264  #00000075
        :pswitch_264  #00000076
        :pswitch_264  #00000077
        :pswitch_264  #00000078
        :pswitch_264  #00000079
        :pswitch_264  #0000007a
    .end packed-switch

    :pswitch_data_46a
    .packed-switch 0x30
        :pswitch_264  #00000030
        :pswitch_264  #00000031
        :pswitch_264  #00000032
        :pswitch_264  #00000033
        :pswitch_264  #00000034
        :pswitch_264  #00000035
        :pswitch_264  #00000036
        :pswitch_264  #00000037
        :pswitch_264  #00000038
        :pswitch_264  #00000039
    .end packed-switch

    :pswitch_data_482
    .packed-switch 0x41
        :pswitch_264  #00000041
        :pswitch_264  #00000042
        :pswitch_264  #00000043
        :pswitch_264  #00000044
        :pswitch_264  #00000045
        :pswitch_264  #00000046
        :pswitch_264  #00000047
        :pswitch_264  #00000048
        :pswitch_264  #00000049
        :pswitch_264  #0000004a
        :pswitch_264  #0000004b
        :pswitch_264  #0000004c
        :pswitch_264  #0000004d
        :pswitch_264  #0000004e
        :pswitch_264  #0000004f
        :pswitch_264  #00000050
        :pswitch_264  #00000051
        :pswitch_264  #00000052
        :pswitch_264  #00000053
        :pswitch_264  #00000054
        :pswitch_264  #00000055
        :pswitch_264  #00000056
        :pswitch_264  #00000057
        :pswitch_264  #00000058
        :pswitch_264  #00000059
        :pswitch_264  #0000005a
        :pswitch_264  #0000005b
    .end packed-switch

    :pswitch_data_4bc
    .packed-switch 0x61
        :pswitch_264  #00000061
        :pswitch_264  #00000062
        :pswitch_264  #00000063
        :pswitch_264  #00000064
        :pswitch_264  #00000065
        :pswitch_264  #00000066
        :pswitch_264  #00000067
        :pswitch_264  #00000068
        :pswitch_264  #00000069
        :pswitch_264  #0000006a
        :pswitch_264  #0000006b
        :pswitch_264  #0000006c
        :pswitch_264  #0000006d
        :pswitch_264  #0000006e
        :pswitch_264  #0000006f
        :pswitch_264  #00000070
        :pswitch_264  #00000071
        :pswitch_264  #00000072
        :pswitch_264  #00000073
        :pswitch_264  #00000074
        :pswitch_264  #00000075
        :pswitch_264  #00000076
        :pswitch_264  #00000077
        :pswitch_264  #00000078
        :pswitch_264  #00000079
        :pswitch_264  #0000007a
    .end packed-switch
.end method

.method protected final yS(Z)V
    .registers 9

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0xd

    if-ne v3, v5, :cond_23

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_23

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_1c
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_1f
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto :goto_49

    :cond_23
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v6, 0x20

    if-ne v3, v6, :cond_2f

    :goto_2b
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_49

    :cond_2f
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v6, 0x9

    if-ne v3, v6, :cond_38

    goto :goto_2b

    :cond_38
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v5, :cond_42

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_1f

    :cond_42
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_4c

    goto :goto_1c

    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4c
    if-lt v1, v2, :cond_70

    if-eqz p1, :cond_6c

    const/16 p1, 0x1c

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_6d

    :cond_6c
    const/4 p1, 0x0

    :goto_6d
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_70
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_87

    :goto_86
    throw p1

    :goto_87
    goto :goto_86
.end method
