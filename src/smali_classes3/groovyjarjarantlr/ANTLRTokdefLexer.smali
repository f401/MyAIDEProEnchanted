.class public Lgroovyjarjarantlr/ANTLRTokdefLexer;
.super Lgroovyjarjarantlr/CharScanner;

# interfaces
.implements Lgroovyjarjarantlr/ANTLRTokdefParserTokenTypes;
.implements Lgroovyjarjarantlr/TokenStream;


# static fields
.field public static final J0:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final J8:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final QX:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public static final Ws:Lgroovyjarjarantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->we()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRTokdefLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-static {}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->Ws()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lgroovyjarjarantlr/ANTLRTokdefLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method private static final J0()[J
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x800000000008L

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
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x40000000408L

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
.method public final DW(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_28

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

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final EQ(Z)V
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

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->Hw(Z)V

    goto :goto_b

    :cond_19
    sget-object v3, Lgroovyjarjarantlr/ANTLRTokdefLexer;->QX:Lgroovyjarjarantlr/collections/impl/BitSet;

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

    goto :goto_4a

    :cond_49
    const/4 p1, 0x0

    :goto_4a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final FH(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {p0, v1, v2}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    if-eqz p1, :cond_2b

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

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method protected final Hw(Z)V
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

    if-eq v3, v4, :cond_12f

    const/16 v4, 0x27

    if-eq v3, v4, :cond_12f

    if-eq v3, v1, :cond_12b

    const/16 v1, 0x62

    if-eq v3, v1, :cond_12b

    const/16 v1, 0x66

    if-eq v3, v1, :cond_12b

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_12b

    const/16 v1, 0x72

    if-eq v3, v1, :cond_12b

    const/16 v1, 0x74

    if-eq v3, v1, :cond_12b

    const/16 v1, 0x75

    const/4 v4, 0x0

    if-eq v3, v1, :cond_11b

    const/16 v1, 0x39

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x3

    packed-switch v3, :pswitch_data_154

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

    if-gt v3, v1, :cond_78

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_78

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_78

    :goto_73
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->FH(Z)V

    goto/16 :goto_132

    :cond_78
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_86

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_86

    goto/16 :goto_132

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

    if-gt v3, v1, :cond_f8

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v8, :cond_f8

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v7, :cond_f8

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->FH(Z)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-lt v3, v5, :cond_d5

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    if-gt v3, v1, :cond_d5

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_d5

    invoke-virtual {p0, v6}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_d5

    goto :goto_73

    :cond_d5
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, v8, :cond_e2

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, v7, :cond_e2

    goto :goto_132

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

    goto :goto_132

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

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J0(Z)V

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J0(Z)V

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J0(Z)V

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J0(Z)V

    goto :goto_132

    :cond_12b
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_132

    :cond_12f
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_132
    if-eqz p1, :cond_150

    const/16 p1, 0xd

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

    goto :goto_151

    :cond_150
    const/4 p1, 0x0

    :goto_151
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :pswitch_data_154
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

.method protected final J0(Z)V
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

.method public final VH(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_28

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

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final Zo(Z)V
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

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->FH(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    if-lt v2, v3, :cond_43

    if-eqz p1, :cond_3f

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

.method public final gn(Z)V
    .registers 5

    iget-object p1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    const-string p1, "/*"

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_a
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_29

    sget-object v0, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J8:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto :goto_a

    :cond_29
    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_38

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto :goto_a

    :cond_38
    sget-object v0, Lgroovyjarjarantlr/ANTLRTokdefLexer;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result p1

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->FH(C)V

    goto :goto_a

    :cond_48
    const-string p1, "*/"

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    const/4 p1, 0x0

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

    if-eq v1, v2, :cond_9a

    const/16 v2, 0xa

    if-eq v1, v2, :cond_9a

    const/16 v2, 0xd

    if-eq v1, v2, :cond_9a

    const/16 v2, 0x20

    if-eq v1, v2, :cond_9a

    const/16 v2, 0x22

    if-eq v1, v2, :cond_96

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_92

    const/16 v2, 0x28

    if-eq v1, v2, :cond_8e

    const/16 v2, 0x29

    if-eq v1, v2, :cond_8a

    packed-switch v1, :pswitch_data_d6

    packed-switch v1, :pswitch_data_ee

    packed-switch v1, :pswitch_data_126

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    goto :goto_40

    :pswitch_36  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->Zo(Z)V

    :goto_39
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    goto :goto_9e

    :pswitch_3c  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->v5(Z)V

    goto :goto_39

    :goto_40
    const/4 v2, 0x2

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_4f

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_4f

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->tp(Z)V

    goto :goto_39

    :cond_4f
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, v3, :cond_61

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_61

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->gn(Z)V

    goto :goto_39

    :cond_61
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_74

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->EQ()V

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    goto :goto_9e

    :cond_74
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

    :cond_8a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->u7(Z)V

    goto :goto_39

    :cond_8e
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->VH(Z)V

    goto :goto_39

    :cond_92
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->DW(Z)V

    goto :goto_39

    :cond_96
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->EQ(Z)V

    goto :goto_39

    :cond_9a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRTokdefLexer;->we(Z)V

    goto :goto_39

    :goto_9e
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    if-nez v0, :cond_a4

    goto/16 :goto_0

    :cond_a4
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/Token;->FH(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;
    :try_end_b1
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_4 .. :try_end_b1} :catch_b4
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_4 .. :try_end_b1} :catch_b2

    return-object v0

    :catch_b2
    move-exception v0

    goto :goto_bb

    :catch_b4
    move-exception v0

    :try_start_b5
    new-instance v1, Lgroovyjarjarantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamRecognitionException;-><init>(Lgroovyjarjarantlr/RecognitionException;)V

    throw v1
    :try_end_bb
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_b5 .. :try_end_bb} :catch_b2

    :goto_bb
    instance-of v1, v0, Lgroovyjarjarantlr/CharStreamIOException;

    if-eqz v1, :cond_c9

    new-instance v1, Lgroovyjarjarantlr/TokenStreamIOException;

    check-cast v0, Lgroovyjarjarantlr/CharStreamIOException;

    iget-object v0, v0, Lgroovyjarjarantlr/CharStreamIOException;->j6:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_c9
    new-instance v1, Lgroovyjarjarantlr/TokenStreamException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    goto :goto_d4

    :goto_d3
    throw v1

    :goto_d4
    goto :goto_d3

    nop

    :pswitch_data_d6
    .packed-switch 0x30
        :pswitch_36  #00000030
        :pswitch_36  #00000031
        :pswitch_36  #00000032
        :pswitch_36  #00000033
        :pswitch_36  #00000034
        :pswitch_36  #00000035
        :pswitch_36  #00000036
        :pswitch_36  #00000037
        :pswitch_36  #00000038
        :pswitch_36  #00000039
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x41
        :pswitch_3c  #00000041
        :pswitch_3c  #00000042
        :pswitch_3c  #00000043
        :pswitch_3c  #00000044
        :pswitch_3c  #00000045
        :pswitch_3c  #00000046
        :pswitch_3c  #00000047
        :pswitch_3c  #00000048
        :pswitch_3c  #00000049
        :pswitch_3c  #0000004a
        :pswitch_3c  #0000004b
        :pswitch_3c  #0000004c
        :pswitch_3c  #0000004d
        :pswitch_3c  #0000004e
        :pswitch_3c  #0000004f
        :pswitch_3c  #00000050
        :pswitch_3c  #00000051
        :pswitch_3c  #00000052
        :pswitch_3c  #00000053
        :pswitch_3c  #00000054
        :pswitch_3c  #00000055
        :pswitch_3c  #00000056
        :pswitch_3c  #00000057
        :pswitch_3c  #00000058
        :pswitch_3c  #00000059
        :pswitch_3c  #0000005a
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x61
        :pswitch_3c  #00000061
        :pswitch_3c  #00000062
        :pswitch_3c  #00000063
        :pswitch_3c  #00000064
        :pswitch_3c  #00000065
        :pswitch_3c  #00000066
        :pswitch_3c  #00000067
        :pswitch_3c  #00000068
        :pswitch_3c  #00000069
        :pswitch_3c  #0000006a
        :pswitch_3c  #0000006b
        :pswitch_3c  #0000006c
        :pswitch_3c  #0000006d
        :pswitch_3c  #0000006e
        :pswitch_3c  #0000006f
        :pswitch_3c  #00000070
        :pswitch_3c  #00000071
        :pswitch_3c  #00000072
        :pswitch_3c  #00000073
        :pswitch_3c  #00000074
        :pswitch_3c  #00000075
        :pswitch_3c  #00000076
        :pswitch_3c  #00000077
        :pswitch_3c  #00000078
        :pswitch_3c  #00000079
        :pswitch_3c  #0000007a
    .end packed-switch
.end method

.method public final tp(Z)V
    .registers 6

    iget-object p1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    const-string p1, "//"

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(Ljava/lang/String;)V

    :goto_a
    sget-object p1, Lgroovyjarjarantlr/ANTLRTokdefLexer;->J0:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_a

    :cond_1b
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_47

    const/16 v2, 0xd

    if-ne p1, v2, :cond_31

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result p1

    if-ne p1, v1, :cond_4a

    goto :goto_47

    :cond_31
    new-instance p1, Lgroovyjarjarantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lgroovyjarjarantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_47
    :goto_47
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :cond_4a
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    const/4 p1, 0x0

    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final u7(Z)V
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    if-eqz p1, :cond_29

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

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method public final v5(Z)V
    .registers 10

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

    packed-switch v2, :pswitch_data_74

    packed-switch v2, :pswitch_data_ac

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

    :pswitch_2f  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a
    invoke-virtual {p0, v6, v5}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_36

    :pswitch_33  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-virtual {p0, v4, v3}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    :goto_36
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    const/16 v7, 0x5f

    if-eq v2, v7, :cond_70

    packed-switch v2, :pswitch_data_e4

    packed-switch v2, :pswitch_data_fc

    packed-switch v2, :pswitch_data_134

    if-eqz p1, :cond_6c

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

    goto :goto_6d

    :pswitch_64  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v2, 0x30

    const/16 v7, 0x39

    invoke-virtual {p0, v2, v7}, Lgroovyjarjarantlr/CharScanner;->j6(CC)V

    goto :goto_36

    :cond_6c
    const/4 p1, 0x0

    :goto_6d
    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void

    :cond_70
    invoke-virtual {p0, v7}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    goto :goto_36

    :pswitch_data_74
    .packed-switch 0x41
        :pswitch_2f  #00000041
        :pswitch_2f  #00000042
        :pswitch_2f  #00000043
        :pswitch_2f  #00000044
        :pswitch_2f  #00000045
        :pswitch_2f  #00000046
        :pswitch_2f  #00000047
        :pswitch_2f  #00000048
        :pswitch_2f  #00000049
        :pswitch_2f  #0000004a
        :pswitch_2f  #0000004b
        :pswitch_2f  #0000004c
        :pswitch_2f  #0000004d
        :pswitch_2f  #0000004e
        :pswitch_2f  #0000004f
        :pswitch_2f  #00000050
        :pswitch_2f  #00000051
        :pswitch_2f  #00000052
        :pswitch_2f  #00000053
        :pswitch_2f  #00000054
        :pswitch_2f  #00000055
        :pswitch_2f  #00000056
        :pswitch_2f  #00000057
        :pswitch_2f  #00000058
        :pswitch_2f  #00000059
        :pswitch_2f  #0000005a
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x61
        :pswitch_33  #00000061
        :pswitch_33  #00000062
        :pswitch_33  #00000063
        :pswitch_33  #00000064
        :pswitch_33  #00000065
        :pswitch_33  #00000066
        :pswitch_33  #00000067
        :pswitch_33  #00000068
        :pswitch_33  #00000069
        :pswitch_33  #0000006a
        :pswitch_33  #0000006b
        :pswitch_33  #0000006c
        :pswitch_33  #0000006d
        :pswitch_33  #0000006e
        :pswitch_33  #0000006f
        :pswitch_33  #00000070
        :pswitch_33  #00000071
        :pswitch_33  #00000072
        :pswitch_33  #00000073
        :pswitch_33  #00000074
        :pswitch_33  #00000075
        :pswitch_33  #00000076
        :pswitch_33  #00000077
        :pswitch_33  #00000078
        :pswitch_33  #00000079
        :pswitch_33  #0000007a
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x30
        :pswitch_64  #00000030
        :pswitch_64  #00000031
        :pswitch_64  #00000032
        :pswitch_64  #00000033
        :pswitch_64  #00000034
        :pswitch_64  #00000035
        :pswitch_64  #00000036
        :pswitch_64  #00000037
        :pswitch_64  #00000038
        :pswitch_64  #00000039
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x41
        :pswitch_2f  #00000041
        :pswitch_2f  #00000042
        :pswitch_2f  #00000043
        :pswitch_2f  #00000044
        :pswitch_2f  #00000045
        :pswitch_2f  #00000046
        :pswitch_2f  #00000047
        :pswitch_2f  #00000048
        :pswitch_2f  #00000049
        :pswitch_2f  #0000004a
        :pswitch_2f  #0000004b
        :pswitch_2f  #0000004c
        :pswitch_2f  #0000004d
        :pswitch_2f  #0000004e
        :pswitch_2f  #0000004f
        :pswitch_2f  #00000050
        :pswitch_2f  #00000051
        :pswitch_2f  #00000052
        :pswitch_2f  #00000053
        :pswitch_2f  #00000054
        :pswitch_2f  #00000055
        :pswitch_2f  #00000056
        :pswitch_2f  #00000057
        :pswitch_2f  #00000058
        :pswitch_2f  #00000059
        :pswitch_2f  #0000005a
    .end packed-switch

    :pswitch_data_134
    .packed-switch 0x61
        :pswitch_33  #00000061
        :pswitch_33  #00000062
        :pswitch_33  #00000063
        :pswitch_33  #00000064
        :pswitch_33  #00000065
        :pswitch_33  #00000066
        :pswitch_33  #00000067
        :pswitch_33  #00000068
        :pswitch_33  #00000069
        :pswitch_33  #0000006a
        :pswitch_33  #0000006b
        :pswitch_33  #0000006c
        :pswitch_33  #0000006d
        :pswitch_33  #0000006e
        :pswitch_33  #0000006f
        :pswitch_33  #00000070
        :pswitch_33  #00000071
        :pswitch_33  #00000072
        :pswitch_33  #00000073
        :pswitch_33  #00000074
        :pswitch_33  #00000075
        :pswitch_33  #00000076
        :pswitch_33  #00000077
        :pswitch_33  #00000078
        :pswitch_33  #00000079
        :pswitch_33  #0000007a
    .end packed-switch
.end method

.method public final we(Z)V
    .registers 6

    iget-object p1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_41

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3a

    const/16 v2, 0xd

    if-eq v0, v2, :cond_31

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1b

    goto :goto_41

    :cond_1b
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

    :cond_31
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result p1

    if-ne p1, v1, :cond_3d

    :cond_3a
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :cond_3d
    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->gn()V

    goto :goto_44

    :cond_41
    :goto_41
    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->DW(C)V

    :goto_44
    const/4 p1, 0x0

    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    return-void
.end method
