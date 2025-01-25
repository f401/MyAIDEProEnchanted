.class public Lgroovyjarjarantlr/MismatchedTokenException;
.super Lgroovyjarjarantlr/RecognitionException;


# instance fields
.field Hw:[Ljava/lang/String;

.field public VH:I

.field Zo:Ljava/lang/String;

.field public gn:I

.field public tp:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public u7:I

.field public v5:Lgroovyjarjarantlr/Token;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "<AST>"

    const/4 v1, -0x1

    const-string v2, "Mismatched Token: expecting any AST node"

    invoke-direct {p0, v2, v0, v1, v1}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lgroovyjarjarantlr/Token;IZLjava/lang/String;)V
    .registers 9

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->aM()I

    move-result v0

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->j3()I

    move-result v1

    const-string v2, "Mismatched Token"

    invoke-direct {p0, v2, p5, v0, v1}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p5, 0x0

    iput-object p5, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    iput-object p1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Hw:[Ljava/lang/String;

    iput-object p2, p0, Lgroovyjarjarantlr/MismatchedTokenException;->v5:Lgroovyjarjarantlr/Token;

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    if-eqz p4, :cond_1e

    const/4 p1, 0x2

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x1

    :goto_1f
    iput p1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->VH:I

    iput p3, p0, Lgroovyjarjarantlr/MismatchedTokenException;->gn:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lgroovyjarjarantlr/Token;Lgroovyjarjarantlr/collections/impl/BitSet;ZLjava/lang/String;)V
    .registers 9

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->aM()I

    move-result v0

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->j3()I

    move-result v1

    const-string v2, "Mismatched Token"

    invoke-direct {p0, v2, p5, v0, v1}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p5, 0x0

    iput-object p5, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    iput-object p1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Hw:[Ljava/lang/String;

    iput-object p2, p0, Lgroovyjarjarantlr/MismatchedTokenException;->v5:Lgroovyjarjarantlr/Token;

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    if-eqz p4, :cond_1e

    const/4 p1, 0x6

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x5

    :goto_1f
    iput p1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->VH:I

    iput-object p3, p0, Lgroovyjarjarantlr/MismatchedTokenException;->tp:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method private j6(I)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string p1, "<Set of tokens>"

    return-object p1

    :cond_5
    if-ltz p1, :cond_10

    iget-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Hw:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_d

    goto :goto_10

    :cond_d
    aget-object p1, v0, p1

    return-object p1

    :cond_10
    :goto_10
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->VH:I

    const-string v2, ".."

    const-string v3, "expecting "

    const-string v4, ", found \'"

    const-string v5, "\'"

    packed-switch v1, :pswitch_data_c2

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b9

    :pswitch_18  #0x5, 0x6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lgroovyjarjarantlr/MismatchedTokenException;->VH:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_28

    const-string v2, "NOT "

    goto :goto_2a

    :cond_28
    const-string v2, ""

    :goto_2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "one of ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->tp:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_40
    array-length v3, v1

    if-ge v2, v3, :cond_54

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v3, v1, v2

    invoke-direct {p0, v3}, Lgroovyjarjarantlr/MismatchedTokenException;->j6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_54
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "), found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ad

    :pswitch_5f  #0x4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expecting token NOT in range: "

    goto :goto_6e

    :pswitch_67  #0x3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expecting token in range: "

    :goto_6e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lgroovyjarjarantlr/MismatchedTokenException;->gn:I

    invoke-direct {p0, v3}, Lgroovyjarjarantlr/MismatchedTokenException;->j6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lgroovyjarjarantlr/MismatchedTokenException;->u7:I

    goto :goto_a3

    :pswitch_80  #0x2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expecting anything but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lgroovyjarjarantlr/MismatchedTokenException;->gn:I

    invoke-direct {p0, v2}, Lgroovyjarjarantlr/MismatchedTokenException;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; got it anyway"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b5

    :pswitch_99  #0x1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lgroovyjarjarantlr/MismatchedTokenException;->gn:I

    :goto_a3
    invoke-direct {p0, v2}, Lgroovyjarjarantlr/MismatchedTokenException;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_ad
    iget-object v2, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_b5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_99  #00000001
        :pswitch_80  #00000002
        :pswitch_67  #00000003
        :pswitch_5f  #00000004
        :pswitch_18  #00000005
        :pswitch_18  #00000006
    .end packed-switch
.end method
