.class public Lgroovyjarjarantlr/LLkAnalyzer;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/LLkGrammarAnalyzer;


# instance fields
.field private DW:Lgroovyjarjarantlr/AlternativeBlock;

.field protected FH:Lgroovyjarjarantlr/Tool;

.field protected Hw:Lgroovyjarjarantlr/Grammar;

.field Zo:Lgroovyjarjarantlr/CharFormatter;

.field public j6:Z

.field protected v5:Z


# direct methods
.method private j6(Lgroovyjarjarantlr/collections/impl/BitSet;Lgroovyjarjarantlr/AlternativeElement;)V
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    iget v1, v0, Lgroovyjarjarantlr/AlternativeBlock;->tp:I

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/AlternativeBlock;->DW(I)Lgroovyjarjarantlr/Alternative;

    move-result-object v0

    iget-object v0, v0, Lgroovyjarjarantlr/Alternative;->j6:Lgroovyjarjarantlr/AlternativeElement;

    instance-of v1, v0, Lgroovyjarjarantlr/TreeElement;

    if-eqz v1, :cond_15

    check-cast v0, Lgroovyjarjarantlr/TreeElement;

    iget-object v0, v0, Lgroovyjarjarantlr/TreeElement;->we:Lgroovyjarjarantlr/GrammarAtom;

    if-eq v0, p2, :cond_18

    return-void

    :cond_15
    if-eq p2, v0, :cond_18

    return-void

    :cond_18
    const/4 p2, 0x0

    :goto_19
    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    iget v1, v0, Lgroovyjarjarantlr/AlternativeBlock;->tp:I

    if-ge p2, v1, :cond_32

    invoke-virtual {v0, p2}, Lgroovyjarjarantlr/AlternativeBlock;->DW(I)Lgroovyjarjarantlr/Alternative;

    move-result-object v0

    iget-object v0, v0, Lgroovyjarjarantlr/Alternative;->j6:Lgroovyjarjarantlr/AlternativeElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-object v0, v0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->DW(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    :cond_32
    return-void
.end method


# virtual methods
.method public DW(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_30

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookRuleBlockEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "); noFOLLOW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p2, Lgroovyjarjarantlr/RuleEndElement;->tp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, "; lock is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_30
    iget-boolean v0, p2, Lgroovyjarjarantlr/RuleEndElement;->tp:Z

    if-eqz v0, :cond_43

    new-instance p2, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {p2}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    invoke-virtual {p2}, Lgroovyjarjarantlr/Lookahead;->FH()V

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->v5(I)Lgroovyjarjarantlr/collections/impl/BitSet;

    move-result-object p1

    iput-object p1, p2, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-object p2

    :cond_43
    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/ActionElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookAction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 11

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookAltBlk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    iput-object p2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    new-instance v1, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v1}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_32
    iget-object v4, p2, Lgroovyjarjarantlr/AlternativeBlock;->gn:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v4}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v4

    if-ge v3, v4, :cond_91

    iget-boolean v4, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    const-string v5, "alt "

    if-eqz v4, :cond_5c

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5c
    iget-object v4, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    iput v3, v4, Lgroovyjarjarantlr/AlternativeBlock;->tp:I

    invoke-virtual {p2, v3}, Lgroovyjarjarantlr/AlternativeBlock;->DW(I)Lgroovyjarjarantlr/Alternative;

    move-result-object v4

    iget-object v6, v4, Lgroovyjarjarantlr/Alternative;->j6:Lgroovyjarjarantlr/AlternativeElement;

    iget-boolean v7, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v7, :cond_87

    iget-object v4, v4, Lgroovyjarjarantlr/Alternative;->DW:Lgroovyjarjarantlr/AlternativeElement;

    if-ne v6, v4, :cond_87

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " is empty"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_87
    invoke-virtual {v6, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_91
    const/4 v3, 0x1

    if-ne p1, v3, :cond_d2

    iget-boolean p1, p2, Lgroovyjarjarantlr/AlternativeBlock;->EQ:Z

    if-eqz p1, :cond_d2

    iget-boolean p1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    invoke-virtual {p0, p2, p1}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(Lgroovyjarjarantlr/AlternativeBlock;Z)Z

    move-result p1

    if-eqz p1, :cond_d2

    iget-boolean p1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz p1, :cond_c4

    iget-object p1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    check-cast p1, Lgroovyjarjarantlr/LexerGrammar;

    iget-object p1, p1, Lgroovyjarjarantlr/LexerGrammar;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-object p2, v1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p2}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH()[I

    move-result-object p2

    :goto_b6
    array-length v3, p2

    if-ge v2, v3, :cond_c1

    aget v3, p2, v2

    invoke-virtual {p1, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Zo(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    :cond_c1
    iput-object p1, v1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    goto :goto_d2

    :cond_c4
    iget-object p1, v1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-object p2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object p2, p2, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {p2}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result p2

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p2}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    :cond_d2
    :goto_d2
    iput-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    return-object v1
.end method

.method public j6(ILgroovyjarjarantlr/BlockEndElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_30

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookBlockEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "); lock is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_30
    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3c

    new-instance p1, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {p1}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    return-object p1

    :cond_3c
    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    instance-of v1, v0, Lgroovyjarjarantlr/ZeroOrMoreBlock;

    if-nez v1, :cond_4d

    instance-of v0, v0, Lgroovyjarjarantlr/OneOrMoreBlock;

    if-eqz v0, :cond_47

    goto :goto_4d

    :cond_47
    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    goto :goto_5d

    :cond_4d
    :goto_4d
    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    invoke-virtual {p0, p1, v0}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-object v1, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    :goto_5d
    iget-object p2, p2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    instance-of v1, p2, Lgroovyjarjarantlr/TreeElement;

    if-eqz v1, :cond_6c

    const/4 p1, 0x3

    invoke-static {p1}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    :goto_68
    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    goto :goto_7b

    :cond_6c
    instance-of v1, p2, Lgroovyjarjarantlr/SynPredBlock;

    if-eqz v1, :cond_74

    invoke-virtual {v0}, Lgroovyjarjarantlr/Lookahead;->FH()V

    goto :goto_7b

    :cond_74
    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    goto :goto_68

    :goto_7b
    return-object v0
.end method

.method public j6(ILgroovyjarjarantlr/CharLiteralElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookCharLiteral("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x1

    if-le p1, v0, :cond_32

    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_32
    iget-boolean p1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz p1, :cond_9b

    iget-boolean p1, p2, Lgroovyjarjarantlr/GrammarAtom;->tp:Z

    if-eqz p1, :cond_92

    iget-object p1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    check-cast p1, Lgroovyjarjarantlr/LexerGrammar;

    iget-object p1, p1, Lgroovyjarjarantlr/LexerGrammar;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_64

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "charVocab is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_64
    invoke-direct {p0, p1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;Lgroovyjarjarantlr/AlternativeElement;)V

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_85

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "charVocab after removal of prior alt lookahead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_85
    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result p2

    invoke-virtual {p1, p2}, Lgroovyjarjarantlr/collections/impl/BitSet;->DW(I)V

    new-instance p2, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {p2, p1}, Lgroovyjarjarantlr/Lookahead;-><init>(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    return-object p2

    :cond_92
    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result p1

    invoke-static {p1}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_9b
    iget-object p1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->FH:Lgroovyjarjarantlr/Tool;

    const-string v0, "Character literal reference found in parser"

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/Tool;->FH(Ljava/lang/String;)V

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result p1

    invoke-static {p1}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/CharRangeElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookCharRange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x1

    if-le p1, v0, :cond_32

    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_32
    iget-char p1, p2, Lgroovyjarjarantlr/CharRangeElement;->gn:C

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->v5(I)Lgroovyjarjarantlr/collections/impl/BitSet;

    move-result-object p1

    iget-char v1, p2, Lgroovyjarjarantlr/CharRangeElement;->gn:C

    add-int/2addr v1, v0

    :goto_3b
    iget-char v0, p2, Lgroovyjarjarantlr/CharRangeElement;->u7:C

    if-gt v1, v0, :cond_45

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_45
    new-instance p2, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {p2, p1}, Lgroovyjarjarantlr/Lookahead;-><init>(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    return-object p2
.end method

.method public j6(ILgroovyjarjarantlr/GrammarAtom;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_33

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_33
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->FH:Lgroovyjarjarantlr/Tool;

    const-string v1, "token reference found in lexer"

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Tool;->FH(Ljava/lang/String;)V

    :cond_3e
    const/4 v0, 0x1

    if-le p1, v0, :cond_49

    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_49
    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result p1

    invoke-static {p1}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    iget-boolean v0, p2, Lgroovyjarjarantlr/GrammarAtom;->tp:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v0}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result v0

    iget-object v1, p1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    iget-object v0, p1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-direct {p0, v0, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;Lgroovyjarjarantlr/AlternativeElement;)V

    :cond_68
    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/OneOrMoreBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/RuleBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookRuleBlk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    check-cast v3, Lgroovyjarjarantlr/RuleBlock;

    iget-boolean v4, v0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    invoke-virtual {v3}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_16

    invoke-static {v3}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_16
    iget-boolean v4, v0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    const-string v5, ","

    if-eqz v4, :cond_3d

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "FOLLOW("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3d
    iget-object v4, v2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    aget-boolean v6, v4, v1

    if-eqz v6, :cond_63

    iget-boolean v1, v0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v1, :cond_5d

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "FOLLOW cycle to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5d
    new-instance v1, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v1, v3}, Lgroovyjarjarantlr/Lookahead;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_63
    iget-object v6, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    const-string v8, "saving FOLLOW("

    const-string v9, ": "

    const-string v10, ") for "

    if-eqz v6, :cond_192

    iget-boolean v4, v0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v4, :cond_a2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "cache entry FOLLOW("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v11, v11, v1

    iget-object v12, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v13, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v11, v5, v12, v13}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a2
    iget-object v4, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v6, v4, v1

    iget-object v6, v6, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-nez v6, :cond_b3

    aget-object v1, v4, v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/Lookahead;

    return-object v1

    :cond_b3
    iget-object v6, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    aget-object v4, v4, v1

    iget-object v4, v4, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v4

    check-cast v4, Lgroovyjarjarantlr/RuleSymbol;

    invoke-virtual {v4}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object v4

    iget-object v4, v4, Lgroovyjarjarantlr/RuleBlock;->J0:Lgroovyjarjarantlr/RuleEndElement;

    iget-object v6, v4, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v6, v6, v1

    if-nez v6, :cond_d6

    iget-object v2, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/Lookahead;

    return-object v1

    :cond_d6
    iget-boolean v6, v0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    const-string v11, ": from "

    if-eqz v6, :cond_12c

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "combining FOLLOW("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v13, v13, v1

    iget-object v14, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v15, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v13, v5, v14, v15}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, " with FOLLOW for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v4, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    check-cast v13, Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v13}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, v4, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v9, v9, v1

    iget-object v13, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v14, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v9, v5, v13, v14}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12c
    iget-object v6, v4, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v9, v6, v1

    iget-object v9, v9, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-nez v9, :cond_144

    iget-object v4, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v4, v4, v1

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    iget-object v4, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v4, v4, v1

    iput-object v7, v4, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    goto :goto_157

    :cond_144
    invoke-virtual {v0, v1, v4}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v4

    iget-object v6, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v6, v6, v1

    invoke-virtual {v6, v4}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    iget-object v6, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v6, v6, v1

    iget-object v4, v4, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    iput-object v4, v6, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    :goto_157
    iget-boolean v4, v0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v4, :cond_187

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v3, v3, v1

    iget-object v7, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v8, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v3, v5, v7, v8}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_187
    iget-object v2, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/Lookahead;

    return-object v1

    :cond_192
    const/4 v6, 0x1

    aput-boolean v6, v4, v1

    new-instance v4, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v4}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    iget-object v11, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v11, v3}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v11

    check-cast v11, Lgroovyjarjarantlr/RuleSymbol;

    const/4 v13, 0x0

    :goto_1a3
    invoke-virtual {v11}, Lgroovyjarjarantlr/RuleSymbol;->DW()I

    move-result v14

    if-ge v13, v14, :cond_23d

    invoke-virtual {v11, v13}, Lgroovyjarjarantlr/RuleSymbol;->j6(I)Lgroovyjarjarantlr/RuleRefElement;

    move-result-object v14

    iget-boolean v15, v0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    const-string v6, "] is "

    if-eqz v15, :cond_1d5

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "next["

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v14, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v7}, Lgroovyjarjarantlr/GrammarElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1d5
    iget-object v7, v14, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v7, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v7

    iget-boolean v12, v0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v12, :cond_201

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "FIRST of next["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, "] ptr is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lgroovyjarjarantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_201
    iget-object v12, v7, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-eqz v12, :cond_20f

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20f

    const/4 v12, 0x0

    iput-object v12, v7, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    goto :goto_210

    :cond_20f
    const/4 v12, 0x0

    :goto_210
    invoke-virtual {v4, v7}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    iget-boolean v7, v0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v7, :cond_237

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "combined FOLLOW["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_237
    add-int/lit8 v13, v13, 0x1

    move-object v7, v12

    const/4 v6, 0x1

    goto/16 :goto_1a3

    :cond_23d
    iget-object v6, v2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    const/4 v7, 0x0

    aput-boolean v7, v6, v1

    iget-object v6, v4, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v6}, Lgroovyjarjarantlr/collections/impl/BitSet;->DW()Z

    move-result v6

    if-eqz v6, :cond_267

    iget-object v6, v4, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-nez v6, :cond_267

    iget-object v6, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    instance-of v7, v6, Lgroovyjarjarantlr/TreeWalkerGrammar;

    if-eqz v7, :cond_25b

    iget-object v6, v4, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v7, 0x3

    :goto_257
    invoke-virtual {v6, v7}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(I)V

    goto :goto_267

    :cond_25b
    instance-of v6, v6, Lgroovyjarjarantlr/LexerGrammar;

    if-eqz v6, :cond_263

    invoke-virtual {v4}, Lgroovyjarjarantlr/Lookahead;->FH()V

    goto :goto_267

    :cond_263
    iget-object v6, v4, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v7, 0x1

    goto :goto_257

    :cond_267
    :goto_267
    iget-boolean v6, v0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v6, :cond_293

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v8, v0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v4, v5, v3, v8}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_293
    iget-object v2, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    invoke-virtual {v4}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgroovyjarjarantlr/Lookahead;

    aput-object v3, v2, v1

    return-object v4
