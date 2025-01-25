.class public Lorg/codehaus/groovy/antlr/java/JavaLexer;
.super Lgroovyjarjarantlr/CharScanner;

# interfaces
.implements Lorg/codehaus/groovy/antlr/java/JavaTokenTypes;
.implements Lgroovyjarjarantlr/TokenStream;


# static fields
.field public static final J0:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final J8:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final QX:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final XL:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final aM:Lgroovyjarjarantlr/collections/impl/BitSet;


# instance fields
.field protected Mr:I

.field private U2:Z

.field private a8:Z

.field protected j3:I

.field private lg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->we()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->J0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->J8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Ws()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->QX()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->XL()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method private static final J0()[J
    .registers 4

    const/16 v0, 0x800

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x40000002408L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_d
    const/16 v2, 0x3ff

    if-gt v1, v2, :cond_18

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    return-object v0
.end method

.method private static final J8()[J
    .registers 4

    const/16 v0, 0x800

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x8000002408L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_13
    const/16 v2, 0x3ff

    if-gt v1, v2, :cond_1e

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1e
    return-object v0
.end method

.method private static final QX()[J
    .registers 4

    const/16 v0, 0x800

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x400002408L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_13
    const/16 v2, 0x3ff

    if-gt v1, v2, :cond_1e

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1e
    return-object v0
.end method

.method private static final Ws()[J
    .registers 4

    const/16 v0, 0x800

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x2408

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_a
    const/16 v2, 0x3ff

    if-gt v1, v2, :cond_15

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    return-object v0
.end method

.method private static final XL()[J
    .registers 4

    const/16 v0, 0x401

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff000000000000L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x7e0000007eL

    aput-wide v2, v0, v1

    return-object v0
.end method

.method static synthetic j6(Lorg/codehaus/groovy/antlr/java/JavaLexer;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->lg:Z

    return p0
.end method

.method private static final we()[J
    .registers 4

    const/16 v0, 0x800

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x2408

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_a
    const/16 v2, 0x3fe

    if-gt v1, v2, :cond_15

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    const/16 v1, 0x3ff

    const-wide v2, 0x7fffffffffffffffL

    aput-wide v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public final BT(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "&&"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x8a

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final DW(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x62

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final EQ(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x5e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x8c

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final FH(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x5f

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final Hw(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x68

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final I(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x42

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final J0(Z)V
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

    invoke-virtual {p0, v2}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Mr(Z)V

    goto :goto_28

    :cond_19
    sget-object v3, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    :goto_28
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_49

    const/16 p1, 0xa0

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

.method public final J8(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x6e

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final KD(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x60

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final Mr(Z)V
    .registers 9

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_149

    const/16 v4, 0x27

    if-eq v3, v4, :cond_149

    if-eq v3, v1, :cond_145

    const/16 v1, 0x62

    if-eq v3, v1, :cond_145

    const/16 v1, 0x66

    if-eq v3, v1, :cond_145

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_145

    const/16 v1, 0x72

    if-eq v3, v1, :cond_145

    const/16 v1, 0x74

    if-eq v3, v1, :cond_145

    const/16 v1, 0x75

    if-eq v3, v1, :cond_112

    const/4 v1, 0x2

    const/16 v4, 0x37

    const/16 v5, 0x30

    packed-switch v3, :pswitch_data_16e

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

    invoke-virtual {p0, v3, v4}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_72

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_72

    sget-object v3, Lorg/codehaus/groovy/antlr/java/JavaLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_72

    :goto_6d
    invoke-virtual {p0, v5, v4}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto/16 :goto_14c

    :cond_72
    sget-object v1, Lorg/codehaus/groovy/antlr/java/JavaLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_80

    goto/16 :goto_14c

    :cond_80
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

    :pswitch_96  #0x30, 0x31, 0x32, 0x33
    const/16 v3, 0x33

    invoke-virtual {p0, v5, v3}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_ef

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_ef

    sget-object v3, Lorg/codehaus/groovy/antlr/java/JavaLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v6

    if-eqz v6, :cond_ef

    invoke-virtual {p0, v5, v4}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    if-lt v6, v5, :cond_cd

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    if-gt v6, v4, :cond_cd

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_cd

    goto :goto_6d

    :cond_cd
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_d9

    goto/16 :goto_14c

    :cond_d9
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

    :cond_ef
    sget-object v1, Lorg/codehaus/groovy/antlr/java/JavaLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_fc

    goto :goto_14c

    :cond_fc
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

    :cond_112
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_114
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-ne v5, v1, :cond_120

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_114

    :cond_120
    if-lt v4, v2, :cond_12f

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->er(Z)V

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->er(Z)V

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->er(Z)V

    invoke-virtual {p0, v3}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->er(Z)V

    goto :goto_14c

    :cond_12f
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

    :cond_145
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_14c

    :cond_149
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_14c
    if-eqz p1, :cond_16a

    const/16 p1, 0xa8

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

    goto :goto_16b

    :cond_16a
    const/4 p1, 0x0

    :goto_16b
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :pswitch_data_16e
    .packed-switch 0x30
        :pswitch_96  #00000030
        :pswitch_96  #00000031
        :pswitch_96  #00000032
        :pswitch_96  #00000033
        :pswitch_50  #00000034
        :pswitch_50  #00000035
        :pswitch_50  #00000036
        :pswitch_50  #00000037
    .end packed-switch
.end method

.method public final Mz(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x45

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final OW(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, ">>"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x4b

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final P8(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x63

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final QX(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "--"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x98

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final Qq(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x3e

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final SI(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "||"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x89

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final Sf(Z)V
    .registers 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v6, 0x45

    const/16 v10, 0x44

    const/16 v11, 0x46

    const/16 v12, 0x2e

    const/16 v13, 0x39

    const/4 v14, 0x0

    const/16 v15, 0x30

    packed-switch v0, :pswitch_data_3ca

    :pswitch_1d  #0x2f
    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :pswitch_33  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    packed-switch v0, :pswitch_data_3e6

    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :pswitch_50  #0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v0, 0x31

    invoke-virtual {v1, v0, v13}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    :goto_55
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-lt v0, v15, :cond_65

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-gt v0, v13, :cond_65

    invoke-virtual {v1, v15, v13}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_55

    :cond_65
    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v0, :cond_6f

    const/16 v16, 0x1

    goto/16 :goto_1b6

    :cond_6f
    const/16 v16, 0x0

    goto/16 :goto_1b6

    :pswitch_73  #0x30
    invoke-virtual {v1, v15}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v0, :cond_7f

    const/16 v16, 0x1

    goto :goto_81

    :cond_7f
    const/16 v16, 0x0

    :goto_81
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x78

    const/16 v7, 0x58

    if-eq v0, v7, :cond_17c

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-ne v0, v4, :cond_93

    goto/16 :goto_17c

    :cond_93
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-lt v0, v15, :cond_112

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-gt v0, v13, :cond_112

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->VH()I

    move-result v4

    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v7, v0, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    add-int/2addr v7, v3

    iput v7, v0, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    const/4 v0, 0x0

    :goto_ab
    :try_start_ab
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    if-lt v7, v15, :cond_bd

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    if-gt v7, v13, :cond_bd

    invoke-virtual {v1, v15, v13}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    :cond_bd
    if-lt v0, v3, :cond_ef

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v12, :cond_ea

    packed-switch v0, :pswitch_data_3fe

    packed-switch v0, :pswitch_data_408

    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    goto :goto_d6

    :pswitch_ce  #0x45, 0x65
    invoke-virtual {v1, v14}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->U2(Z)V

    goto :goto_ed

    :pswitch_d2  #0x44, 0x46, 0x64, 0x66
    invoke-virtual {v1, v14}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->a8(Z)V

    goto :goto_ed

    :goto_d6
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v9

    invoke-direct {v0, v7, v8, v5, v9}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :cond_ea
    invoke-virtual {v1, v12}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_ed
    const/4 v0, 0x1

    goto :goto_107

    :cond_ef
    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v9

    invoke-direct {v0, v5, v7, v8, v9}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0
    :try_end_105
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_ab .. :try_end_105} :catch_105

    :catch_105
    move-exception v0

    const/4 v0, 0x0

    :goto_107
    invoke-virtual {v1, v4}, Lgroovyjarjarantlr/CharScanner;->FH(I)V

    iget-object v4, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v5, v4, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    sub-int/2addr v5, v3

    iput v5, v4, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    goto :goto_113

    :cond_112
    const/4 v0, 0x0

    :goto_113
    if-eqz v0, :cond_142

    const/4 v0, 0x0

    :goto_116
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    if-lt v4, v15, :cond_128

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    if-gt v4, v13, :cond_128

    invoke-virtual {v1, v15, v13}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_116

    :cond_128
    if-lt v0, v3, :cond_12c

    goto/16 :goto_1b6

    :cond_12c
    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :cond_142
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-lt v0, v15, :cond_1b6

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x37

    if-gt v0, v4, :cond_1b6

    const/4 v0, 0x0

    :goto_151
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-lt v5, v15, :cond_163

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-gt v5, v4, :cond_163

    invoke-virtual {v1, v15, v4}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_151

    :cond_163
    if-lt v0, v3, :cond_166

    goto :goto_1b6

    :cond_166
    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :cond_17c
    :goto_17c
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v7, :cond_19e

    if-ne v0, v4, :cond_188

    invoke-virtual {v1, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_1a1

    :cond_188
    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :cond_19e
    invoke-virtual {v1, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_1a1
    const/4 v0, 0x0

    :goto_1a2
    sget-object v4, Lorg/codehaus/groovy/antlr/java/JavaLexer;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_1b4

    invoke-virtual {v1, v14}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->er(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a2

    :cond_1b4
    if-lt v0, v3, :cond_2eb

    :cond_1b6
    :goto_1b6
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x6c

    const/16 v5, 0x4c

    if-eq v0, v5, :cond_2b8

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-ne v0, v4, :cond_1c8

    goto/16 :goto_2b8

    :cond_1c8
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v12, :cond_1f8

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v10, :cond_1f8

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v6, :cond_1f8

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v11, :cond_1f8

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x64

    if-eq v0, v4, :cond_1f8

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x65

    if-eq v0, v4, :cond_1f8

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x66

    if-ne v0, v4, :cond_2e7

    :cond_1f8
    if-eqz v16, :cond_2e7

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v12, :cond_253

    packed-switch v0, :pswitch_data_412

    packed-switch v0, :pswitch_data_41c

    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :pswitch_21c  #0x45, 0x65
    invoke-virtual {v1, v14}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->U2(Z)V

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v10, :cond_23b

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v11, :cond_23b

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x64

    if-eq v0, v4, :cond_23b

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x66

    if-ne v0, v4, :cond_29f

    :cond_23b
    invoke-virtual {v1, v3}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->a8(Z)V

    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    iget-object v3, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v3, v3, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v3, :cond_29f

    goto :goto_2a0

    :pswitch_247  #0x44, 0x46, 0x64, 0x66
    invoke-virtual {v1, v3}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->a8(Z)V

    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    iget-object v3, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v3, v3, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v3, :cond_29f

    goto :goto_2a0

    :cond_253
    invoke-virtual {v1, v12}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_256
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-lt v0, v15, :cond_266

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-gt v0, v13, :cond_266

    invoke-virtual {v1, v15, v13}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_256

    :cond_266
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v6, :cond_274

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x65

    if-ne v0, v4, :cond_277

    :cond_274
    invoke-virtual {v1, v14}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->U2(Z)V

    :cond_277
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v10, :cond_293

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v11, :cond_293

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x64

    if-eq v0, v4, :cond_293

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v4, 0x66

    if-ne v0, v4, :cond_29f

    :cond_293
    invoke-virtual {v1, v3}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->a8(Z)V

    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    iget-object v3, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v3, v3, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v3, :cond_29f

    goto :goto_2a0

    :cond_29f
    const/4 v0, 0x0

    :goto_2a0
    iget-object v3, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v3, v3, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v3, :cond_2e7

    if-eqz v0, :cond_380

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_380

    goto/16 :goto_37d

    :cond_2b8
    :goto_2b8
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v5, :cond_2da

    if-ne v0, v4, :cond_2c4

    invoke-virtual {v1, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_2dd

    :cond_2c4
    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :cond_2da
    invoke-virtual {v1, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_2dd
    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v0, :cond_2e7

    const/16 v4, 0xa3

    goto/16 :goto_3a6

    :cond_2e7
    const/16 v4, 0x9f

    goto/16 :goto_3a6

    :cond_2eb
    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :pswitch_301  #0x2e
    invoke-virtual {v1, v12}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v0, :cond_30d

    const/16 v4, 0x44

    goto :goto_30f

    :cond_30d
    const/16 v4, 0x9f

    :goto_30f
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    packed-switch v0, :pswitch_data_426

    :pswitch_316  #0x2f
    goto/16 :goto_3a6

    :pswitch_318  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/4 v0, 0x0

    :goto_319
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-lt v5, v15, :cond_32b

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v5

    if-gt v5, v13, :cond_32b

    invoke-virtual {v1, v15, v13}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_319

    :cond_32b
    if-lt v0, v3, :cond_383

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v6, :cond_33b

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v5, 0x65

    if-ne v0, v5, :cond_33e

    :cond_33b
    invoke-virtual {v1, v14}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->U2(Z)V

    :cond_33e
    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v10, :cond_35a

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-eq v0, v11, :cond_35a

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v5, 0x64

    if-eq v0, v5, :cond_35a

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v5, 0x66

    if-ne v0, v5, :cond_366

    :cond_35a
    invoke-virtual {v1, v3}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->a8(Z)V

    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    iget-object v3, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v3, v3, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v3, :cond_366

    goto :goto_367

    :cond_366
    const/4 v0, 0x0

    :goto_367
    iget-object v3, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v3, v3, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v3, :cond_3a6

    if-eqz v0, :cond_380

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_380

    :goto_37d
    const/16 v4, 0xa2

    goto :goto_3a6

    :cond_380
    const/16 v4, 0xa4

    goto :goto_3a6

    :cond_383
    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :pswitch_399  #0x2e
    const-string v0, ".."

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v0, v1, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v0, :cond_3a6

    const/16 v4, 0x6d

    :cond_3a6
    :goto_3a6
    if-eqz p1, :cond_3c5

    const/4 v0, -0x1

    if-eq v4, v0, :cond_3c5

    invoke-virtual {v1, v4}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v7

    new-instance v0, Ljava/lang/String;

    iget-object v3, v1, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v3

    iget-object v4, v1, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {v0, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v0}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_3c6

    :cond_3c5
    const/4 v7, 0x0

    :goto_3c6
    iput-object v7, v1, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    nop

    :pswitch_data_3ca
    .packed-switch 0x2e
        :pswitch_301  #0000002e
        :pswitch_1d  #0000002f
        :pswitch_33  #00000030
        :pswitch_33  #00000031
        :pswitch_33  #00000032
        :pswitch_33  #00000033
        :pswitch_33  #00000034
        :pswitch_33  #00000035
        :pswitch_33  #00000036
        :pswitch_33  #00000037
        :pswitch_33  #00000038
        :pswitch_33  #00000039
    .end packed-switch

    :pswitch_data_3e6
    .packed-switch 0x30
        :pswitch_73  #00000030
        :pswitch_50  #00000031
        :pswitch_50  #00000032
        :pswitch_50  #00000033
        :pswitch_50  #00000034
        :pswitch_50  #00000035
        :pswitch_50  #00000036
        :pswitch_50  #00000037
        :pswitch_50  #00000038
        :pswitch_50  #00000039
    .end packed-switch

    :pswitch_data_3fe
    .packed-switch 0x44
        :pswitch_d2  #00000044
        :pswitch_ce  #00000045
        :pswitch_d2  #00000046
    .end packed-switch

    :pswitch_data_408
    .packed-switch 0x64
        :pswitch_d2  #00000064
        :pswitch_ce  #00000065
        :pswitch_d2  #00000066
    .end packed-switch

    :pswitch_data_412
    .packed-switch 0x44
        :pswitch_247  #00000044
        :pswitch_21c  #00000045
        :pswitch_247  #00000046
    .end packed-switch

    :pswitch_data_41c
    .packed-switch 0x64
        :pswitch_247  #00000064
        :pswitch_21c  #00000065
        :pswitch_247  #00000066
    .end packed-switch

    :pswitch_data_426
    .packed-switch 0x2e
        :pswitch_399  #0000002e
        :pswitch_316  #0000002f
        :pswitch_318  #00000030
        :pswitch_318  #00000031
        :pswitch_318  #00000032
        :pswitch_318  #00000033
        :pswitch_318  #00000034
        :pswitch_318  #00000035
        :pswitch_318  #00000036
        :pswitch_318  #00000037
        :pswitch_318  #00000038
        :pswitch_318  #00000039
    .end packed-switch
.end method

.method protected final U2(Z)V
    .registers 8

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x45

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x65

    if-ne v2, v3, :cond_14

    goto :goto_2a

    :cond_14
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

    :cond_2a
    :goto_2a
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_52

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_52

    packed-switch v2, :pswitch_data_a8

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

    :cond_52
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :pswitch_55  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/4 v2, 0x0

    :goto_56
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_6c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v5, 0x39

    if-gt v3, v5, :cond_6c

    invoke-virtual {p0, v4, v5}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_6c
    if-lt v2, v1, :cond_90

    if-eqz p1, :cond_8c

    const/16 p1, 0xab

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

    goto :goto_8d

    :cond_8c
    const/4 p1, 0x0

    :goto_8d
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_90
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

    goto :goto_a7

    :goto_a6
    throw p1

    :goto_a7
    goto :goto_a6

    :pswitch_data_a8
    .packed-switch 0x30
        :pswitch_55  #00000030
        :pswitch_55  #00000031
        :pswitch_55  #00000032
        :pswitch_55  #00000033
        :pswitch_55  #00000034
        :pswitch_55  #00000035
        :pswitch_55  #00000036
        :pswitch_55  #00000037
        :pswitch_55  #00000038
        :pswitch_55  #00000039
    .end packed-switch
.end method

.method public final VH(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x7c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x8b

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final Ws(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x49

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final XG(Z)V
    .registers 9

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_af

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-eq v3, v5, :cond_69

    const/16 v6, 0xc

    if-eq v3, v6, :cond_65

    if-eq v3, v4, :cond_69

    const/16 v4, 0x20

    if-eq v3, v4, :cond_af

    if-lt v1, v2, :cond_4f

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v1, v1, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    const/4 v2, -0x1

    if-nez v1, :cond_2b

    const/4 v1, -0x1

    goto :goto_2d

    :cond_2b
    const/16 v1, 0xa5

    :goto_2d
    if-eqz p1, :cond_4b

    if-eq v1, v2, :cond_4b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

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

    goto :goto_4c

    :cond_4b
    const/4 p1, 0x0

    :goto_4c
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_4f
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

    :cond_65
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_b2

    :cond_69
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_7c

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v5, :cond_7c

    const-string v2, "\r\n"

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    goto :goto_8f

    :cond_7c
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_86

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_8f

    :cond_86
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v5, :cond_99

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_8f
    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v2, v2, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v2, :cond_b2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto :goto_b2

    :cond_99
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

    :cond_af
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :cond_b2
    :goto_b2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7
.end method

.method public final XL(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x95

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final XX(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x56

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final Zo(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x7e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x99

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final a8(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_32

    const/16 v3, 0x46

    if-eq v2, v3, :cond_32

    const/16 v3, 0x64

    if-eq v2, v3, :cond_32

    const/16 v3, 0x66

    if-ne v2, v3, :cond_1c

    goto :goto_32

    :cond_1c
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

    :cond_32
    :goto_32
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_53

    const/16 p1, 0xac

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

    goto :goto_54

    :cond_53
    const/4 p1, 0x0

    :goto_54
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final aM(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "/="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x81

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final aj(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "<<="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x85

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final br(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, ">>="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x83

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final ca(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x64

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final cb(Z)V
    .registers 12

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "/*"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :cond_b
    :goto_b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0xd

    const v5, 0xffff

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-ne v2, v4, :cond_47

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v3, :cond_47

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_47

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_47

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    if-lt v8, v7, :cond_47

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_47

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v1, v1, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v1, :cond_b

    goto :goto_aa

    :cond_47
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v8, 0x2a

    if-ne v2, v8, :cond_73

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_73

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_73

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_73

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_73

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v9, 0x2f

    if-eq v2, v9, :cond_73

    invoke-virtual {p0, v8}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_b

    :cond_73
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_9b

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_9b

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_9b

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v7, :cond_9b

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v5, :cond_9b

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v1, v1, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v1, :cond_b

    goto :goto_aa

    :cond_9b
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v3, :cond_af

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v1, v1, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v1, :cond_b

    :goto_aa
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto/16 :goto_b

    :cond_af
    sget-object v2, Lorg/codehaus/groovy/antlr/java/JavaLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto/16 :goto_b

    :cond_c0
    const-string v1, "*/"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v1, v1, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    const/4 v2, -0x1

    if-nez v1, :cond_ce

    const/4 v1, -0x1

    goto :goto_d0

    :cond_ce
    const/16 v1, 0xa7

    :goto_d0
    if-eqz p1, :cond_ee

    if-eq v1, v2, :cond_ee

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

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

    goto :goto_ef

    :cond_ee
    const/4 p1, 0x0

    :goto_ef
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final cn(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x94

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final dx(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x96

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final ef(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "!="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x8d

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final ei(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "<="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x8f

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final er(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    packed-switch v2, :pswitch_data_5e

    packed-switch v2, :pswitch_data_76

    packed-switch v2, :pswitch_data_86

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

    :pswitch_2a  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v1, 0x30

    const/16 v2, 0x39

    :goto_2e
    invoke-virtual {p0, v1, v2}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_3c

    :pswitch_32  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46
    const/16 v1, 0x41

    const/16 v2, 0x46

    goto :goto_2e

    :pswitch_37  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    const/16 v1, 0x61

    const/16 v2, 0x66

    goto :goto_2e

    :goto_3c
    if-eqz p1, :cond_5a

    const/16 p1, 0xa9

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

    goto :goto_5b

    :cond_5a
    const/4 p1, 0x0

    :goto_5b
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :pswitch_data_5e
    .packed-switch 0x30
        :pswitch_2a  #00000030
        :pswitch_2a  #00000031
        :pswitch_2a  #00000032
        :pswitch_2a  #00000033
        :pswitch_2a  #00000034
        :pswitch_2a  #00000035
        :pswitch_2a  #00000036
        :pswitch_2a  #00000037
        :pswitch_2a  #00000038
        :pswitch_2a  #00000039
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x41
        :pswitch_32  #00000041
        :pswitch_32  #00000042
        :pswitch_32  #00000043
        :pswitch_32  #00000044
        :pswitch_32  #00000045
        :pswitch_32  #00000046
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x61
        :pswitch_37  #00000061
        :pswitch_37  #00000062
        :pswitch_37  #00000063
        :pswitch_37  #00000064
        :pswitch_37  #00000065
        :pswitch_37  #00000066
    .end packed-switch
.end method

.method public final g3(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "+="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x7e

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final gW(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "++"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x97

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final gn(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "|="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x88

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final j3(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "=="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x8e

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final kQ(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "*="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x80

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final lg(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, ">="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x90

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final lp(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "//"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_b
    sget-object v1, Lorg/codehaus/groovy/antlr/java/JavaLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_b

    :cond_1c
    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v1, v1, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    const/4 v2, -0x1

    if-nez v1, :cond_25

    const/4 v1, -0x1

    goto :goto_27

    :cond_25
    const/16 v1, 0xa6

    :goto_27
    if-eqz p1, :cond_45

    if-eq v1, v2, :cond_45

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

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

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    :goto_46
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 16

    :goto_0
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->u7()V

    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_30e

    const/16 v2, 0xa

    if-eq v1, v2, :cond_30e

    const/16 v2, 0xc

    if-eq v1, v2, :cond_30e

    const/16 v2, 0xd

    if-eq v1, v2, :cond_30e

    const/16 v2, 0x20

    if-eq v1, v2, :cond_30e

    const/16 v2, 0x22

    if-eq v1, v2, :cond_309

    const/16 v2, 0x24

    if-eq v1, v2, :cond_304

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2ff

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_2fa

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_2f5

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_304

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2f0

    const/16 v2, 0x7e

    if-eq v1, v2, :cond_2eb

    packed-switch v1, :pswitch_data_34a

    packed-switch v1, :pswitch_data_354

    packed-switch v1, :pswitch_data_370

    packed-switch v1, :pswitch_data_3ae

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    goto :goto_74

    :pswitch_4d  #0x29
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->x9(Z)V

    :goto_50
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    goto/16 :goto_313

    :pswitch_54  #0x28
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->KD(Z)V

    goto :goto_50

    :pswitch_58  #0x27
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->J0(Z)V

    goto :goto_50

    :pswitch_5c  #0x3b
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Qq(Z)V

    goto :goto_50

    :pswitch_60  #0x3a
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->J8(Z)V

    goto :goto_50

    :pswitch_64  #0x5b
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->vy(Z)V

    goto :goto_50

    :pswitch_68  #0x40
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->FH(Z)V

    goto :goto_50

    :pswitch_6c  #0x3f
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Mz(Z)V

    goto :goto_50

    :pswitch_70  #0x7b
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->P8(Z)V

    goto :goto_50

    :goto_74
    const/4 v2, 0x3

    const/16 v3, 0x3e

    const/16 v4, 0x3d

    const/4 v5, 0x2

    if-ne v1, v3, :cond_93

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_93

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_93

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_93

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->tp(Z)V

    goto :goto_50

    :cond_93
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_a9

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_a9

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_a9

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->br(Z)V

    goto :goto_50

    :cond_a9
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_bf

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_bf

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_bf

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->u7(Z)V

    goto :goto_50

    :cond_bf
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v6, 0x3c

    if-ne v1, v6, :cond_d8

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v6, :cond_d8

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_d8

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->aj(Z)V

    goto/16 :goto_50

    :cond_d8
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_e9

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_e9

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->j3(Z)V

    goto/16 :goto_50

    :cond_e9
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_fc

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_fc

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->ef(Z)V

    goto/16 :goto_50

    :cond_fc
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v7, 0x2f

    if-ne v1, v7, :cond_10f

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_10f

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->aM(Z)V

    goto/16 :goto_50

    :cond_10f
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v8, 0x2b

    if-ne v1, v8, :cond_122

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_122

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->g3(Z)V

    goto/16 :goto_50

    :cond_122
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v8, :cond_133

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v8, :cond_133

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->gW(Z)V

    goto/16 :goto_50

    :cond_133
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v9, 0x2d

    if-ne v1, v9, :cond_146

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_146

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->sh(Z)V

    goto/16 :goto_50

    :cond_146
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v9, :cond_157

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v9, :cond_157

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->QX(Z)V

    goto/16 :goto_50

    :cond_157
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v10, 0x2a

    if-ne v1, v10, :cond_16a

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_16a

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->kQ(Z)V

    goto/16 :goto_50

    :cond_16a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v11, 0x25

    if-ne v1, v11, :cond_17d

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_17d

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->sG(Z)V

    goto/16 :goto_50

    :cond_17d
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_18e

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_18e

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->OW(Z)V

    goto/16 :goto_50

    :cond_18e
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_19f

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_19f

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->lg(Z)V

    goto/16 :goto_50

    :cond_19f
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v6, :cond_1b0

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v6, :cond_1b0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->sy(Z)V

    goto/16 :goto_50

    :cond_1b0
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v6, :cond_1c1

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_1c1

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->ei(Z)V

    goto/16 :goto_50

    :cond_1c1
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v12, 0x5e

    if-ne v1, v12, :cond_1d4

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_1d4

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->we(Z)V

    goto/16 :goto_50

    :cond_1d4
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v13, 0x7c

    if-ne v1, v13, :cond_1e7

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_1e7

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->gn(Z)V

    goto/16 :goto_50

    :cond_1e7
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v13, :cond_1f8

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v13, :cond_1f8

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->SI(Z)V

    goto/16 :goto_50

    :cond_1f8
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v14, 0x26

    if-ne v1, v14, :cond_20b

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_20b

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->v5(Z)V

    goto/16 :goto_50

    :cond_20b
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v14, :cond_21c

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v14, :cond_21c

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->BT(Z)V

    goto/16 :goto_50

    :cond_21c
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v7, :cond_22d

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v7, :cond_22d

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->lp(Z)V

    goto/16 :goto_50

    :cond_22d
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v7, :cond_23e

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v10, :cond_23e

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->cb(Z)V

    goto/16 :goto_50

    :cond_23e
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_249

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->DW(Z)V

    goto/16 :goto_50

    :cond_249
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v2, :cond_254

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->nw(Z)V

    goto/16 :goto_50

    :cond_254
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v7, :cond_25f

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->XL(Z)V

    goto/16 :goto_50

    :cond_25f
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v8, :cond_26a

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->vJ(Z)V

    goto/16 :goto_50

    :cond_26a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v9, :cond_275

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->cn(Z)V

    goto/16 :goto_50

    :cond_275
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v10, :cond_280

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->XX(Z)V

    goto/16 :goto_50

    :cond_280
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v11, :cond_28b

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->dx(Z)V

    goto/16 :goto_50

    :cond_28b
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_296

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->rN(Z)V

    goto/16 :goto_50

    :cond_296
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v6, :cond_2a1

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->ro(Z)V

    goto/16 :goto_50

    :cond_2a1
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v12, :cond_2ac

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->EQ(Z)V

    goto/16 :goto_50

    :cond_2ac
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v13, :cond_2b7

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->VH(Z)V

    goto/16 :goto_50

    :cond_2b7
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v14, :cond_2c2

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Hw(Z)V

    goto/16 :goto_50

    :cond_2c2
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_2d5

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->EQ()V

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    goto :goto_313

    :cond_2d5
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

    :cond_2eb
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Zo(Z)V

    goto/16 :goto_50

    :cond_2f0
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->ca(Z)V

    goto/16 :goto_50

    :cond_2f5
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->I(Z)V

    goto/16 :goto_50

    :cond_2fa
    :pswitch_2fa  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Sf(Z)V

    goto/16 :goto_50

    :cond_2ff
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Ws(Z)V

    goto/16 :goto_50

    :cond_304
    :pswitch_304  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->yS(Z)V

    goto/16 :goto_50

    :cond_309
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->yO(Z)V

    goto/16 :goto_50

    :cond_30e
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->XG(Z)V

    goto/16 :goto_50

    :goto_313
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    if-nez v0, :cond_319

    goto/16 :goto_0

    :cond_319
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/Token;->FH(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;
    :try_end_326
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_4 .. :try_end_326} :catch_329
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_4 .. :try_end_326} :catch_327

    return-object v0

    :catch_327
    move-exception v0

    goto :goto_330

    :catch_329
    move-exception v0

    :try_start_32a
    new-instance v1, Lgroovyjarjarantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamRecognitionException;-><init>(Lgroovyjarjarantlr/RecognitionException;)V

    throw v1
    :try_end_330
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_32a .. :try_end_330} :catch_327

    :goto_330
    instance-of v1, v0, Lgroovyjarjarantlr/CharStreamIOException;

    if-eqz v1, :cond_33e

    new-instance v1, Lgroovyjarjarantlr/TokenStreamIOException;

    check-cast v0, Lgroovyjarjarantlr/CharStreamIOException;

    iget-object v0, v0, Lgroovyjarjarantlr/CharStreamIOException;->j6:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_33e
    new-instance v1, Lgroovyjarjarantlr/TokenStreamException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    goto :goto_349

    :goto_348
    throw v1

    :goto_349
    goto :goto_348

    :pswitch_data_34a
    .packed-switch 0x27
        :pswitch_58  #00000027
        :pswitch_54  #00000028
        :pswitch_4d  #00000029
    .end packed-switch

    :pswitch_data_354
    .packed-switch 0x30
        :pswitch_2fa  #00000030
        :pswitch_2fa  #00000031
        :pswitch_2fa  #00000032
        :pswitch_2fa  #00000033
        :pswitch_2fa  #00000034
        :pswitch_2fa  #00000035
        :pswitch_2fa  #00000036
        :pswitch_2fa  #00000037
        :pswitch_2fa  #00000038
        :pswitch_2fa  #00000039
        :pswitch_60  #0000003a
        :pswitch_5c  #0000003b
    .end packed-switch

    :pswitch_data_370
    .packed-switch 0x3f
        :pswitch_6c  #0000003f
        :pswitch_68  #00000040
        :pswitch_304  #00000041
        :pswitch_304  #00000042
        :pswitch_304  #00000043
        :pswitch_304  #00000044
        :pswitch_304  #00000045
        :pswitch_304  #00000046
        :pswitch_304  #00000047
        :pswitch_304  #00000048
        :pswitch_304  #00000049
        :pswitch_304  #0000004a
        :pswitch_304  #0000004b
        :pswitch_304  #0000004c
        :pswitch_304  #0000004d
        :pswitch_304  #0000004e
        :pswitch_304  #0000004f
        :pswitch_304  #00000050
        :pswitch_304  #00000051
        :pswitch_304  #00000052
        :pswitch_304  #00000053
        :pswitch_304  #00000054
        :pswitch_304  #00000055
        :pswitch_304  #00000056
        :pswitch_304  #00000057
        :pswitch_304  #00000058
        :pswitch_304  #00000059
        :pswitch_304  #0000005a
        :pswitch_64  #0000005b
    .end packed-switch

    :pswitch_data_3ae
    .packed-switch 0x61
        :pswitch_304  #00000061
        :pswitch_304  #00000062
        :pswitch_304  #00000063
        :pswitch_304  #00000064
        :pswitch_304  #00000065
        :pswitch_304  #00000066
        :pswitch_304  #00000067
        :pswitch_304  #00000068
        :pswitch_304  #00000069
        :pswitch_304  #0000006a
        :pswitch_304  #0000006b
        :pswitch_304  #0000006c
        :pswitch_304  #0000006d
        :pswitch_304  #0000006e
        :pswitch_304  #0000006f
        :pswitch_304  #00000070
        :pswitch_304  #00000071
        :pswitch_304  #00000072
        :pswitch_304  #00000073
        :pswitch_304  #00000074
        :pswitch_304  #00000075
        :pswitch_304  #00000076
        :pswitch_304  #00000077
        :pswitch_304  #00000078
        :pswitch_304  #00000079
        :pswitch_304  #0000007a
        :pswitch_70  #0000007b
    .end packed-switch
.end method

.method public final nw(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x9a

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final rN(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, ">"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x4a

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final ro(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x48

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final sG(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "%="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x82

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final sh(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "-="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x7f

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final sy(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "<<"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x92

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final tp(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, ">>>="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x84

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final u7(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, ">>>"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x4c

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final v5(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "&="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x86

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final vJ(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x93

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final vy(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x41

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final we(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "^="

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x87

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final x9(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x61

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final yO(Z)V
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

    invoke-virtual {p0, v2}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Mr(Z)V

    goto :goto_b

    :cond_19
    sget-object v3, Lorg/codehaus/groovy/antlr/java/JavaLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_b

    :cond_29
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_4a

    const/16 p1, 0xa1

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

.method public final yS(Z)V
    .registers 12

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

    const/16 v8, 0x24

    if-eq v2, v8, :cond_43

    if-eq v2, v7, :cond_3f

    packed-switch v2, :pswitch_data_d0

    packed-switch v2, :pswitch_data_108

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

    :pswitch_37  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a
    invoke-virtual {p0, v6, v5}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_46

    :pswitch_3b  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v4, v3}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_46

    :cond_3f
    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_46

    :cond_43
    invoke-virtual {p0, v8}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_46
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-eq v2, v8, :cond_43

    if-eq v2, v7, :cond_3f

    packed-switch v2, :pswitch_data_140

    packed-switch v2, :pswitch_data_158

    packed-switch v2, :pswitch_data_190

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v1, v1, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    const/16 v2, 0x43

    if-nez v1, :cond_a8

    iget-boolean v1, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->U2:Z

    if-eqz v1, :cond_88

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v3

    iget-object v4, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    const-string v3, "assert"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    const/16 v2, 0x78

    goto :goto_88

    :pswitch_80  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v2, 0x30

    const/16 v9, 0x39

    invoke-virtual {p0, v2, v9}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_46

    :cond_88
    :goto_88
    iget-boolean v1, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->a8:Z

    if-eqz v1, :cond_a8

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v3

    iget-object v4, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    const-string v3, "enum"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    const/16 v2, 0x67

    :cond_a8
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->Zo(I)I

    move-result v1

    if-eqz p1, :cond_cb

    const/4 p1, -0x1

    if-eq v1, p1, :cond_cb

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

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

    goto :goto_cc

    :cond_cb
    const/4 p1, 0x0

    :goto_cc
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    nop

    :pswitch_data_d0
    .packed-switch 0x41
        :pswitch_37  #00000041
        :pswitch_37  #00000042
        :pswitch_37  #00000043
        :pswitch_37  #00000044
        :pswitch_37  #00000045
        :pswitch_37  #00000046
        :pswitch_37  #00000047
        :pswitch_37  #00000048
        :pswitch_37  #00000049
        :pswitch_37  #0000004a
        :pswitch_37  #0000004b
        :pswitch_37  #0000004c
        :pswitch_37  #0000004d
        :pswitch_37  #0000004e
        :pswitch_37  #0000004f
        :pswitch_37  #00000050
        :pswitch_37  #00000051
        :pswitch_37  #00000052
        :pswitch_37  #00000053
        :pswitch_37  #00000054
        :pswitch_37  #00000055
        :pswitch_37  #00000056
        :pswitch_37  #00000057
        :pswitch_37  #00000058
        :pswitch_37  #00000059
        :pswitch_37  #0000005a
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x61
        :pswitch_3b  #00000061
        :pswitch_3b  #00000062
        :pswitch_3b  #00000063
        :pswitch_3b  #00000064
        :pswitch_3b  #00000065
        :pswitch_3b  #00000066
        :pswitch_3b  #00000067
        :pswitch_3b  #00000068
        :pswitch_3b  #00000069
        :pswitch_3b  #0000006a
        :pswitch_3b  #0000006b
        :pswitch_3b  #0000006c
        :pswitch_3b  #0000006d
        :pswitch_3b  #0000006e
        :pswitch_3b  #0000006f
        :pswitch_3b  #00000070
        :pswitch_3b  #00000071
        :pswitch_3b  #00000072
        :pswitch_3b  #00000073
        :pswitch_3b  #00000074
        :pswitch_3b  #00000075
        :pswitch_3b  #00000076
        :pswitch_3b  #00000077
        :pswitch_3b  #00000078
        :pswitch_3b  #00000079
        :pswitch_3b  #0000007a
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0x30
        :pswitch_80  #00000030
        :pswitch_80  #00000031
        :pswitch_80  #00000032
        :pswitch_80  #00000033
        :pswitch_80  #00000034
        :pswitch_80  #00000035
        :pswitch_80  #00000036
        :pswitch_80  #00000037
        :pswitch_80  #00000038
        :pswitch_80  #00000039
    .end packed-switch

    :pswitch_data_158
    .packed-switch 0x41
        :pswitch_37  #00000041
        :pswitch_37  #00000042
        :pswitch_37  #00000043
        :pswitch_37  #00000044
        :pswitch_37  #00000045
        :pswitch_37  #00000046
        :pswitch_37  #00000047
        :pswitch_37  #00000048
        :pswitch_37  #00000049
        :pswitch_37  #0000004a
        :pswitch_37  #0000004b
        :pswitch_37  #0000004c
        :pswitch_37  #0000004d
        :pswitch_37  #0000004e
        :pswitch_37  #0000004f
        :pswitch_37  #00000050
        :pswitch_37  #00000051
        :pswitch_37  #00000052
        :pswitch_37  #00000053
        :pswitch_37  #00000054
        :pswitch_37  #00000055
        :pswitch_37  #00000056
        :pswitch_37  #00000057
        :pswitch_37  #00000058
        :pswitch_37  #00000059
        :pswitch_37  #0000005a
    .end packed-switch

    :pswitch_data_190
    .packed-switch 0x61
        :pswitch_3b  #00000061
        :pswitch_3b  #00000062
        :pswitch_3b  #00000063
        :pswitch_3b  #00000064
        :pswitch_3b  #00000065
        :pswitch_3b  #00000066
        :pswitch_3b  #00000067
        :pswitch_3b  #00000068
        :pswitch_3b  #00000069
        :pswitch_3b  #0000006a
        :pswitch_3b  #0000006b
        :pswitch_3b  #0000006c
        :pswitch_3b  #0000006d
        :pswitch_3b  #0000006e
        :pswitch_3b  #0000006f
        :pswitch_3b  #00000070
        :pswitch_3b  #00000071
        :pswitch_3b  #00000072
        :pswitch_3b  #00000073
        :pswitch_3b  #00000074
        :pswitch_3b  #00000075
        :pswitch_3b  #00000076
        :pswitch_3b  #00000077
        :pswitch_3b  #00000078
        :pswitch_3b  #00000079
        :pswitch_3b  #0000007a
    .end packed-switch
.end method
