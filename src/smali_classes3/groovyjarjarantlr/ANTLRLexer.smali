.class public Lgroovyjarjarantlr/ANTLRLexer;
.super Lgroovyjarjarantlr/CharScanner;

# interfaces
.implements Lgroovyjarjarantlr/ANTLRTokenTypes;
.implements Lgroovyjarjarantlr/TokenStream;


# static fields
.field public static final J0:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final J8:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final QX:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final XL:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final aM:Lgroovyjarjarantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRLexer;->we()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRLexer;->J0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRLexer;->J8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRLexer;->Ws()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRLexer;->QX()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRLexer;->XL()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRLexer;->aM:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method private static final J0()[J
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

.method private static final J8()[J
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

.method private static final QX()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x8000000008L

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

.method private static final Ws()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x8400002408L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x28000001

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

.method private static final XL()[J
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

.method private static final we()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x2408

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_a
    const/4 v2, 0x3

    if-gt v1, v2, :cond_14

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    return-object v0
.end method


# virtual methods
.method public final BT(Z)V
    .registers 8

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->Ws(Z)I

    move-result v2

    const/16 v3, 0x33

    const/4 v4, 0x1

    const/16 v5, 0x7b

    if-ne v2, v3, :cond_21

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->sh(Z)V

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v5, :cond_32

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/16 v2, 0xe

    goto :goto_32

    :cond_21
    const/4 v3, 0x4

    if-ne v2, v3, :cond_32

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->sh(Z)V

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v5, :cond_32

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/16 v2, 0x17

    :cond_32
    :goto_32
    if-eqz p1, :cond_51

    const/4 p1, -0x1

    if-eq v2, p1, :cond_51

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

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

    goto :goto_52

    :cond_51
    const/4 p1, 0x0

    :goto_52
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final DW(Z)V
    .registers 9

    iget-object p1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result p1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/ANTLRLexer;->aM(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v3, 0x7

    const/16 v4, 0x3f

    if-ne v2, v4, :cond_22

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/16 v2, 0x2b

    goto :goto_23

    :cond_22
    const/4 v2, 0x7

    :goto_23
    const-string v4, "{"

    if-ne v2, v3, :cond_2e

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Zo()Ljava/lang/String;

    move-result-object v3

    const-string v5, "}"

    goto :goto_34

    :cond_2e
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Zo()Ljava/lang/String;

    move-result-object v3

    const-string v5, "}?"

    :goto_34
    invoke-static {v3, v4, v5}, Lgroovyjarjarantlr/StringUtils;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->FH(Ljava/lang/String;)V

    new-instance v3, Lgroovyjarjarantlr/CommonToken;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v5

    iget-object v6, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-direct {v4, v5, p1, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v3, v2, v4}, Lgroovyjarjarantlr/CommonToken;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lgroovyjarjarantlr/CommonToken;->DW(I)V

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/CommonToken;->j6(I)V

    iput-object v3, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final EQ(Z)V
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_1d

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->P8(Z)V

    const/16 v1, 0x35

    goto :goto_34

    :cond_1d
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_5c

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_5c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->XL(Z)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v1}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v1

    :goto_34
    const/16 v2, 0x8

    const/4 v3, -0x1

    if-eq v1, v2, :cond_3a

    const/4 v1, -0x1

    :cond_3a
    if-eqz p1, :cond_58

    if-eq v1, v3, :cond_58

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

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    :goto_59
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_5c
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

.method public final FH(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->j3(Z)V

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Zo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lgroovyjarjarantlr/StringUtils;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(Ljava/lang/String;)V

    if-eqz p1, :cond_37

    const/16 p1, 0x22

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

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final Hw(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final J0(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "=>"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x30

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

.method public final J8(Z)V
    .registers 8

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1e

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v5, 0x39

    if-gt v3, v5, :cond_1e

    invoke-virtual {p0, v4, v5}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    if-lt v1, v2, :cond_42

    if-eqz p1, :cond_3e

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

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    :goto_3f
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_42
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

    goto :goto_59

    :goto_58
    throw p1

    :goto_59
    goto :goto_58
.end method

.method public final KD(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "#("

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/16 p1, 0x2c

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

.method public final Mr(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x7e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x2a

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

.method protected final P8(Z)V
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "//"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_b
    sget-object v1, Lgroovyjarjarantlr/ANTLRLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_b

    :cond_1c
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-ne v1, v4, :cond_34

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_34

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_30
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_45

    :cond_34
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_3e

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_45

    :cond_3e
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_6a

    goto :goto_30

    :goto_45
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    if-eqz p1, :cond_66

    const/16 p1, 0x36

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

    goto :goto_67

    :cond_66
    const/4 p1, 0x0

    :goto_67
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_6a
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

    goto :goto_81

    :goto_80
    throw p1

    :goto_81
    goto :goto_80
.end method

.method public final QX(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final SI(Z)V
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x41

    const/16 v2, 0x5a

    :pswitch_a  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a
    invoke-virtual {p0, v1, v2}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    :goto_d
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_55

    packed-switch v3, :pswitch_data_5a

    packed-switch v3, :pswitch_data_72

    packed-switch v3, :pswitch_data_aa

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->Zo(I)I

    move-result v1

    if-eqz p1, :cond_51

    const/4 p1, -0x1

    if-eq v1, p1, :cond_51

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

    goto :goto_52

    :pswitch_44  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v3, 0x30

    const/16 v4, 0x39

    :goto_48
    invoke-virtual {p0, v3, v4}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_d

    :pswitch_4c  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    const/16 v3, 0x61

    const/16 v4, 0x7a

    goto :goto_48

    :cond_51
    const/4 p1, 0x0

    :goto_52
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_55
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_d

    nop

    :pswitch_data_5a
    .packed-switch 0x30
        :pswitch_44  #00000030
        :pswitch_44  #00000031
        :pswitch_44  #00000032
        :pswitch_44  #00000033
        :pswitch_44  #00000034
        :pswitch_44  #00000035
        :pswitch_44  #00000036
        :pswitch_44  #00000037
        :pswitch_44  #00000038
        :pswitch_44  #00000039
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x41
        :pswitch_a  #00000041
        :pswitch_a  #00000042
        :pswitch_a  #00000043
        :pswitch_a  #00000044
        :pswitch_a  #00000045
        :pswitch_a  #00000046
        :pswitch_a  #00000047
        :pswitch_a  #00000048
        :pswitch_a  #00000049
        :pswitch_a  #0000004a
        :pswitch_a  #0000004b
        :pswitch_a  #0000004c
        :pswitch_a  #0000004d
        :pswitch_a  #0000004e
        :pswitch_a  #0000004f
        :pswitch_a  #00000050
        :pswitch_a  #00000051
        :pswitch_a  #00000052
        :pswitch_a  #00000053
        :pswitch_a  #00000054
        :pswitch_a  #00000055
        :pswitch_a  #00000056
        :pswitch_a  #00000057
        :pswitch_a  #00000058
        :pswitch_a  #00000059
        :pswitch_a  #0000005a
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x61
        :pswitch_4c  #00000061
        :pswitch_4c  #00000062
        :pswitch_4c  #00000063
        :pswitch_4c  #00000064
        :pswitch_4c  #00000065
        :pswitch_4c  #00000066
        :pswitch_4c  #00000067
        :pswitch_4c  #00000068
        :pswitch_4c  #00000069
        :pswitch_4c  #0000006a
        :pswitch_4c  #0000006b
        :pswitch_4c  #0000006c
        :pswitch_4c  #0000006d
        :pswitch_4c  #0000006e
        :pswitch_4c  #0000006f
        :pswitch_4c  #00000070
        :pswitch_4c  #00000071
        :pswitch_4c  #00000072
        :pswitch_4c  #00000073
        :pswitch_4c  #00000074
        :pswitch_4c  #00000075
        :pswitch_4c  #00000076
        :pswitch_4c  #00000077
        :pswitch_4c  #00000078
        :pswitch_4c  #00000079
        :pswitch_4c  #0000007a
    .end packed-switch
.end method

.method public final U2(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final VH(Z)V
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

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/ANTLRLexer;->we(Z)V

    goto :goto_28

    :cond_19
    sget-object v3, Lgroovyjarjarantlr/ANTLRLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    :goto_28
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_49

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

.method protected final Ws(Z)I
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    :pswitch_a  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v1, v2}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    :goto_d
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_54

    packed-switch v3, :pswitch_data_58

    packed-switch v3, :pswitch_data_70

    packed-switch v3, :pswitch_data_a8

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->Zo(I)I

    move-result v1

    if-eqz p1, :cond_50

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object p1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v3

    iget-object v4, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v2}, Lgroovyjarjarantlr/Token;->j6(Ljava/lang/String;)V

    goto :goto_51

    :pswitch_43  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v3, 0x30

    const/16 v4, 0x39

    :goto_47
    invoke-virtual {p0, v3, v4}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_d

    :pswitch_4b  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a
    const/16 v3, 0x41

    const/16 v4, 0x5a

    goto :goto_47

    :cond_50
    const/4 p1, 0x0

    :goto_51
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return v1

    :cond_54
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_d

    :pswitch_data_58
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

    :pswitch_data_70
    .packed-switch 0x41
        :pswitch_4b  #00000041
        :pswitch_4b  #00000042
        :pswitch_4b  #00000043
        :pswitch_4b  #00000044
        :pswitch_4b  #00000045
        :pswitch_4b  #00000046
        :pswitch_4b  #00000047
        :pswitch_4b  #00000048
        :pswitch_4b  #00000049
        :pswitch_4b  #0000004a
        :pswitch_4b  #0000004b
        :pswitch_4b  #0000004c
        :pswitch_4b  #0000004d
        :pswitch_4b  #0000004e
        :pswitch_4b  #0000004f
        :pswitch_4b  #00000050
        :pswitch_4b  #00000051
        :pswitch_4b  #00000052
        :pswitch_4b  #00000053
        :pswitch_4b  #00000054
        :pswitch_4b  #00000055
        :pswitch_4b  #00000056
        :pswitch_4b  #00000057
        :pswitch_4b  #00000058
        :pswitch_4b  #00000059
        :pswitch_4b  #0000005a
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x61
        :pswitch_a  #00000061
        :pswitch_a  #00000062
        :pswitch_a  #00000063
        :pswitch_a  #00000064
        :pswitch_a  #00000065
        :pswitch_a  #00000066
        :pswitch_a  #00000067
        :pswitch_a  #00000068
        :pswitch_a  #00000069
        :pswitch_a  #0000006a
        :pswitch_a  #0000006b
        :pswitch_a  #0000006c
        :pswitch_a  #0000006d
        :pswitch_a  #0000006e
        :pswitch_a  #0000006f
        :pswitch_a  #00000070
        :pswitch_a  #00000071
        :pswitch_a  #00000072
        :pswitch_a  #00000073
        :pswitch_a  #00000074
        :pswitch_a  #00000075
        :pswitch_a  #00000076
        :pswitch_a  #00000077
        :pswitch_a  #00000078
        :pswitch_a  #00000079
        :pswitch_a  #0000007a
    .end packed-switch
.end method

.method protected final XL(Z)V
    .registers 13

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, "/*"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x2f

    const/16 v4, 0xff

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x2a

    if-ne v2, v7, :cond_32

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v5, :cond_32

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v4, :cond_32

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-eq v2, v3, :cond_32

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/16 v2, 0x8

    goto :goto_4c

    :cond_32
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v5, :cond_d4

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v4, :cond_d4

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v5, :cond_d4

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v4, :cond_d4

    const/16 v2, 0x37

    :goto_4c
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    if-ne v8, v7, :cond_59

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    if-ne v8, v3, :cond_59

    goto :goto_ac

    :cond_59
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    const/16 v9, 0xa

    const/16 v10, 0xd

    if-ne v8, v10, :cond_73

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    if-ne v8, v9, :cond_73

    invoke-virtual {p0, v10}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_6c
    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_6f
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto :goto_4c

    :cond_73
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    if-ne v8, v10, :cond_89

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    if-lt v8, v5, :cond_89

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    if-gt v8, v4, :cond_89

    invoke-virtual {p0, v10}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_6f

    :cond_89
    sget-object v8, Lgroovyjarjarantlr/ANTLRLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    invoke-virtual {v8, v10}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v10

    if-eqz v10, :cond_a5

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    if-lt v10, v5, :cond_a5

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v10

    if-gt v10, v4, :cond_a5

    invoke-virtual {p0, v8}, Lgroovyjarjarantlr/CharScanner;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_4c

    :cond_a5
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v8

    if-ne v8, v9, :cond_ac

    goto :goto_6c

    :cond_ac
    :goto_ac
    const-string v1, "*/"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_d0

    const/4 p1, -0x1

    if-eq v2, p1, :cond_d0

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

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

    goto :goto_d1

    :cond_d0
    const/4 p1, 0x0

    :goto_d1
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_d4
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

    goto :goto_eb

    :goto_ea
    throw p1

    :goto_eb
    goto :goto_ea
.end method

.method public final Zo(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x5e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x31

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

.method public final a8(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x7c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final aM(Z)V
    .registers 13

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_b
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_16

    goto/16 :goto_104

    :cond_16
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v5, 0xd

    const/16 v6, 0xa

    const/16 v7, 0xff

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v3, v6, :cond_2a

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v5, :cond_7f

    :cond_2a
    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_7f

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_7f

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v5, :cond_4c

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v6, :cond_4c

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_45
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_48
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto :goto_b

    :cond_4c
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v5, :cond_62

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_62

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_62

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_48

    :cond_62
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v6, :cond_69

    goto :goto_45

    :cond_69
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

    :cond_7f
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/4 v5, 0x0

    if-ne v3, v1, :cond_97

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_97

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_97

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/ANTLRLexer;->aM(Z)V

    goto/16 :goto_b

    :cond_97
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v6, 0x27

    if-ne v3, v6, :cond_b0

    sget-object v3, Lgroovyjarjarantlr/ANTLRLexer;->XL:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/ANTLRLexer;->VH(Z)V

    goto/16 :goto_b

    :cond_b0
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v6, 0x2f

    if-ne v3, v6, :cond_cb

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v10, 0x2a

    if-eq v3, v10, :cond_c6

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v6, :cond_cb

    :cond_c6
    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/ANTLRLexer;->EQ(Z)V

    goto/16 :goto_b

    :cond_cb
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v6, 0x22

    if-ne v3, v6, :cond_e4

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_e4

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_e4

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/ANTLRLexer;->nw(Z)V

    goto/16 :goto_b

    :cond_e4
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_104

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v7, :cond_104

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v8, :cond_104

    invoke-virtual {p0, v9}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v7, :cond_104

    const v2, 0xffff

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto/16 :goto_b

    :cond_104
    :goto_104
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_125

    const/16 p1, 0x3c

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

    goto :goto_126

    :cond_125
    const/4 p1, 0x0

    :goto_126
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final cb(Z)V
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

    const/16 p1, 0x3a

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

.method public final cn(Z)V
    .registers 6

    iget-object p1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_54

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4d

    const/16 v2, 0x20

    if-eq v0, v2, :cond_49

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_29

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-ne v0, v1, :cond_29

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_4d

    :cond_29
    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    if-ne v0, v2, :cond_33

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_50

    :cond_33
    new-instance v0, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result p1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    :cond_49
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_57

    :cond_4d
    :goto_4d
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_50
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto :goto_57

    :cond_54
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_57
    const/4 p1, 0x0

    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final ei(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x2e

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

.method public final er(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const-string v1, ".."

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_29

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

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

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

    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final j3(Z)V
    .registers 9

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_b
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8f

    const/16 v5, 0x22

    const/4 v6, 0x0

    if-eq v3, v5, :cond_8a

    const/16 v5, 0x27

    if-eq v3, v5, :cond_86

    if-eq v3, v1, :cond_82

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/4 v5, 0x2

    const/16 v6, 0xd

    if-ne v3, v6, :cond_32

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v4, :cond_32

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_8f

    :cond_32
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-ne v3, v6, :cond_4b

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_4b

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_4b

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_92

    :cond_4b
    sget-object v3, Lgroovyjarjarantlr/ANTLRLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    const/16 v3, 0x5d

    if-eqz v2, :cond_5d

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto :goto_b

    :cond_5d
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_7e

    const/16 p1, 0x3b

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

    goto :goto_7f

    :cond_7e
    const/4 p1, 0x0

    :goto_7f
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_82
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/ANTLRLexer;->j3(Z)V

    goto :goto_b

    :cond_86
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/ANTLRLexer;->VH(Z)V

    goto :goto_b

    :cond_8a
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/ANTLRLexer;->nw(Z)V

    goto/16 :goto_b

    :cond_8f
    :goto_8f
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_92
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto/16 :goto_b
.end method

.method public final lg(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x2f

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

.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 6

    :goto_0
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->u7()V

    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_fa

    const/16 v2, 0xa

    if-eq v1, v2, :cond_fa

    const/16 v2, 0xd

    if-eq v1, v2, :cond_fa

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_f5

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_f0

    const/16 v3, 0x3f

    if-eq v1, v3, :cond_eb

    packed-switch v1, :pswitch_data_136

    packed-switch v1, :pswitch_data_142

    packed-switch v1, :pswitch_data_152

    packed-switch v1, :pswitch_data_172

    packed-switch v1, :pswitch_data_1ac

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    goto/16 :goto_8c

    :pswitch_35  #0x23
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->KD(Z)V

    :goto_38
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    goto/16 :goto_ff

    :pswitch_3c  #0x22
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->nw(Z)V

    goto :goto_38

    :pswitch_40  #0x21
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->v5(Z)V

    goto :goto_38

    :pswitch_44  #0x2c
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->tp(Z)V

    goto :goto_38

    :pswitch_48  #0x2b
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->lg(Z)V

    goto :goto_38

    :pswitch_4c  #0x2a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->ei(Z)V

    goto :goto_38

    :pswitch_50  #0x29
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->gW(Z)V

    goto :goto_38

    :pswitch_54  #0x28
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->QX(Z)V

    goto :goto_38

    :pswitch_58  #0x27
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->VH(Z)V

    goto :goto_38

    :pswitch_5c  #0x3c
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->U2(Z)V

    goto :goto_38

    :pswitch_60  #0x3b
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->vy(Z)V

    goto :goto_38

    :pswitch_64  #0x3a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->u7(Z)V

    goto :goto_38

    :pswitch_68  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->J8(Z)V

    goto :goto_38

    :pswitch_6c  #0x2f
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->EQ(Z)V

    goto :goto_38

    :pswitch_70  #0x5b
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->FH(Z)V

    goto :goto_38

    :pswitch_74  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->SI(Z)V

    goto :goto_38

    :pswitch_78  #0x7e
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->Mr(Z)V

    goto :goto_38

    :pswitch_7c  #0x7d
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->yS(Z)V

    goto :goto_38

    :pswitch_80  #0x7c
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->a8(Z)V

    goto :goto_38

    :pswitch_84  #0x7b
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->DW(Z)V

    goto :goto_38

    :pswitch_88  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->BT(Z)V

    goto :goto_38

    :goto_8c
    const/4 v3, 0x2

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_9b

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v2, :cond_9b

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->J0(Z)V

    goto :goto_38

    :cond_9b
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_ad

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v2, :cond_ad

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->er(Z)V

    goto :goto_38

    :cond_ad
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v4, :cond_b7

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->Hw(Z)V

    goto :goto_38

    :cond_b7
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v2, :cond_c2

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->ro(Z)V

    goto/16 :goto_38

    :cond_c2
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_d5

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->EQ()V

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    goto :goto_ff

    :cond_d5
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

    :cond_eb
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->rN(Z)V

    goto/16 :goto_38

    :cond_f0
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->gn(Z)V

    goto/16 :goto_38

    :cond_f5
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->Zo(Z)V

    goto/16 :goto_38

    :cond_fa
    :pswitch_fa  #0x20
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRLexer;->cn(Z)V

    goto/16 :goto_38

    :goto_ff
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    if-nez v0, :cond_105

    goto/16 :goto_0

    :cond_105
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/Token;->FH(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;
    :try_end_112
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_4 .. :try_end_112} :catch_115
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_4 .. :try_end_112} :catch_113

    return-object v0

    :catch_113
    move-exception v0

    goto :goto_11c

    :catch_115
    move-exception v0

    :try_start_116
    new-instance v1, Lgroovyjarjarantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamRecognitionException;-><init>(Lgroovyjarjarantlr/RecognitionException;)V

    throw v1
    :try_end_11c
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_116 .. :try_end_11c} :catch_113

    :goto_11c
    instance-of v1, v0, Lgroovyjarjarantlr/CharStreamIOException;

    if-eqz v1, :cond_12a

    new-instance v1, Lgroovyjarjarantlr/TokenStreamIOException;

    check-cast v0, Lgroovyjarjarantlr/CharStreamIOException;

    iget-object v0, v0, Lgroovyjarjarantlr/CharStreamIOException;->j6:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_12a
    new-instance v1, Lgroovyjarjarantlr/TokenStreamException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    goto :goto_135

    :goto_134
    throw v1

    :goto_135
    goto :goto_134

    :pswitch_data_136
    .packed-switch 0x20
        :pswitch_fa  #00000020
        :pswitch_40  #00000021
        :pswitch_3c  #00000022
        :pswitch_35  #00000023
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x27
        :pswitch_58  #00000027
        :pswitch_54  #00000028
        :pswitch_50  #00000029
        :pswitch_4c  #0000002a
        :pswitch_48  #0000002b
        :pswitch_44  #0000002c
    .end packed-switch

    :pswitch_data_152
    .packed-switch 0x2f
        :pswitch_6c  #0000002f
        :pswitch_68  #00000030
        :pswitch_68  #00000031
        :pswitch_68  #00000032
        :pswitch_68  #00000033
        :pswitch_68  #00000034
        :pswitch_68  #00000035
        :pswitch_68  #00000036
        :pswitch_68  #00000037
        :pswitch_68  #00000038
        :pswitch_68  #00000039
        :pswitch_64  #0000003a
        :pswitch_60  #0000003b
        :pswitch_5c  #0000003c
    .end packed-switch

    :pswitch_data_172
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
        :pswitch_70  #0000005b
    .end packed-switch

    :pswitch_data_1ac
    .packed-switch 0x61
        :pswitch_88  #00000061
        :pswitch_88  #00000062
        :pswitch_88  #00000063
        :pswitch_88  #00000064
        :pswitch_88  #00000065
        :pswitch_88  #00000066
        :pswitch_88  #00000067
        :pswitch_88  #00000068
        :pswitch_88  #00000069
        :pswitch_88  #0000006a
        :pswitch_88  #0000006b
        :pswitch_88  #0000006c
        :pswitch_88  #0000006d
        :pswitch_88  #0000006e
        :pswitch_88  #0000006f
        :pswitch_88  #00000070
        :pswitch_88  #00000071
        :pswitch_88  #00000072
        :pswitch_88  #00000073
        :pswitch_88  #00000074
        :pswitch_88  #00000075
        :pswitch_88  #00000076
        :pswitch_88  #00000077
        :pswitch_88  #00000078
        :pswitch_88  #00000079
        :pswitch_88  #0000007a
        :pswitch_84  #0000007b
        :pswitch_80  #0000007c
        :pswitch_7c  #0000007d
        :pswitch_78  #0000007e
    .end packed-switch
.end method

.method public final nw(Z)V
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

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/ANTLRLexer;->we(Z)V

    goto :goto_b

    :cond_19
    sget-object v3, Lgroovyjarjarantlr/ANTLRLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto :goto_b

    :cond_29
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_49

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

    goto :goto_4a

    :cond_49
    const/4 p1, 0x0

    :goto_4a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final rN(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x2d

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

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x32

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

.method protected final sh(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    :goto_6
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eq v1, v2, :cond_46

    const/16 v2, 0xa

    if-eq v1, v2, :cond_46

    const/16 v2, 0xd

    if-eq v1, v2, :cond_46

    const/16 v2, 0x20

    if-eq v1, v2, :cond_46

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_42

    if-eqz p1, :cond_3e

    const/16 p1, 0x3d

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

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    :goto_3f
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_42
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/ANTLRLexer;->EQ(Z)V

    goto :goto_6

    :cond_46
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/ANTLRLexer;->cn(Z)V

    goto :goto_6
.end method

.method public final tp(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x26

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

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x24

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

    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_27

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

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final vy(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

    const/16 p1, 0x10

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

.method protected final we(Z)V
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_135

    const/16 v4, 0x27

    if-eq v3, v4, :cond_135

    if-eq v3, v1, :cond_131

    const/16 v1, 0x66

    if-eq v3, v1, :cond_131

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_131

    const/16 v1, 0x72

    if-eq v3, v1, :cond_131

    const/16 v1, 0x77

    if-eq v3, v1, :cond_131

    const/16 v1, 0x61

    if-eq v3, v1, :cond_131

    const/16 v1, 0x62

    if-eq v3, v1, :cond_131

    const/16 v1, 0x74

    if-eq v3, v1, :cond_131

    const/16 v1, 0x75

    if-eq v3, v1, :cond_120

    const/4 v1, 0x2

    const/16 v4, 0xff

    const/4 v5, 0x3

    const/16 v6, 0x37

    const/16 v7, 0x30

    packed-switch v3, :pswitch_data_15a

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

    :pswitch_5b  #0x34, 0x35, 0x36, 0x37
    const/16 v3, 0x34

    invoke-virtual {p0, v3, v6}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v7, :cond_7d

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v6, :cond_7d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_7d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v4, :cond_7d

    :goto_78
    invoke-virtual {p0, v7, v6}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto/16 :goto_138

    :cond_7d
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v5, :cond_8b

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v4, :cond_8b

    goto/16 :goto_138

    :cond_8b
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

    :pswitch_a1  #0x30, 0x31, 0x32, 0x33
    const/16 v3, 0x33

    invoke-virtual {p0, v7, v3}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v7, :cond_fd

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v6, :cond_fd

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_fd

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v4, :cond_fd

    invoke-virtual {p0, v7, v6}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v7, :cond_da

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v6, :cond_da

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_da

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v4, :cond_da

    goto :goto_78

    :cond_da
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v5, :cond_e7

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v4, :cond_e7

    goto :goto_138

    :cond_e7
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

    :cond_fd
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v5, :cond_10a

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v4, :cond_10a

    goto :goto_138

    :cond_10a
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

    :cond_120
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->cb(Z)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->cb(Z)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->cb(Z)V

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRLexer;->cb(Z)V

    goto :goto_138

    :cond_131
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_138

    :cond_135
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_138
    if-eqz p1, :cond_156

    const/16 p1, 0x38

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

    goto :goto_157

    :cond_156
    const/4 p1, 0x0

    :goto_157
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :pswitch_data_15a
    .packed-switch 0x30
        :pswitch_a1  #00000030
        :pswitch_a1  #00000031
        :pswitch_a1  #00000032
        :pswitch_a1  #00000033
        :pswitch_5b  #00000034
        :pswitch_5b  #00000035
        :pswitch_5b  #00000036
        :pswitch_5b  #00000037
    .end packed-switch
.end method

.method public final yS(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method