.end method

.method public j6(ILgroovyjarjarantlr/RuleRefElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 9

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookRuleRef("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object v1, p2, Lgroovyjarjarantlr/RuleRefElement;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/RuleSymbol;

    if-eqz v0, :cond_eb

    iget-boolean v1, v0, Lgroovyjarjarantlr/RuleSymbol;->FH:Z

    if-nez v1, :cond_39

    goto/16 :goto_eb

    :cond_39
    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object v0

    iget-object v0, v0, Lgroovyjarjarantlr/RuleBlock;->J0:Lgroovyjarjarantlr/RuleEndElement;

    iget-boolean v1, v0, Lgroovyjarjarantlr/RuleEndElement;->tp:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lgroovyjarjarantlr/RuleEndElement;->tp:Z

    iget-object v2, p2, Lgroovyjarjarantlr/RuleRefElement;->VH:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILjava/lang/String;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v2

    iget-boolean v3, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v3, :cond_66

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "back from rule ref to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p2, Lgroovyjarjarantlr/RuleRefElement;->VH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_66
    iput-boolean v1, v0, Lgroovyjarjarantlr/RuleEndElement;->tp:Z

    iget-object v0, v2, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->FH:Lgroovyjarjarantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "infinite recursion to rule "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " from rule "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p2, Lgroovyjarjarantlr/AlternativeElement;->Zo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v3}, Lgroovyjarjarantlr/Grammar;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarElement;->DW()I

    move-result v4

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarElement;->j6()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lgroovyjarjarantlr/Tool;->j6(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_9c
    invoke-virtual {v2}, Lgroovyjarjarantlr/Lookahead;->j6()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_c8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "rule ref to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p2, Lgroovyjarjarantlr/RuleRefElement;->VH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " has eps, depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c8
    invoke-virtual {v2}, Lgroovyjarjarantlr/Lookahead;->DW()V

    iget-object v0, v2, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH()[I

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v2, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v1, 0x0

    :goto_d5
    array-length v3, v0

    if-ge v1, v3, :cond_ea

    aget v3, v0, v1

    iget-object v4, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    sub-int v3, p1, v3

    sub-int v3, p1, v3

    invoke-virtual {v4, v3}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    :cond_ea
    return-object v2

    :cond_eb
    :goto_eb
    iget-object p1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->FH:Lgroovyjarjarantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "no definition of rule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p2, Lgroovyjarjarantlr/RuleRefElement;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v1}, Lgroovyjarjarantlr/Grammar;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarElement;->DW()I

    move-result v2

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarElement;->j6()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Lgroovyjarjarantlr/Tool;->j6(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p1, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {p1}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/StringLiteralElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookStringLiteral("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4e

    iget-object v0, p2, Lgroovyjarjarantlr/StringLiteralElement;->we:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_42

    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    iget-object p2, p2, Lgroovyjarjarantlr/StringLiteralElement;->we:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_42
    iget-object p2, p2, Lgroovyjarjarantlr/StringLiteralElement;->we:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_4e
    if-le p1, v1, :cond_58

    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_58
    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result p1

    invoke-static {p1}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    iget-boolean p2, p2, Lgroovyjarjarantlr/GrammarAtom;->tp:Z

    if-eqz p2, :cond_72

    iget-object p2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object p2, p2, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {p2}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result p2

    iget-object v0, p1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    :cond_72
    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/SynPredBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look=>("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/TokenRangeElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookTokenRange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x1

    if-le p1, v0, :cond_32

    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_32
    iget p1, p2, Lgroovyjarjarantlr/TokenRangeElement;->gn:I

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->v5(I)Lgroovyjarjarantlr/collections/impl/BitSet;

    move-result-object p1

    iget v1, p2, Lgroovyjarjarantlr/TokenRangeElement;->gn:I

    add-int/2addr v1, v0

    :goto_3b
    iget v0, p2, Lgroovyjarjarantlr/TokenRangeElement;->u7:I

    if-gt v1, v0, :cond_45

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_45
    new-instance p2, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {p2, p1}, Lgroovyjarjarantlr/Lookahead;-><init>(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    return-object p2
.end method

.method public j6(ILgroovyjarjarantlr/TreeElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_37

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lgroovyjarjarantlr/TreeElement;->we:Lgroovyjarjarantlr/GrammarAtom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lgroovyjarjarantlr/TreeElement;->we:Lgroovyjarjarantlr/GrammarAtom;

    invoke-virtual {v2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_37
    const/4 v0, 0x1

    if-le p1, v0, :cond_42

    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_42
    iget-object p1, p2, Lgroovyjarjarantlr/TreeElement;->we:Lgroovyjarjarantlr/GrammarAtom;

    instance-of v1, p1, Lgroovyjarjarantlr/WildcardElement;

    if-eqz v1, :cond_4d

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    goto :goto_69

    :cond_4d
    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result p1

    invoke-static {p1}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    iget-object p2, p2, Lgroovyjarjarantlr/TreeElement;->we:Lgroovyjarjarantlr/GrammarAtom;

    iget-boolean p2, p2, Lgroovyjarjarantlr/GrammarAtom;->tp:Z

    if-eqz p2, :cond_69

    iget-object p2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object p2, p2, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {p2}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result p2

    iget-object v0, p1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    :cond_69
    :goto_69
    return-object p1
.end method

.method public j6(ILgroovyjarjarantlr/WildcardElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 8

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    const-string v1, ","

    const-string v2, "look("

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x1

    if-le p1, v0, :cond_32

    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_32
    iget-boolean v3, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz v3, :cond_43

    iget-object p1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    check-cast p1, Lgroovyjarjarantlr/LexerGrammar;

    iget-object p1, p1, Lgroovyjarjarantlr/LexerGrammar;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgroovyjarjarantlr/collections/impl/BitSet;

    goto :goto_7b

    :cond_43
    new-instance v3, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-direct {v3, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v0}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_7a

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, ") after not: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7a
    move-object p1, v3

    :goto_7b
    new-instance p2, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {p2, p1}, Lgroovyjarjarantlr/Lookahead;-><init>(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    return-object p2
.end method

.method public j6(ILgroovyjarjarantlr/ZeroOrMoreBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look*("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-object p2, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    return-object v0
.end method

.method public j6(ILjava/lang/String;)Lgroovyjarjarantlr/Lookahead;
    .registers 11

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    const-string v1, ","

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "lookRuleName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v0, p2}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/RuleSymbol;

    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object v0

    iget-object v2, v0, Lgroovyjarjarantlr/RuleBlock;->Ws:[Z

    aget-boolean v3, v2, p1

    if-eqz v3, :cond_5d

    iget-boolean p1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz p1, :cond_57

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "infinite recursion to rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_57
    new-instance p1, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {p1, p2}, Lgroovyjarjarantlr/Lookahead;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5d
    iget-object v3, v0, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    aget-object v3, v3, p1

    const-string v4, " cache: "

    const-string v5, " result in FIRST "

    if-eqz v3, :cond_a4

    iget-boolean v2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v2, :cond_99

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "found depth "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, v0, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    aget-object p2, p2, p1

    iget-object v4, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v5, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {p2, v1, v4, v5}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_99
    iget-object p2, v0, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgroovyjarjarantlr/Lookahead;

    return-object p1

    :cond_a4
    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    invoke-virtual {p0, p1, v0}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/RuleBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v2

    iget-object v3, v0, Lgroovyjarjarantlr/RuleBlock;->Ws:[Z

    const/4 v6, 0x0

    aput-boolean v6, v3, p1

    iget-object v3, v0, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgroovyjarjarantlr/Lookahead;

    aput-object v6, v3, p1

    iget-boolean v3, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v3, :cond_ec

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "saving depth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, v0, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    aget-object p1, p2, p1

    iget-object p2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {p1, v1, p2, v0}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_ec
    return-object v2
.end method

.method public j6(Lgroovyjarjarantlr/AlternativeBlock;Z)Z
    .registers 8

    instance-of v0, p1, Lgroovyjarjarantlr/ZeroOrMoreBlock;

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    instance-of v0, p1, Lgroovyjarjarantlr/OneOrMoreBlock;

    if-nez v0, :cond_5c

    instance-of v0, p1, Lgroovyjarjarantlr/SynPredBlock;

    if-eqz v0, :cond_e

    goto :goto_5c

    :cond_e
    iget-object v0, p1, Lgroovyjarjarantlr/AlternativeBlock;->gn:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget-object v2, p1, Lgroovyjarjarantlr/AlternativeBlock;->gn:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_5b

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/AlternativeBlock;->DW(I)Lgroovyjarjarantlr/Alternative;

    move-result-object v2

    iget-object v4, v2, Lgroovyjarjarantlr/Alternative;->FH:Lgroovyjarjarantlr/SynPredBlock;

    if-nez v4, :cond_5a

    iget-object v4, v2, Lgroovyjarjarantlr/Alternative;->Hw:Ljava/lang/String;

    if-nez v4, :cond_5a

    iget-object v4, v2, Lgroovyjarjarantlr/Alternative;->v5:Lgroovyjarjarantlr/ExceptionSpec;

    if-eqz v4, :cond_32

    goto :goto_5a

    :cond_32
    iget-object v2, v2, Lgroovyjarjarantlr/Alternative;->j6:Lgroovyjarjarantlr/AlternativeElement;

    instance-of v4, v2, Lgroovyjarjarantlr/CharLiteralElement;

    if-nez v4, :cond_4a

    instance-of v4, v2, Lgroovyjarjarantlr/TokenRefElement;

    if-nez v4, :cond_4a

    instance-of v4, v2, Lgroovyjarjarantlr/CharRangeElement;

    if-nez v4, :cond_4a

    instance-of v4, v2, Lgroovyjarjarantlr/TokenRangeElement;

    if-nez v4, :cond_4a

    instance-of v4, v2, Lgroovyjarjarantlr/StringLiteralElement;

    if-eqz v4, :cond_5a

    if-nez p2, :cond_5a

    :cond_4a
    iget-object v4, v2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    instance-of v4, v4, Lgroovyjarjarantlr/BlockEndElement;

    if-eqz v4, :cond_5a

    invoke-virtual {v2}, Lgroovyjarjarantlr/AlternativeElement;->FH()I

    move-result v2

    if-eq v2, v3, :cond_57

    goto :goto_5a

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_5a
    :goto_5a
    return v1

    :cond_5b
    return v3

    :cond_5c
    :goto_5c
    return v1
.end method
