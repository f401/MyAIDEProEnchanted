.class public Lgroovyjarjarantlr/actions/cpp/ActionLexer;
.super Lgroovyjarjarantlr/CharScanner;

# interfaces
.implements Lgroovyjarjarantlr/actions/cpp/ActionLexerTokenTypes;
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

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->we()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->J0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->rN()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->nw()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->SI()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->KD()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ro()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->cn()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Mr:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sh()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->U2:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->cb()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->a8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->J8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->lg:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Ws()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->rN:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->QX()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->er:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->aM()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->gW:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->BT:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Mr()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->vy:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->U2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->P8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->a8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ei:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->lg()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->nw:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->er()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->SI:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->KD:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->gW()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ro:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->BT()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->cn:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->vy()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sh:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->P8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->cb:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ei()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

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
        0x7ff0a9500002600L
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
        0x7ff089400000000L
        0x7fffffe87fffffeL
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
        0x7fffe9500002600L
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
        0x400000000000000L
        0x7fffffe87fffffeL
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
        0x7ff1a9500002600L
        0x7fffffea7fffffeL  # 3.7857645700037357E-270
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
        0x3400ff0100002600L  # 3.3845454728352894E-58
        0x28000000
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
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x4000000000000008L  # -1.9999999999999982

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

.method private static final cb()[J
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x7ff000000000000L
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
        0x7ffbe9500002600L
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
        0x7ff7b9500002600L
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
        0x7ff038d00002600L
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
        0x400010c00000000L
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
        0x400000100002600L
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
        0x7ff099500002600L
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
        0x7ff089500002600L
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
        0x7ffad8d00002600L
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

    sget-object v4, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->aM(Z)V

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
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->a8(Z)V

    goto :goto_65

    :cond_62
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Zo(Z)V

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method protected final EQ(Z)V
    .registers 12

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x3a

    const/16 v4, 0x7a

    const/16 v5, 0x61

    const/16 v6, 0x5a

    const/16 v7, 0x41

    const-string v8, "::"

    const/16 v9, 0x5f

    if-eq v2, v3, :cond_45

    if-eq v2, v9, :cond_41

    packed-switch v2, :pswitch_data_a4

    packed-switch v2, :pswitch_data_dc

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

    :pswitch_39  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a
    invoke-virtual {p0, v7, v6}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_48

    :pswitch_3d  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v5, v4}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_48

    :cond_41
    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_48

    :cond_45
    :pswitch_45  #0x3a
    invoke-virtual {p0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_48
    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->a8:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-eq v2, v9, :cond_41

    packed-switch v2, :pswitch_data_114

    packed-switch v2, :pswitch_data_12e

    packed-switch v2, :pswitch_data_166

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

    :pswitch_79  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v2, 0x30

    const/16 v3, 0x39

    invoke-virtual {p0, v2, v3}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_48

    :cond_81
    if-eqz p1, :cond_9f

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

    goto :goto_a0

    :cond_9f
    const/4 p1, 0x0

    :goto_a0
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x41
        :pswitch_39  #00000041
        :pswitch_39  #00000042
        :pswitch_39  #00000043
        :pswitch_39  #00000044
        :pswitch_39  #00000045
        :pswitch_39  #00000046
        :pswitch_39  #00000047
        :pswitch_39  #00000048
        :pswitch_39  #00000049
        :pswitch_39  #0000004a
        :pswitch_39  #0000004b
        :pswitch_39  #0000004c
        :pswitch_39  #0000004d
        :pswitch_39  #0000004e
        :pswitch_39  #0000004f
        :pswitch_39  #00000050
        :pswitch_39  #00000051
        :pswitch_39  #00000052
        :pswitch_39  #00000053
        :pswitch_39  #00000054
        :pswitch_39  #00000055
        :pswitch_39  #00000056
        :pswitch_39  #00000057
        :pswitch_39  #00000058
        :pswitch_39  #00000059
        :pswitch_39  #0000005a
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x61
        :pswitch_3d  #00000061
        :pswitch_3d  #00000062
        :pswitch_3d  #00000063
        :pswitch_3d  #00000064
        :pswitch_3d  #00000065
        :pswitch_3d  #00000066
        :pswitch_3d  #00000067
        :pswitch_3d  #00000068
        :pswitch_3d  #00000069
        :pswitch_3d  #0000006a
        :pswitch_3d  #0000006b
        :pswitch_3d  #0000006c
        :pswitch_3d  #0000006d
        :pswitch_3d  #0000006e
        :pswitch_3d  #0000006f
        :pswitch_3d  #00000070
        :pswitch_3d  #00000071
        :pswitch_3d  #00000072
        :pswitch_3d  #00000073
        :pswitch_3d  #00000074
        :pswitch_3d  #00000075
        :pswitch_3d  #00000076
        :pswitch_3d  #00000077
        :pswitch_3d  #00000078
        :pswitch_3d  #00000079
        :pswitch_3d  #0000007a
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x30
        :pswitch_79  #00000030
        :pswitch_79  #00000031
        :pswitch_79  #00000032
        :pswitch_79  #00000033
        :pswitch_79  #00000034
        :pswitch_79  #00000035
        :pswitch_79  #00000036
        :pswitch_79  #00000037
        :pswitch_79  #00000038
        :pswitch_79  #00000039
        :pswitch_45  #0000003a
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x41
        :pswitch_39  #00000041
        :pswitch_39  #00000042
        :pswitch_39  #00000043
        :pswitch_39  #00000044
        :pswitch_39  #00000045
        :pswitch_39  #00000046
        :pswitch_39  #00000047
        :pswitch_39  #00000048
        :pswitch_39  #00000049
        :pswitch_39  #0000004a
        :pswitch_39  #0000004b
        :pswitch_39  #0000004c
        :pswitch_39  #0000004d
        :pswitch_39  #0000004e
        :pswitch_39  #0000004f
        :pswitch_39  #00000050
        :pswitch_39  #00000051
        :pswitch_39  #00000052
        :pswitch_39  #00000053
        :pswitch_39  #00000054
        :pswitch_39  #00000055
        :pswitch_39  #00000056
        :pswitch_39  #00000057
        :pswitch_39  #00000058
        :pswitch_39  #00000059
        :pswitch_39  #0000005a
    .end packed-switch

    :pswitch_data_166
    .packed-switch 0x61
        :pswitch_3d  #00000061
        :pswitch_3d  #00000062
        :pswitch_3d  #00000063
        :pswitch_3d  #00000064
        :pswitch_3d  #00000065
        :pswitch_3d  #00000066
        :pswitch_3d  #00000067
        :pswitch_3d  #00000068
        :pswitch_3d  #00000069
        :pswitch_3d  #0000006a
        :pswitch_3d  #0000006b
        :pswitch_3d  #0000006c
        :pswitch_3d  #0000006d
        :pswitch_3d  #0000006e
        :pswitch_3d  #0000006f
        :pswitch_3d  #00000070
        :pswitch_3d  #00000071
        :pswitch_3d  #00000072
        :pswitch_3d  #00000073
        :pswitch_3d  #00000074
        :pswitch_3d  #00000075
        :pswitch_3d  #00000076
        :pswitch_3d  #00000077
        :pswitch_3d  #00000078
        :pswitch_3d  #00000079
        :pswitch_3d  #0000007a
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

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->nw:Lgroovyjarjarantlr/collections/impl/BitSet;

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

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->rN(Z)V

    goto :goto_82

    :pswitch_43  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->J8(Z)V

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

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL(Z)V

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
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->VH(Z)V

    :goto_82
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->SI:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_15b

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->KD:Lgroovyjarjarantlr/collections/impl/BitSet;

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
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

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

    packed-switch v3, :pswitch_data_1b0

    packed-switch v3, :pswitch_data_1ea

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
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :cond_153
    :pswitch_153  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->FH(Z)V

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
        :pswitch_153  #0000003a
    .end packed-switch

    :pswitch_data_1b0
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

    :pswitch_data_1ea
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

    packed-switch v3, :pswitch_data_1ca

    packed-switch v3, :pswitch_data_1e4

    packed-switch v3, :pswitch_data_21e

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

    invoke-virtual {v0, v10}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_6b
    :pswitch_6b  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->v5(Z)V

    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v13

    const/16 v14, 0x2c

    const/16 v15, 0x5d

    if-eq v13, v12, :cond_a6

    if-eq v13, v11, :cond_a6

    if-eq v13, v9, :cond_a6

    if-eq v13, v8, :cond_a6

    if-eq v13, v14, :cond_b4

    if-ne v13, v15, :cond_90

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

    invoke-virtual {v0, v10}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v10, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v13}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_b4
    :goto_b4
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    const/4 v13, 0x0

    if-eq v10, v14, :cond_d6

    if-ne v10, v15, :cond_c0

    move-object v4, v13

    goto/16 :goto_16a

    :cond_c0
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

    :cond_d6
    iget-object v10, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v10}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v10

    invoke-virtual {v0, v14}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v10}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    if-eq v10, v12, :cond_117

    if-eq v10, v11, :cond_117

    if-eq v10, v9, :cond_117

    if-eq v10, v8, :cond_117

    if-eq v10, v7, :cond_126

    if-eq v10, v6, :cond_126

    if-eq v10, v5, :cond_126

    if-eq v10, v4, :cond_126

    packed-switch v10, :pswitch_data_256

    packed-switch v10, :pswitch_data_270

    packed-switch v10, :pswitch_data_2aa

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
    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_126
    :pswitch_126  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->v5(Z)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-eq v5, v12, :cond_15b

    if-eq v5, v11, :cond_15b

    if-eq v5, v9, :cond_15b

    if-eq v5, v8, :cond_15b

    if-ne v5, v15, :cond_145

    goto :goto_16a

    :cond_145
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

    :cond_15b
    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_16a
    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v2, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/CodeGenerator;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_19c

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_19c
    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    iget-object v4, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v4, v13, v2}, Lgroovyjarjarantlr/CodeGenerator;->j6(Lgroovyjarjarantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_1c7

    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v13

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v3

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v13, v2}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    :cond_1c7
    iput-object v13, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :pswitch_data_1ca
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
        :pswitch_6b  #0000003a
    .end packed-switch

    :pswitch_data_1e4
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

    :pswitch_data_21e
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

    :pswitch_data_256
    .packed-switch 0x30
        :pswitch_126  #00000030
        :pswitch_126  #00000031
        :pswitch_126  #00000032
        :pswitch_126  #00000033
        :pswitch_126  #00000034
        :pswitch_126  #00000035
        :pswitch_126  #00000036
        :pswitch_126  #00000037
        :pswitch_126  #00000038
        :pswitch_126  #00000039
        :pswitch_126  #0000003a
    .end packed-switch

    :pswitch_data_270
    .packed-switch 0x41
        :pswitch_126  #00000041
        :pswitch_126  #00000042
        :pswitch_126  #00000043
        :pswitch_126  #00000044
        :pswitch_126  #00000045
        :pswitch_126  #00000046
        :pswitch_126  #00000047
        :pswitch_126  #00000048
        :pswitch_126  #00000049
        :pswitch_126  #0000004a
        :pswitch_126  #0000004b
        :pswitch_126  #0000004c
        :pswitch_126  #0000004d
        :pswitch_126  #0000004e
        :pswitch_126  #0000004f
        :pswitch_126  #00000050
        :pswitch_126  #00000051
        :pswitch_126  #00000052
        :pswitch_126  #00000053
        :pswitch_126  #00000054
        :pswitch_126  #00000055
        :pswitch_126  #00000056
        :pswitch_126  #00000057
        :pswitch_126  #00000058
        :pswitch_126  #00000059
        :pswitch_126  #0000005a
        :pswitch_126  #0000005b
    .end packed-switch

    :pswitch_data_2aa
    .packed-switch 0x61
        :pswitch_126  #00000061
        :pswitch_126  #00000062
        :pswitch_126  #00000063
        :pswitch_126  #00000064
        :pswitch_126  #00000065
        :pswitch_126  #00000066
        :pswitch_126  #00000067
        :pswitch_126  #00000068
        :pswitch_126  #00000069
        :pswitch_126  #0000006a
        :pswitch_126  #0000006b
        :pswitch_126  #0000006c
        :pswitch_126  #0000006d
        :pswitch_126  #0000006e
        :pswitch_126  #0000006f
        :pswitch_126  #00000070
        :pswitch_126  #00000071
        :pswitch_126  #00000072
        :pswitch_126  #00000073
        :pswitch_126  #00000074
        :pswitch_126  #00000075
        :pswitch_126  #00000076
        :pswitch_126  #00000077
        :pswitch_126  #00000078
        :pswitch_126  #00000079
        :pswitch_126  #0000007a
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

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->u7(Z)V

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

    sget-object v4, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->cb:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    invoke-virtual {v4, v8}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->u7(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    if-lt v2, v3, :cond_c6

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_46

    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

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

    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

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

    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->u7(Z)V

    goto :goto_66

    :cond_82
    sget-object v1, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->dx:Lgroovyjarjarantlr/collections/impl/BitSet;

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

    packed-switch v2, :pswitch_data_92

    packed-switch v2, :pswitch_data_ca

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
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->J8(Z)V

    goto :goto_56

    :cond_43
    :pswitch_43  #0x3a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->U2(Z)V

    goto :goto_56

    :cond_47
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_56

    :cond_4b
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->VH(Z)V

    goto :goto_56

    :cond_4f
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->a8(Z)V

    goto :goto_56

    :cond_53
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL(Z)V

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
        :pswitch_43  #0000003a
    .end packed-switch

    :pswitch_data_92
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

    :pswitch_data_ca
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
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->EQ(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_37

    sget-object v4, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ro:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v4, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v7, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_43

    :cond_37
    sget-object v4, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ro:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v4, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_270

    :goto_43
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v7, 0x20

    const/16 v8, 0xd

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x28

    const/16 v12, 0xff

    const/4 v13, 0x3

    if-eq v4, v11, :cond_181

    const/16 v3, 0x5b

    if-eq v4, v3, :cond_b1

    const/16 v3, 0x2d

    if-eq v4, v3, :cond_a7

    const/16 v3, 0x2e

    if-eq v4, v3, :cond_a3

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_7f

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_7f

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->er:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    const-string v2, "::"

    goto :goto_a9

    :cond_7f
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->rN:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_8d

    goto/16 :goto_238

    :cond_8d
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

    :cond_a3
    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_ac

    :cond_a7
    const-string v2, "->"

    :goto_a9
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_ac
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->U2(Z)V

    goto/16 :goto_238

    :cond_b1
    const/4 v4, 0x0

    :goto_b2
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    if-ne v11, v3, :cond_167

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    sget-object v11, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v14

    invoke-virtual {v11, v14}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v11

    if-eqz v11, :cond_ee

    sget-object v11, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sh:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v14

    invoke-virtual {v11, v14}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v11

    if-eqz v11, :cond_ee

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    if-lt v11, v13, :cond_ee

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    if-gt v11, v12, :cond_ee

    iget-object v11, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v11}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v11

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v14, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v11}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_112

    :cond_ee
    sget-object v11, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sh:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v14

    invoke-virtual {v11, v14}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v11

    if-eqz v11, :cond_151

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    if-lt v11, v13, :cond_151

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    if-gt v11, v12, :cond_151

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    if-lt v11, v13, :cond_151

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    if-gt v11, v12, :cond_151

    :goto_112
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3(Z)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    const/16 v14, 0x5d

    if-eq v11, v10, :cond_13c

    if-eq v11, v9, :cond_13c

    if-eq v11, v8, :cond_13c

    if-eq v11, v7, :cond_13c

    if-ne v11, v14, :cond_126

    goto :goto_14a

    :cond_126
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

    :cond_13c
    iget-object v11, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v11}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v11

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v15, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v11}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_14a
    invoke-virtual {v0, v14}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b2

    :cond_151
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

    :cond_167
    if-lt v4, v2, :cond_16b

    goto/16 :goto_238

    :cond_16b
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

    :cond_181
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_1b5

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->cn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_1b5

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v13, :cond_1b5

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v12, :cond_1b5

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_1cd

    :cond_1b5
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->cn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_25a

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v13, :cond_25a

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v12, :cond_25a

    :cond_1cd
    :goto_1cd
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sh:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_200

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v13, :cond_200

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v12, :cond_200

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v13, :cond_200

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v12, :cond_200

    :goto_1f1
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3(Z)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1cd

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_1f1

    :cond_200
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v10, :cond_227

    if-eq v3, v9, :cond_227

    if-eq v3, v8, :cond_227

    if-eq v3, v7, :cond_227

    if-ne v3, v4, :cond_211

    goto :goto_235

    :cond_211
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

    :cond_227
    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_235
    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_238
    if-eqz p1, :cond_256

    const/16 v2, 0xf

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

    goto :goto_257

    :cond_256
    const/4 v2, 0x0

    :goto_257
    iput-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_25a
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

    :cond_270
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

    goto :goto_287

    :goto_286
    throw v1

    :goto_287
    goto :goto_286
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

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->tp(Z)V

    goto :goto_28

    :cond_19
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->U2:Lgroovyjarjarantlr/collections/impl/BitSet;

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

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->tp(Z)V

    goto :goto_b

    :cond_19
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Mr:Lgroovyjarjarantlr/collections/impl/BitSet;

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

    iget-object v0, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Sf:Lgroovyjarjarantlr/Tool;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Tool;->Hw(Ljava/lang/String;)V

    goto :goto_1d

    :cond_c
    iget-object v0, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Sf:Lgroovyjarjarantlr/Tool;

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

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->lg(Z)V

    :goto_29
    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    goto/16 :goto_1cb

    :cond_2d
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v5, 0x3d

    const/4 v6, 0x0

    if-ne v2, v4, :cond_146

    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v2, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_146

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_88

    const/16 v3, 0xa

    if-eq v2, v3, :cond_88

    const/16 v3, 0xd

    if-eq v2, v3, :cond_88

    const/16 v3, 0x20

    if-eq v2, v3, :cond_88

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_8b

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_8b

    packed-switch v2, :pswitch_data_204

    packed-switch v2, :pswitch_data_23c

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

    :cond_88
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :cond_8b
    :pswitch_8b  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->EQ(Z)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

    invoke-virtual {v4, v2, v7}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b4

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    goto/16 :goto_12f

    :cond_b4
    const-string v2, "if"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "define"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "ifdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "ifndef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "else"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "elif"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "endif"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "warning"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "ident"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "pragma"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    const-string v2, "include"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    :cond_114
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

    :cond_12f
    :goto_12f
    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_13e

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :cond_13e
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v5, :cond_1cb

    goto/16 :goto_1c8

    :cond_146
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_167

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v7, 0x5b

    if-ne v2, v7, :cond_167

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Hw(Z)V

    goto/16 :goto_29

    :cond_167
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_1ec

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_1ec

    const-string v2, "##"

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v3, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    if-eqz v3, :cond_1a4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

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

    iget-object v3, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

    if-eqz v3, :cond_1b3

    iput-object v2, v3, Lgroovyjarjarantlr/ActionTransInfo;->DW:Ljava/lang/String;

    goto :goto_1b3

    :cond_1a4
    const-string v3, "\"##\" not valid in this context"

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Zo(Ljava/lang/String;)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    :cond_1b3
    :goto_1b3
    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_1c2

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :cond_1c2
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v5, :cond_1cb

    :goto_1c8
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->er(Z)V

    :cond_1cb
    :goto_1cb
    if-eqz p1, :cond_1e8

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

    goto :goto_1e9

    :cond_1e8
    const/4 p1, 0x0

    :goto_1e9
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_1ec
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

    goto :goto_203

    :goto_202
    throw p1

    :goto_203
    goto :goto_202

    :pswitch_data_204
    .packed-switch 0x41
        :pswitch_8b  #00000041
        :pswitch_8b  #00000042
        :pswitch_8b  #00000043
        :pswitch_8b  #00000044
        :pswitch_8b  #00000045
        :pswitch_8b  #00000046
        :pswitch_8b  #00000047
        :pswitch_8b  #00000048
        :pswitch_8b  #00000049
        :pswitch_8b  #0000004a
        :pswitch_8b  #0000004b
        :pswitch_8b  #0000004c
        :pswitch_8b  #0000004d
        :pswitch_8b  #0000004e
        :pswitch_8b  #0000004f
        :pswitch_8b  #00000050
        :pswitch_8b  #00000051
        :pswitch_8b  #00000052
        :pswitch_8b  #00000053
        :pswitch_8b  #00000054
        :pswitch_8b  #00000055
        :pswitch_8b  #00000056
        :pswitch_8b  #00000057
        :pswitch_8b  #00000058
        :pswitch_8b  #00000059
        :pswitch_8b  #0000005a
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x61
        :pswitch_8b  #00000061
        :pswitch_8b  #00000062
        :pswitch_8b  #00000063
        :pswitch_8b  #00000064
        :pswitch_8b  #00000065
        :pswitch_8b  #00000066
        :pswitch_8b  #00000067
        :pswitch_8b  #00000068
        :pswitch_8b  #00000069
        :pswitch_8b  #0000006a
        :pswitch_8b  #0000006b
        :pswitch_8b  #0000006c
        :pswitch_8b  #0000006d
        :pswitch_8b  #0000006e
        :pswitch_8b  #0000006f
        :pswitch_8b  #00000070
        :pswitch_8b  #00000071
        :pswitch_8b  #00000072
        :pswitch_8b  #00000073
        :pswitch_8b  #00000074
        :pswitch_8b  #00000075
        :pswitch_8b  #00000076
        :pswitch_8b  #00000077
        :pswitch_8b  #00000078
        :pswitch_8b  #00000079
        :pswitch_8b  #0000007a
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

    const-string v5, ")"

    const/16 v6, 0xff

    const/16 v7, 0x46

    const/16 v9, 0x20

    const/16 v10, 0xd

    const/16 v12, 0xa

    const/16 v14, 0x9

    const/4 v15, 0x3

    const/4 v8, 0x2

    const/16 v11, 0x28

    const/16 v13, 0x24

    if-ne v3, v13, :cond_c4

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v7, :cond_c4

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v7, 0x4f

    if-ne v3, v7, :cond_c4

    const-string v3, "$FOLLOW"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_93

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v15, :cond_93

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v6, :cond_93

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

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :goto_85
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v6, 0x29

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_94

    :cond_93
    const/4 v3, 0x0

    :goto_94
    iget-object v6, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v6}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_a0

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v6

    :cond_a0
    iget-object v3, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v3, v6, v2}, Lgroovyjarjarantlr/CodeGenerator;->DW(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "$FOLLOW("

    :goto_af
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->v5(Ljava/lang/String;)V

    goto/16 :goto_30e

    :cond_c4
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v13, :cond_158

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v7, 0x46

    if-ne v3, v7, :cond_158

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v7, 0x49

    if-ne v3, v7, :cond_158

    const-string v3, "$FIRST"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_13a

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_13a

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v15, :cond_13a

    invoke-virtual {v0, v15}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v6, :cond_13a

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

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :goto_12c
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v6, 0x29

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_13b

    :cond_13a
    const/4 v3, 0x0

    :goto_13b
    iget-object v6, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v6}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_147

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v6

    :cond_147
    iget-object v3, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v3, v6, v2}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "$FIRST("

    goto/16 :goto_af

    :cond_158
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v13, :cond_1c2

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_1c2

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

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :goto_194
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3(Z)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "text += "

    :goto_1a8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    :goto_1af
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1b6
    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    goto/16 :goto_30e

    :cond_1c2
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v13, :cond_2ef

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_2ef

    const-string v3, "$set"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_235

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v5, 0x65

    if-ne v3, v5, :cond_235

    const-string v3, "Text"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v14, :cond_20f

    if-eq v3, v12, :cond_20f

    if-eq v3, v10, :cond_20f

    if-eq v3, v9, :cond_20f

    if-ne v3, v11, :cond_1f9

    goto :goto_213

    :cond_1f9
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

    :cond_20f
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :goto_213
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3(Z)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "{ text.erase(_begin); text += "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; }"

    goto/16 :goto_1af

    :cond_235
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_287

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v5, 0x6f

    if-ne v3, v5, :cond_287

    const-string v3, "Token"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v14, :cond_26d

    if-eq v3, v12, :cond_26d

    if-eq v3, v10, :cond_26d

    if-eq v3, v9, :cond_26d

    if-ne v3, v11, :cond_257

    goto :goto_271

    :cond_257
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

    :cond_26d
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :goto_271
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3(Z)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_token = "

    goto/16 :goto_1a8

    :cond_287
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_2d9

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x79

    if-ne v3, v4, :cond_2d9

    const-string v3, "Type"

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v14, :cond_2bf

    if-eq v3, v12, :cond_2bf

    if-eq v3, v10, :cond_2bf

    if-eq v3, v9, :cond_2bf

    if-ne v3, v11, :cond_2a9

    goto :goto_2c3

    :cond_2a9
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

    :cond_2bf
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :goto_2c3
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->j3(Z)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_ttype = "

    goto/16 :goto_1a8

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

    invoke-virtual {v0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_32f

    const-string v2, "$getText"

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    const-string v3, "text.substr(_begin,text.length()-_begin)"

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    :goto_30e
    if-eqz p1, :cond_32b

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v8

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v3

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8, v2}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_32c

    :cond_32b
    const/4 v8, 0x0

    :goto_32c
    iput-object v8, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

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
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->gn(Z)V

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

    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

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
    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

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
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->VH(Z)V

    goto :goto_c0

    :cond_b6
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL(Z)V

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

    iget-object v1, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

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

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->QX(Z)V

    goto :goto_2c

    :cond_1b
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_4e

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v4, 0x2a

    if-ne v2, v4, :cond_4e

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Ws(Z)V

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

    packed-switch v2, :pswitch_data_108

    packed-switch v2, :pswitch_data_140

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
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :cond_52
    :pswitch_52  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    const/4 v2, 0x0

    :goto_53
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->lg:Lgroovyjarjarantlr/collections/impl/BitSet;

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

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Mr(Z)V

    sget-object v6, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v6

    if-eqz v6, :cond_8e

    sget-object v6, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->rN:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v6, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    goto :goto_9a

    :cond_8e
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->rN:Lgroovyjarjarantlr/collections/impl/BitSet;

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
        :pswitch_52  #0000003a
    .end packed-switch

    :pswitch_data_108
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

    :pswitch_data_140
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

    const/16 v10, 0x3a

    const/16 v11, 0x20

    const/16 v12, 0xd

    const/4 v13, 0x0

    const/16 v14, 0x9

    if-eq v6, v14, :cond_66

    if-eq v6, v3, :cond_66

    if-eq v6, v12, :cond_66

    if-eq v6, v11, :cond_66

    if-eq v6, v5, :cond_74

    if-eq v6, v10, :cond_74

    if-eq v6, v9, :cond_74

    if-eq v6, v8, :cond_74

    if-eq v6, v7, :cond_74

    packed-switch v6, :pswitch_data_1c0

    packed-switch v6, :pswitch_data_1fa

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

    :cond_66
    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v15, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_74
    :pswitch_74  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->rN(Z)V

    iget-object v15, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    iget-object v15, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v6}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lgroovyjarjarantlr/CodeGenerator;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgroovyjarjarantlr/collections/impl/Vector;->DW(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    const/16 v15, 0x29

    const/16 v7, 0x2c

    if-eq v6, v14, :cond_bc

    if-eq v6, v3, :cond_bc

    if-eq v6, v12, :cond_bc

    if-eq v6, v11, :cond_bc

    if-eq v6, v15, :cond_ca

    if-ne v6, v7, :cond_a6

    goto :goto_ca

    :cond_a6
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

    :cond_bc
    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v15, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_ca
    :goto_ca
    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    if-ne v6, v7, :cond_17d

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v15, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    if-eq v6, v14, :cond_115

    if-eq v6, v3, :cond_115

    if-eq v6, v12, :cond_115

    if-eq v6, v11, :cond_115

    if-eq v6, v5, :cond_112

    if-eq v6, v10, :cond_112

    if-eq v6, v9, :cond_112

    if-eq v6, v8, :cond_112

    const/16 v15, 0x23

    if-eq v6, v15, :cond_125

    packed-switch v6, :pswitch_data_232

    packed-switch v6, :pswitch_data_26c

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

    :cond_112
    const/16 v15, 0x23

    goto :goto_125

    :cond_115
    const/16 v15, 0x23

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_125
    :goto_125
    :pswitch_125  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v5

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->rN(Z)V

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    iget-object v6, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v5}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lgroovyjarjarantlr/CodeGenerator;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgroovyjarjarantlr/collections/impl/Vector;->DW(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-eq v5, v14, :cond_16b

    if-eq v5, v3, :cond_16b

    if-eq v5, v12, :cond_16b

    if-eq v5, v11, :cond_16b

    const/16 v6, 0x29

    if-eq v5, v6, :cond_179

    if-ne v5, v7, :cond_155

    goto :goto_179

    :cond_155
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

    :cond_16b
    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v5

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v6, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_179
    :goto_179
    const/16 v5, 0x28

    goto/16 :goto_ca

    :cond_17d
    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    iget-object v4, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

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

    if-eqz p1, :cond_1bb

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

    goto :goto_1bc

    :cond_1bb
    const/4 v2, 0x0

    :goto_1bc
    iput-object v2, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    nop

    :pswitch_data_1c0
    .packed-switch 0x41
        :pswitch_74  #00000041
        :pswitch_74  #00000042
        :pswitch_74  #00000043
        :pswitch_74  #00000044
        :pswitch_74  #00000045
        :pswitch_74  #00000046
        :pswitch_74  #00000047
        :pswitch_74  #00000048
        :pswitch_74  #00000049
        :pswitch_74  #0000004a
        :pswitch_74  #0000004b
        :pswitch_74  #0000004c
        :pswitch_74  #0000004d
        :pswitch_74  #0000004e
        :pswitch_74  #0000004f
        :pswitch_74  #00000050
        :pswitch_74  #00000051
        :pswitch_74  #00000052
        :pswitch_74  #00000053
        :pswitch_74  #00000054
        :pswitch_74  #00000055
        :pswitch_74  #00000056
        :pswitch_74  #00000057
        :pswitch_74  #00000058
        :pswitch_74  #00000059
        :pswitch_74  #0000005a
        :pswitch_74  #0000005b
    .end packed-switch

    :pswitch_data_1fa
    .packed-switch 0x61
        :pswitch_74  #00000061
        :pswitch_74  #00000062
        :pswitch_74  #00000063
        :pswitch_74  #00000064
        :pswitch_74  #00000065
        :pswitch_74  #00000066
        :pswitch_74  #00000067
        :pswitch_74  #00000068
        :pswitch_74  #00000069
        :pswitch_74  #0000006a
        :pswitch_74  #0000006b
        :pswitch_74  #0000006c
        :pswitch_74  #0000006d
        :pswitch_74  #0000006e
        :pswitch_74  #0000006f
        :pswitch_74  #00000070
        :pswitch_74  #00000071
        :pswitch_74  #00000072
        :pswitch_74  #00000073
        :pswitch_74  #00000074
        :pswitch_74  #00000075
        :pswitch_74  #00000076
        :pswitch_74  #00000077
        :pswitch_74  #00000078
        :pswitch_74  #00000079
        :pswitch_74  #0000007a
    .end packed-switch

    :pswitch_data_232
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

    :pswitch_data_26c
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

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->DW(Z)V

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

    if-eq v2, v3, :cond_f4

    const/16 v3, 0x28

    if-eq v2, v3, :cond_f0

    const/16 v6, 0x3a

    if-eq v2, v6, :cond_ec

    const/16 v6, 0x5f

    if-eq v2, v6, :cond_ec

    packed-switch v2, :pswitch_data_118

    packed-switch v2, :pswitch_data_152

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v6, 0x2

    const/16 v7, 0x23

    if-ne v2, v7, :cond_47

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v3, :cond_47

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto/16 :goto_f0

    :goto_42
    :pswitch_42  #0x5b
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Hw(Z)V

    goto/16 :goto_f7

    :cond_47
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v7, :cond_64

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_64

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_42

    :cond_64
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v7, :cond_99

    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->er:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_99

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->we(Z)Z

    move-result v1

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    if-nez v1, :cond_f7

    iget-object v1, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f7

    goto :goto_cb

    :cond_99
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v7, :cond_d6

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v7, :cond_d6

    const-string v1, "##"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    if-eqz v2, :cond_c6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->sG:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v2}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_AST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_cb

    :cond_c6
    const-string v2, "\"##\" not valid in this context"

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->v5(Ljava/lang/String;)V

    :goto_cb
    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    goto :goto_f7

    :cond_d6
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

    :cond_ec
    :pswitch_ec  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->we(Z)Z

    goto :goto_f7

    :cond_f0
    :goto_f0
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->lg(Z)V

    goto :goto_f7

    :cond_f4
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL(Z)V

    :cond_f7
    :goto_f7
    if-eqz p1, :cond_114

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

    :cond_114
    iput-object v5, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    nop

    :pswitch_data_118
    .packed-switch 0x41
        :pswitch_ec  #00000041
        :pswitch_ec  #00000042
        :pswitch_ec  #00000043
        :pswitch_ec  #00000044
        :pswitch_ec  #00000045
        :pswitch_ec  #00000046
        :pswitch_ec  #00000047
        :pswitch_ec  #00000048
        :pswitch_ec  #00000049
        :pswitch_ec  #0000004a
        :pswitch_ec  #0000004b
        :pswitch_ec  #0000004c
        :pswitch_ec  #0000004d
        :pswitch_ec  #0000004e
        :pswitch_ec  #0000004f
        :pswitch_ec  #00000050
        :pswitch_ec  #00000051
        :pswitch_ec  #00000052
        :pswitch_ec  #00000053
        :pswitch_ec  #00000054
        :pswitch_ec  #00000055
        :pswitch_ec  #00000056
        :pswitch_ec  #00000057
        :pswitch_ec  #00000058
        :pswitch_ec  #00000059
        :pswitch_ec  #0000005a
        :pswitch_42  #0000005b
    .end packed-switch

    :pswitch_data_152
    .packed-switch 0x61
        :pswitch_ec  #00000061
        :pswitch_ec  #00000062
        :pswitch_ec  #00000063
        :pswitch_ec  #00000064
        :pswitch_ec  #00000065
        :pswitch_ec  #00000066
        :pswitch_ec  #00000067
        :pswitch_ec  #00000068
        :pswitch_ec  #00000069
        :pswitch_ec  #0000006a
        :pswitch_ec  #0000006b
        :pswitch_ec  #0000006c
        :pswitch_ec  #0000006d
        :pswitch_ec  #0000006e
        :pswitch_ec  #0000006f
        :pswitch_ec  #00000070
        :pswitch_ec  #00000071
        :pswitch_ec  #00000072
        :pswitch_ec  #00000073
        :pswitch_ec  #00000074
        :pswitch_ec  #00000075
        :pswitch_ec  #00000076
        :pswitch_ec  #00000077
        :pswitch_ec  #00000078
        :pswitch_ec  #00000079
        :pswitch_ec  #0000007a
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

    if-eq v3, v4, :cond_11f

    const/16 v4, 0x27

    if-eq v3, v4, :cond_11f

    if-eq v3, v1, :cond_11b

    const/16 v1, 0x62

    if-eq v3, v1, :cond_11b

    const/16 v1, 0x66

    if-eq v3, v1, :cond_11b

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_11b

    const/16 v1, 0x72

    if-eq v3, v1, :cond_11b

    const/16 v1, 0x74

    if-eq v3, v1, :cond_11b

    const/16 v1, 0x76

    if-eq v3, v1, :cond_11b

    const/4 v1, 0x0

    const/16 v4, 0x39

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x3

    packed-switch v3, :pswitch_data_144

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

    :pswitch_54  #0x34, 0x35, 0x36, 0x37
    const/16 v3, 0x34

    const/16 v9, 0x37

    invoke-virtual {p0, v3, v9}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_78

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_78

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_78

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_78

    :goto_73
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->u7(Z)V

    goto/16 :goto_122

    :cond_78
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_86

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_86

    goto/16 :goto_122

    :cond_86
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

    :pswitch_9c  #0x30, 0x31, 0x32, 0x33
    const/16 v3, 0x33

    invoke-virtual {p0, v5, v3}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_f8

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_f8

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_f8

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_f8

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->u7(Z)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_d5

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_d5

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_d5

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_d5

    goto :goto_73

    :cond_d5
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_e2

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_e2

    goto :goto_122

    :cond_e2
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

    :cond_f8
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_105

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_105

    goto :goto_122

    :cond_105
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

    :cond_11b
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_122

    :cond_11f
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_122
    if-eqz p1, :cond_140

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

    goto :goto_141

    :cond_140
    const/4 p1, 0x0

    :goto_141
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :pswitch_data_144
    .packed-switch 0x30
        :pswitch_9c  #00000030
        :pswitch_9c  #00000031
        :pswitch_9c  #00000032
        :pswitch_9c  #00000033
        :pswitch_54  #00000034
        :pswitch_54  #00000035
        :pswitch_54  #00000036
        :pswitch_54  #00000037
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

    iget-object v0, p0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->Sf:Lgroovyjarjarantlr/Tool;

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

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL(Z)V

    goto :goto_5f

    :cond_30
    sget-object v2, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->nw:Lgroovyjarjarantlr/collections/impl/BitSet;

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

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->rN(Z)V

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

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->J0(Z)V

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

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->EQ(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    sget-object v4, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_37

    sget-object v4, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v4, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v7, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_43

    :cond_37
    sget-object v4, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual {v4, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_386

    :goto_43
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v10, 0x5f

    const/16 v11, 0x3e

    const/16 v12, 0x3c

    const/4 v13, 0x3

    const/16 v14, 0x28

    const/16 v15, 0x20

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/16 v9, 0x9

    if-eq v4, v14, :cond_1ed

    const/16 v14, 0x2e

    if-eq v4, v14, :cond_1e5

    const/16 v14, 0x3a

    if-eq v4, v14, :cond_1df

    if-eq v4, v12, :cond_1ed

    const/16 v12, 0x5b

    if-eq v4, v12, :cond_131

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v10, 0x2d

    if-ne v4, v10, :cond_86

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    if-ne v4, v11, :cond_86

    sget-object v4, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->er:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    invoke-virtual {v4, v10}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_86

    const-string v2, "->"

    goto/16 :goto_1e1

    :cond_86
    sget-object v4, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->vy:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    invoke-virtual {v4, v10}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v10

    if-eqz v10, :cond_11b

    iget-object v10, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ef:Lgroovyjarjarantlr/CodeGenerator;

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v3

    iget-object v11, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

    invoke-virtual {v10, v3, v11}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_aa

    iget-object v10, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v10, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    :cond_aa
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->P8:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_f7

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_f7

    iget-object v3, v0, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->vJ:Lgroovyjarjarantlr/ActionTransInfo;

    if-eqz v3, :cond_f7

    iget-object v3, v3, Lgroovyjarjarantlr/ActionTransInfo;->DW:Ljava/lang/String;

    if-eqz v3, :cond_f7

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v9, :cond_ef

    if-eq v3, v8, :cond_ef

    if-eq v3, v7, :cond_ef

    if-eq v3, v15, :cond_ef

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_d9

    goto :goto_f2

    :cond_d9
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

    :cond_ef
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    :goto_f2
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->er(Z)V

    goto/16 :goto_34e

    :cond_f7
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->ei:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_105

    goto/16 :goto_34e

    :cond_105
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

    :cond_11b
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

    :cond_131
    const/4 v3, 0x0

    :goto_132
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    if-ne v4, v12, :cond_1c5

    invoke-virtual {v0, v12}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    if-eq v4, v9, :cond_178

    if-eq v4, v8, :cond_178

    if-eq v4, v7, :cond_178

    if-eq v4, v15, :cond_178

    if-eq v4, v10, :cond_186

    const/16 v5, 0x22

    if-eq v4, v5, :cond_186

    const/16 v5, 0x23

    if-eq v4, v5, :cond_186

    const/16 v5, 0x27

    if-eq v4, v5, :cond_186

    const/16 v5, 0x28

    if-eq v4, v5, :cond_186

    packed-switch v4, :pswitch_data_39e

    packed-switch v4, :pswitch_data_3b8

    packed-switch v4, :pswitch_data_3f2

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

    :cond_178
    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v5, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :cond_186
    :pswitch_186  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->FH(Z)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    const/16 v5, 0x5d

    if-eq v4, v9, :cond_1b0

    if-eq v4, v8, :cond_1b0

    if-eq v4, v7, :cond_1b0

    if-eq v4, v15, :cond_1b0

    if-ne v4, v5, :cond_19a

    goto :goto_1be

    :cond_19a
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

    :cond_1b0
    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v11, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_1be
    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_132

    :cond_1c5
    if-lt v3, v2, :cond_1c9

    goto/16 :goto_34d

    :cond_1c9
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

    :cond_1df
    const-string v2, "::"

    :goto_1e1
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    goto :goto_1e8

    :cond_1e5
    invoke-virtual {v0, v14}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_1e8
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->we(Z)Z

    goto/16 :goto_34d

    :cond_1ed
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_224

    if-ne v3, v12, :cond_20e

    invoke-virtual {v0, v12}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_1fa
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->gW:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_20a

    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto :goto_1fa

    :cond_20a
    invoke-virtual {v0, v11}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_224

    :cond_20e
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

    :cond_224
    :goto_224
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    const/16 v4, 0xff

    if-eqz v3, :cond_25e

    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->BT:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    invoke-virtual {v3, v11}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_25e

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v13, :cond_25e

    invoke-virtual {v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_25e

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v4, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_276

    :cond_25e
    sget-object v3, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->BT:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v11

    invoke-virtual {v3, v11}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_370

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v13, :cond_370

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_370

    :goto_276
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v9, :cond_315

    if-eq v3, v8, :cond_315

    if-eq v3, v7, :cond_315

    if-eq v3, v15, :cond_315

    if-eq v3, v10, :cond_2ae

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2ae

    const/16 v4, 0x23

    if-eq v3, v4, :cond_2ae

    packed-switch v3, :pswitch_data_42a

    packed-switch v3, :pswitch_data_434

    packed-switch v3, :pswitch_data_44e

    packed-switch v3, :pswitch_data_488

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

    :cond_2ae
    :goto_2ae
    :pswitch_2ae  #0x27, 0x28, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->FH(Z)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_315

    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-eq v3, v9, :cond_2fe

    if-eq v3, v8, :cond_2fe

    if-eq v3, v7, :cond_2fe

    if-eq v3, v15, :cond_2fe

    const/16 v4, 0x22

    const/16 v5, 0x23

    if-eq v3, v10, :cond_2f9

    if-eq v3, v4, :cond_2f9

    const/16 v11, 0x27

    if-eq v3, v5, :cond_2fb

    const/16 v12, 0x28

    if-eq v3, v11, :cond_2ae

    if-eq v3, v12, :cond_2ae

    packed-switch v3, :pswitch_data_4c0

    packed-switch v3, :pswitch_data_4da

    packed-switch v3, :pswitch_data_514

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

    :cond_2f9
    const/16 v11, 0x27

    :cond_2fb
    const/16 v12, 0x28

    goto :goto_2ae

    :cond_2fe
    const/16 v4, 0x22

    const/16 v5, 0x23

    const/16 v11, 0x27

    const/16 v12, 0x28

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v3

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v13, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    goto :goto_2ae

    :cond_315
    :pswitch_315  #0x29
    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v9, :cond_33c

    if-eq v3, v8, :cond_33c

    if-eq v3, v7, :cond_33c

    if-eq v3, v15, :cond_33c

    if-ne v3, v4, :cond_326

    goto :goto_34a

    :cond_326
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

    :cond_33c
    iget-object v2, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {v0, v6}, Lgroovyjarjarantlr/actions/cpp/ActionLexer;->yS(Z)V

    iget-object v3, v0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    :goto_34a
    invoke-virtual {v0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_34d
    const/4 v2, 0x0

    :goto_34e
    if-eqz p1, :cond_36c

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

    goto :goto_36d

    :cond_36c
    const/4 v3, 0x0

    :goto_36d
    iput-object v3, v0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return v2

    :cond_370
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

    :cond_386
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

    goto :goto_39d

    :goto_39c
    throw v1

    :goto_39d
    goto :goto_39c

    :pswitch_data_39e
    .packed-switch 0x30
        :pswitch_186  #00000030
        :pswitch_186  #00000031
        :pswitch_186  #00000032
        :pswitch_186  #00000033
        :pswitch_186  #00000034
        :pswitch_186  #00000035
        :pswitch_186  #00000036
        :pswitch_186  #00000037
        :pswitch_186  #00000038
        :pswitch_186  #00000039
        :pswitch_186  #0000003a
    .end packed-switch

    :pswitch_data_3b8
    .packed-switch 0x41
        :pswitch_186  #00000041
        :pswitch_186  #00000042
        :pswitch_186  #00000043
        :pswitch_186  #00000044
        :pswitch_186  #00000045
        :pswitch_186  #00000046
        :pswitch_186  #00000047
        :pswitch_186  #00000048
        :pswitch_186  #00000049
        :pswitch_186  #0000004a
        :pswitch_186  #0000004b
        :pswitch_186  #0000004c
        :pswitch_186  #0000004d
        :pswitch_186  #0000004e
        :pswitch_186  #0000004f
        :pswitch_186  #00000050
        :pswitch_186  #00000051
        :pswitch_186  #00000052
        :pswitch_186  #00000053
        :pswitch_186  #00000054
        :pswitch_186  #00000055
        :pswitch_186  #00000056
        :pswitch_186  #00000057
        :pswitch_186  #00000058
        :pswitch_186  #00000059
        :pswitch_186  #0000005a
        :pswitch_186  #0000005b
    .end packed-switch

    :pswitch_data_3f2
    .packed-switch 0x61
        :pswitch_186  #00000061
        :pswitch_186  #00000062
        :pswitch_186  #00000063
        :pswitch_186  #00000064
        :pswitch_186  #00000065
        :pswitch_186  #00000066
        :pswitch_186  #00000067
        :pswitch_186  #00000068
        :pswitch_186  #00000069
        :pswitch_186  #0000006a
        :pswitch_186  #0000006b
        :pswitch_186  #0000006c
        :pswitch_186  #0000006d
        :pswitch_186  #0000006e
        :pswitch_186  #0000006f
        :pswitch_186  #00000070
        :pswitch_186  #00000071
        :pswitch_186  #00000072
        :pswitch_186  #00000073
        :pswitch_186  #00000074
        :pswitch_186  #00000075
        :pswitch_186  #00000076
        :pswitch_186  #00000077
        :pswitch_186  #00000078
        :pswitch_186  #00000079
        :pswitch_186  #0000007a
    .end packed-switch

    :pswitch_data_42a
    .packed-switch 0x27
        :pswitch_2ae  #00000027
        :pswitch_2ae  #00000028
        :pswitch_315  #00000029
    .end packed-switch

    :pswitch_data_434
    .packed-switch 0x30
        :pswitch_2ae  #00000030
        :pswitch_2ae  #00000031
        :pswitch_2ae  #00000032
        :pswitch_2ae  #00000033
        :pswitch_2ae  #00000034
        :pswitch_2ae  #00000035
        :pswitch_2ae  #00000036
        :pswitch_2ae  #00000037
        :pswitch_2ae  #00000038
        :pswitch_2ae  #00000039
        :pswitch_2ae  #0000003a
    .end packed-switch

    :pswitch_data_44e
    .packed-switch 0x41
        :pswitch_2ae  #00000041
        :pswitch_2ae  #00000042
        :pswitch_2ae  #00000043
        :pswitch_2ae  #00000044
        :pswitch_2ae  #00000045
        :pswitch_2ae  #00000046
        :pswitch_2ae  #00000047
        :pswitch_2ae  #00000048
        :pswitch_2ae  #00000049
        :pswitch_2ae  #0000004a
        :pswitch_2ae  #0000004b
        :pswitch_2ae  #0000004c
        :pswitch_2ae  #0000004d
        :pswitch_2ae  #0000004e
        :pswitch_2ae  #0000004f
        :pswitch_2ae  #00000050
        :pswitch_2ae  #00000051
        :pswitch_2ae  #00000052
        :pswitch_2ae  #00000053
        :pswitch_2ae  #00000054
        :pswitch_2ae  #00000055
        :pswitch_2ae  #00000056
        :pswitch_2ae  #00000057
        :pswitch_2ae  #00000058
        :pswitch_2ae  #00000059
        :pswitch_2ae  #0000005a
        :pswitch_2ae  #0000005b
    .end packed-switch

    :pswitch_data_488
    .packed-switch 0x61
        :pswitch_2ae  #00000061
        :pswitch_2ae  #00000062
        :pswitch_2ae  #00000063
        :pswitch_2ae  #00000064
        :pswitch_2ae  #00000065
        :pswitch_2ae  #00000066
        :pswitch_2ae  #00000067
        :pswitch_2ae  #00000068
        :pswitch_2ae  #00000069
        :pswitch_2ae  #0000006a
        :pswitch_2ae  #0000006b
        :pswitch_2ae  #0000006c
        :pswitch_2ae  #0000006d
        :pswitch_2ae  #0000006e
        :pswitch_2ae  #0000006f
        :pswitch_2ae  #00000070
        :pswitch_2ae  #00000071
        :pswitch_2ae  #00000072
        :pswitch_2ae  #00000073
        :pswitch_2ae  #00000074
        :pswitch_2ae  #00000075
        :pswitch_2ae  #00000076
        :pswitch_2ae  #00000077
        :pswitch_2ae  #00000078
        :pswitch_2ae  #00000079
        :pswitch_2ae  #0000007a
    .end packed-switch

    :pswitch_data_4c0
    .packed-switch 0x30
        :pswitch_2ae  #00000030
        :pswitch_2ae  #00000031
        :pswitch_2ae  #00000032
        :pswitch_2ae  #00000033
        :pswitch_2ae  #00000034
        :pswitch_2ae  #00000035
        :pswitch_2ae  #00000036
        :pswitch_2ae  #00000037
        :pswitch_2ae  #00000038
        :pswitch_2ae  #00000039
        :pswitch_2ae  #0000003a
    .end packed-switch

    :pswitch_data_4da
    .packed-switch 0x41
        :pswitch_2ae  #00000041
        :pswitch_2ae  #00000042
        :pswitch_2ae  #00000043
        :pswitch_2ae  #00000044
        :pswitch_2ae  #00000045
        :pswitch_2ae  #00000046
        :pswitch_2ae  #00000047
        :pswitch_2ae  #00000048
        :pswitch_2ae  #00000049
        :pswitch_2ae  #0000004a
        :pswitch_2ae  #0000004b
        :pswitch_2ae  #0000004c
        :pswitch_2ae  #0000004d
        :pswitch_2ae  #0000004e
        :pswitch_2ae  #0000004f
        :pswitch_2ae  #00000050
        :pswitch_2ae  #00000051
        :pswitch_2ae  #00000052
        :pswitch_2ae  #00000053
        :pswitch_2ae  #00000054
        :pswitch_2ae  #00000055
        :pswitch_2ae  #00000056
        :pswitch_2ae  #00000057
        :pswitch_2ae  #00000058
        :pswitch_2ae  #00000059
        :pswitch_2ae  #0000005a
        :pswitch_2ae  #0000005b
    .end packed-switch

    :pswitch_data_514
    .packed-switch 0x61
        :pswitch_2ae  #00000061
        :pswitch_2ae  #00000062
        :pswitch_2ae  #00000063
        :pswitch_2ae  #00000064
        :pswitch_2ae  #00000065
        :pswitch_2ae  #00000066
        :pswitch_2ae  #00000067
        :pswitch_2ae  #00000068
        :pswitch_2ae  #00000069
        :pswitch_2ae  #0000006a
        :pswitch_2ae  #0000006b
        :pswitch_2ae  #0000006c
        :pswitch_2ae  #0000006d
        :pswitch_2ae  #0000006e
        :pswitch_2ae  #0000006f
        :pswitch_2ae  #00000070
        :pswitch_2ae  #00000071
        :pswitch_2ae  #00000072
        :pswitch_2ae  #00000073
        :pswitch_2ae  #00000074
        :pswitch_2ae  #00000075
        :pswitch_2ae  #00000076
        :pswitch_2ae  #00000077
        :pswitch_2ae  #00000078
        :pswitch_2ae  #00000079
        :pswitch_2ae  #0000007a
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
