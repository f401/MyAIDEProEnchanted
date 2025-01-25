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

    invoke-virtual {p5}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v1

    invoke-virtual {p5}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v2

    const-string v3, "Mismatched char"

    invoke-direct {p0, v3, v0, v1, v2}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p4, :cond_15

    const/4 p4, 0x4

    goto :goto_16

    :cond_15
    const/4 p4, 0x3

    :goto_16
    iput p4, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    iput p1, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    iput p2, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    iput p3, p0, Lgroovyjarjarantlr/MismatchedCharException;->VH:I

    iput-object p5, p0, Lgroovyjarjarantlr/MismatchedCharException;->u7:Lgroovyjarjarantlr/CharScanner;

    return-void
.end method

.method public constructor <init>(CCZLgroovyjarjarantlr/CharScanner;)V
    .registers 9

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v1

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v2

    const-string v3, "Mismatched char"

    invoke-direct {p0, v3, v0, v1, v2}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p3, :cond_15

    const/4 p3, 0x2

    goto :goto_16

    :cond_15
    const/4 p3, 0x1

    :goto_16
    iput p3, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    iput p1, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    iput p2, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    iput-object p4, p0, Lgroovyjarjarantlr/MismatchedCharException;->u7:Lgroovyjarjarantlr/CharScanner;

    return-void
.end method

.method public constructor <init>(CLgroovyjarjarantlr/collections/impl/BitSet;ZLgroovyjarjarantlr/CharScanner;)V
    .registers 9

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v1

    invoke-virtual {p4}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v2

    const-string v3, "Mismatched char"

    invoke-direct {p0, v3, v0, v1, v2}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p3, :cond_15

    const/4 p3, 0x6

    goto :goto_16

    :cond_15
    const/4 p3, 0x5

    :goto_16
    iput p3, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    iput p1, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    iput-object p2, p0, Lgroovyjarjarantlr/MismatchedCharException;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    iput-object p4, p0, Lgroovyjarjarantlr/MismatchedCharException;->u7:Lgroovyjarjarantlr/CharScanner;

    return-void
.end method

.method private j6(Ljava/lang/StringBuffer;I)V
    .registers 4

    const/16 v0, 0x9

    if-eq p2, v0, :cond_27

    const/16 v0, 0xa

    if-eq p2, v0, :cond_24

    const/16 v0, 0xd

    if-eq p2, v0, :cond_21

    const v0, 0xffff

    if-eq p2, v0, :cond_1e

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2c

    :cond_1e
    const-string p2, "\'<EOF>\'"

    goto :goto_29

    :cond_21
    const-string p2, "\'\\r\'"

    goto :goto_29

    :cond_24
    const-string p2, "\'\\n\'"

    goto :goto_29

    :cond_27
    const-string p2, "\'\\t\'"

    :goto_29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2c
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    const-string v2, ", found "

    const-string v3, "expecting "

    const-string v4, "NOT "

    packed-switch v1, :pswitch_data_90

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_77

    :pswitch_15  #0x5, 0x6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_23

    goto :goto_25

    :cond_23
    const-string v4, ""

    :goto_25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "one of ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/MismatchedCharException;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_3b
    array-length v3, v1

    if-ge v2, v3, :cond_46

    aget v3, v1, v2

    invoke-direct {p0, v0, v3}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_46
    const-string v1, "), found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_86

    :pswitch_4c  #0x3, 0x4
    const-string v1, "expecting token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lgroovyjarjarantlr/MismatchedCharException;->Hw:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_59

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_59
    const-string v1, "in range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    invoke-direct {p0, v0, v1}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lgroovyjarjarantlr/MismatchedCharException;->VH:I

    goto :goto_80

    :pswitch_6b  #0x2
    const-string v1, "expecting anything but \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    invoke-direct {p0, v0, v1}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    const-string v1, "\'; got it anyway"

    :goto_77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8b

    :pswitch_7b  #0x1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lgroovyjarjarantlr/MismatchedCharException;->Zo:I

    :goto_80
    invoke-direct {p0, v0, v1}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_86
    iget v1, p0, Lgroovyjarjarantlr/MismatchedCharException;->v5:I

    invoke-direct {p0, v0, v1}, Lgroovyjarjarantlr/MismatchedCharException;->j6(Ljava/lang/StringBuffer;I)V

    :goto_8b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_7b  #00000001
        :pswitch_6b  #00000002
        :pswitch_4c  #00000003
        :pswitch_4c  #00000004
        :pswitch_15  #00000005
        :pswitch_15  #00000006
    .end packed-switch
.end method
