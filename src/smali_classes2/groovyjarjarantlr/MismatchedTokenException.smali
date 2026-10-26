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
    .locals 3

    const/4 v2, -0x1

    const-string v0, "Mismatched Token: expecting any AST node"

    const-string v1, "<AST>"

    invoke-direct {p0, v0, v1, v2, v2}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lgroovyjarjarantlr/Token;IZLjava/lang/String;)V
    .locals 3

    const-string v0, "Mismatched Token"

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->aM()I

    move-result v1

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->j3()I

    move-result v2

    invoke-direct {p0, v0, p5, v1, v2}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    iput-object p1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Hw:[Ljava/lang/String;

    iput-object p2, p0, Lgroovyjarjarantlr/MismatchedTokenException;->v5:Lgroovyjarjarantlr/Token;

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->VH:I

    iput p3, p0, Lgroovyjarjarantlr/MismatchedTokenException;->gn:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;Lgroovyjarjarantlr/Token;Lgroovyjarjarantlr/collections/impl/BitSet;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "Mismatched Token"

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->aM()I

    move-result v1

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->j3()I

    move-result v2

    invoke-direct {p0, v0, p5, v1, v2}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    iput-object p1, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Hw:[Ljava/lang/String;

    iput-object p2, p0, Lgroovyjarjarantlr/MismatchedTokenException;->v5:Lgroovyjarjarantlr/Token;

    invoke-virtual {p2}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->VH:I

    iput-object p3, p0, Lgroovyjarjarantlr/MismatchedTokenException;->tp:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private j6(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "<Set of tokens>"

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Hw:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    aget-object v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->VH:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "expecting "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->VH:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    const-string v0, "NOT "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "one of ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->tp:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH()[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v3, v1, v0

    invoke-direct {p0, v3}, Lgroovyjarjarantlr/MismatchedTokenException;->j6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    const-string v0, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "), found \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->Zo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "expecting token NOT in range: "

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->gn:I

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/MismatchedTokenException;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->u7:I

    :goto_6
    invoke-direct {p0, v0}, Lgroovyjarjarantlr/MismatchedTokenException;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ", found \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "expecting token in range: "

    goto :goto_5

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "expecting anything but "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->gn:I

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/MismatchedTokenException;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "; got it anyway"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "expecting "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedTokenException;->gn:I

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
