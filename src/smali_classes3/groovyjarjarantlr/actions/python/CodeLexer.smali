.class public Lgroovyjarjarantlr/actions/python/CodeLexer;
.super Lgroovyjarjarantlr/CharScanner;

# interfaces
.implements Lgroovyjarjarantlr/actions/python/CodeLexerTokenTypes;
.implements Lgroovyjarjarantlr/TokenStream;


# static fields
.field public static final J0:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final J8:Lgroovyjarjarantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/python/CodeLexer;->we()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/python/CodeLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/actions/python/CodeLexer;->J0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/actions/python/CodeLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method private static final J0()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x800000002408L

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

.method private static final we()[J
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


# virtual methods
.method public final DW(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    :goto_6
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1b

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/python/CodeLexer;->VH(Z)V

    goto :goto_6

    :cond_1b
    if-eqz p1, :cond_38

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

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final FH(Z)V
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

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/actions/python/CodeLexer;->Zo(Z)V

    goto :goto_2c

    :cond_1b
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_4d

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v4, 0x2a

    if-ne v2, v4, :cond_4d

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/actions/python/CodeLexer;->v5(Z)V

    :goto_2c
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

    :cond_4d
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

.method protected final Hw(Z)V
    .registers 9

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    :goto_6
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0xff

    const/4 v4, 0x3

    const/16 v5, 0x20

    const/4 v6, 0x2

    if-ne v2, v5, :cond_23

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v4, :cond_23

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v3, :cond_23

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_6

    :cond_23
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3b

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v4, :cond_3b

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v3, :cond_3b

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_6

    :cond_3b
    if-eqz p1, :cond_59

    const/16 p1, 0x8

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

    goto :goto_5a

    :cond_59
    const/4 p1, 0x0

    :goto_5a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final VH(Z)V
    .registers 9

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_23

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v5, 0x2a

    if-eq v2, v5, :cond_1e

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_23

    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/actions/python/CodeLexer;->FH(Z)V

    goto :goto_76

    :cond_23
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v5, 0xa

    const/16 v6, 0xd

    if-ne v2, v6, :cond_3c

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_3c

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_38
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto :goto_76

    :cond_3c
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_55

    sget-object v2, Lgroovyjarjarantlr/actions/python/CodeLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_51
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_76

    :cond_55
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v6, :cond_5f

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_38

    :cond_5f
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_69

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_38

    :cond_69
    sget-object v2, Lgroovyjarjarantlr/actions/python/CodeLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_97

    goto :goto_51

    :goto_76
    if-eqz p1, :cond_93

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

    goto :goto_94

    :cond_93
    const/4 p1, 0x0

    :goto_94
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_97
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

    goto :goto_ae

    :goto_ad
    throw p1

    :goto_ae
    goto :goto_ad
.end method

.method protected final Zo(Z)V
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    const-string v2, "//"

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    :goto_1d
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-eq v2, v5, :cond_52

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_30

    goto :goto_52

    :cond_30
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/4 v6, 0x3

    if-lt v2, v6, :cond_52

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v7, 0xff

    if-gt v2, v7, :cond_52

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v6, :cond_52

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v7, :cond_52

    const v1, 0xffff

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto :goto_1d

    :cond_52
    :goto_52
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_64

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_64

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    goto :goto_77

    :cond_64
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v5, :cond_6e

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_77

    :cond_6e
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v4, :cond_9b

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_77
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    if-eqz p1, :cond_97

    const/4 p1, 0x7

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

    goto :goto_98

    :cond_97
    const/4 p1, 0x0

    :goto_98
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_9b
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

    goto :goto_b2

    :goto_b1
    throw p1

    :goto_b2
    goto :goto_b1
.end method

.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 3

    :goto_0
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->u7()V

    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/actions/python/CodeLexer;->DW(Z)V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/Token;->FH(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;
    :try_end_1b
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_4 .. :try_end_1b} :catch_1e
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_4 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception v0

    goto :goto_25

    :catch_1e
    move-exception v0

    :try_start_1f
    new-instance v1, Lgroovyjarjarantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamRecognitionException;-><init>(Lgroovyjarjarantlr/RecognitionException;)V

    throw v1
    :try_end_25
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_1f .. :try_end_25} :catch_1c

    :goto_25
    instance-of v1, v0, Lgroovyjarjarantlr/CharStreamIOException;

    if-eqz v1, :cond_33

    new-instance v1, Lgroovyjarjarantlr/TokenStreamIOException;

    check-cast v0, Lgroovyjarjarantlr/CharStreamIOException;

    iget-object v0, v0, Lgroovyjarjarantlr/CharStreamIOException;->j6:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_33
    new-instance v1, Lgroovyjarjarantlr/TokenStreamException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    goto :goto_3e

    :goto_3d
    throw v1

    :goto_3e
    goto :goto_3d
.end method

.method protected final v5(Z)V
    .registers 12

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    const-string v2, "/*"

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    :goto_1d
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x2a

    const/4 v4, 0x2

    if-ne v2, v3, :cond_31

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_31

    goto/16 :goto_ad

    :cond_31
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const-string v3, "# "

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0xd

    if-ne v2, v7, :cond_61

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v6, :cond_61

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_47
    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_4a
    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    invoke-virtual {p0, v5}, Lgroovyjarjarantlr/actions/python/CodeLexer;->Hw(Z)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    goto :goto_1d

    :cond_61
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v8, 0xff

    const/4 v9, 0x3

    if-ne v2, v7, :cond_7a

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v9, :cond_7a

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v8, :cond_7a

    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_4a

    :cond_7a
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-ne v2, v6, :cond_8d

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v9, :cond_8d

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-gt v2, v8, :cond_8d

    goto :goto_47

    :cond_8d
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    if-lt v2, v9, :cond_ad

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v8, :cond_ad

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v9, :cond_ad

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v8, :cond_ad

    const v1, 0xffff

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto/16 :goto_1d

    :cond_ad
    :goto_ad
    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v1

    const-string v2, "*/"

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    if-eqz p1, :cond_e2

    const/16 p1, 0x9

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

    goto :goto_e3

    :cond_e2
    const/4 p1, 0x0

    :goto_e3
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method
