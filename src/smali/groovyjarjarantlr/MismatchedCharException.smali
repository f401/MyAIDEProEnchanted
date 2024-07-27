.class public Lgroovyjarjarantlr/MismatchedCharException;
.super Lgroovyjarjarantlr/RecognitionException;


# instance fields
.field public Hw:I

.field public VH:I

.field public Zo:I

.field public gn:Lgroovyjarjarantlr/collections/impl/BitSet;

.field public u7:Lgroovyjarjarantlr/CharScanner;

.field public v5:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Mismatched char"

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(CCCZLgroovyjarjarantlr/CharScanner;)V
    .registers 10

    const-string v0, "Mismatched char"

    invoke-virtual {p5}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p5}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p4, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    iput p1, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    iput p2, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    iput p3, p0, Lgroovyjarjarantlr/MismatchedCharException;->VH:I

    iput-object p5, p0, Lgroovyjarjarantlr/MismatchedCharException;->u7:Lgroovyjarjarantlr/CharScanner;

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public constructor <init>(CCZLgroovyjarjarantlr/CharScanner;)V
    .registers 9

    const-string v0, "Mismatched char"

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    iput p1, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    iput p2, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    iput-object p4, p0, Lgroovyjarjarantlr/MismatchedCharException;->u7:Lgroovyjarjarantlr/CharScanner;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(CLgroovyjarjarantlr/collections/impl/BitSet;ZLgroovyjarjarantlr/CharScanner;)V
    .registers 9

    const-string v0, "Mismatched char"

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v2

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p3, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    iput p1, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    iput-object p2, p0, Lgroovyjarjarantlr/MismatchedCharException;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    iput-object p4, p0, Lgroovyjarjarantlr/MismatchedCharException;->u7:Lgroovyjarjarantlr/CharScanner;

    return-void

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private j6(Ljava/lang/StringBuffer;I)V
    .registers 5

    const/16 v1, 0x27

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    const-string v0, "\'<EOF>\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v0, "\'\\r\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v0, "\'\\n\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v0, "\'\\t\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    const-string v0, "NOT "

    packed-switch v2, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "one of ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH()[I

    move-result-object v2

    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    invoke-direct {p0, v1, v3}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    const-string v0, ""

    goto :goto_1

    :cond_1
    const-string v0, "), found "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    invoke-direct {p0, v1, v0}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "expecting token "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const-string v0, "NOT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v0, "in range: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    invoke-direct {p0, v1, v0}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    const-string v0, ".."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->VH:I

    invoke-direct {p0, v1, v0}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    const-string v0, ", found "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    invoke-direct {p0, v1, v0}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "expecting anything but \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    invoke-direct {p0, v1, v0}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    const-string v0, "\'; got it anyway"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string v0, "expecting "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    invoke-direct {p0, v1, v0}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    const-string v0, ", found "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    invoke-direct {p0, v1, v0}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
