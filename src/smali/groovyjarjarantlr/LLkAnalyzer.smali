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
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    iget v1, v0, Lgroovyjarjarantlr/AlternativeBlock;->tp:I

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/AlternativeBlock;->DW(I)Lgroovyjarjarantlr/Alternative;

    move-result-object v0

    iget-object v0, v0, Lgroovyjarjarantlr/Alternative;->j6:Lgroovyjarjarantlr/AlternativeElement;

    instance-of v1, v0, Lgroovyjarjarantlr/TreeElement;

    if-eqz v1, :cond_1

    check-cast v0, Lgroovyjarjarantlr/TreeElement;

    iget-object v0, v0, Lgroovyjarjarantlr/TreeElement;->we:Lgroovyjarjarantlr/GrammarAtom;

    if-eq v0, p2, :cond_2

    :cond_0
    return-void

    :cond_1
    if-ne p2, v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    iget v2, v1, Lgroovyjarjarantlr/AlternativeBlock;->tp:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/AlternativeBlock;->DW(I)Lgroovyjarjarantlr/Alternative;

    move-result-object v1

    iget-object v1, v1, Lgroovyjarjarantlr/Alternative;->j6:Lgroovyjarjarantlr/AlternativeElement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v1

    iget-object v1, v1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->DW(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public DW(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    iget-boolean v0, p2, Lgroovyjarjarantlr/RuleEndElement;->tp:Z

    if-eqz v0, :cond_1

    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    invoke-virtual {v0}, Lgroovyjarjarantlr/Lookahead;->FH()V

    invoke-static {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->v5(I)Lgroovyjarjarantlr/collections/impl/BitSet;

    move-result-object v1

    iput-object v1, v0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    goto :goto_0
.end method

.method public j6(ILgroovyjarjarantlr/ActionElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    return-object v0
.end method

.method public j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 11

    const/4 v1, 0x0

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "lookAltBlk("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    iput-object p2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    new-instance v3, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v3}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    move v0, v1

    :goto_0
    iget-object v4, p2, Lgroovyjarjarantlr/AlternativeBlock;->gn:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v4}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-boolean v4, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "alt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    iput v0, v4, Lgroovyjarjarantlr/AlternativeBlock;->tp:I

    invoke-virtual {p2, v0}, Lgroovyjarjarantlr/AlternativeBlock;->DW(I)Lgroovyjarjarantlr/Alternative;

    move-result-object v4

    iget-object v5, v4, Lgroovyjarjarantlr/Alternative;->j6:Lgroovyjarjarantlr/AlternativeElement;

    iget-boolean v6, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v6, :cond_2

    iget-object v4, v4, Lgroovyjarjarantlr/Alternative;->DW:Lgroovyjarjarantlr/AlternativeElement;

    if-ne v5, v4, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "alt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " is empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v5, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-boolean v0, p2, Lgroovyjarjarantlr/AlternativeBlock;->EQ:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    invoke-virtual {p0, p2, v0}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(Lgroovyjarjarantlr/AlternativeBlock;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    check-cast v0, Lgroovyjarjarantlr/LexerGrammar;

    iget-object v0, v0, Lgroovyjarjarantlr/LexerGrammar;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-object v4, v3, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH()[I

    move-result-object v4

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget v5, v4, v1

    invoke-virtual {v0, v5}, Lgroovyjarjarantlr/collections/impl/BitSet;->Zo(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput-object v0, v3, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    :cond_5
    :goto_2
    iput-object v2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->DW:Lgroovyjarjarantlr/AlternativeBlock;

    return-object v3

    :cond_6
    iget-object v0, v3, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v1, 0x4

    iget-object v4, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object v4, v4, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v4}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    goto :goto_2
.end method

.method public j6(ILgroovyjarjarantlr/BlockEndElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    instance-of v1, v0, Lgroovyjarjarantlr/ZeroOrMoreBlock;

    if-nez v1, :cond_2

    instance-of v0, v0, Lgroovyjarjarantlr/OneOrMoreBlock;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    invoke-virtual {p0, p1, v0}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-object v1, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    :goto_1
    iget-object v1, p2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    instance-of v2, v1, Lgroovyjarjarantlr/TreeElement;

    if-eqz v2, :cond_4

    const/4 v1, 0x3

    invoke-static {v1}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lgroovyjarjarantlr/SynPredBlock;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lgroovyjarjarantlr/Lookahead;->FH()V

    goto :goto_0

    :cond_5
    iget-object v1, v1, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v1, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    goto :goto_0
.end method

.method public j6(ILgroovyjarjarantlr/CharLiteralElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 7

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p2, Lgroovyjarjarantlr/GrammarAtom;->tp:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    check-cast v0, Lgroovyjarjarantlr/LexerGrammar;

    iget-object v0, v0, Lgroovyjarjarantlr/LexerGrammar;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-boolean v1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "charVocab is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;Lgroovyjarjarantlr/AlternativeElement;)V

    iget-boolean v1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "charVocab after removal of prior alt lookahead "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->DW(I)V

    new-instance v1, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/Lookahead;-><init>(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v0

    invoke-static {v0}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->FH:Lgroovyjarjarantlr/Tool;

    const-string v1, "Character literal reference found in parser"

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Tool;->FH(Ljava/lang/String;)V

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v0

    invoke-static {v0}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    goto :goto_0
.end method

.method public j6(ILgroovyjarjarantlr/CharRangeElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-char v0, p2, Lgroovyjarjarantlr/CharRangeElement;->gn:C

    invoke-static {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->v5(I)Lgroovyjarjarantlr/collections/impl/BitSet;

    move-result-object v1

    iget-char v0, p2, Lgroovyjarjarantlr/CharRangeElement;->gn:C

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-char v2, p2, Lgroovyjarjarantlr/CharRangeElement;->u7:C

    if-gt v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/Lookahead;-><init>(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_0
.end method

.method public j6(ILgroovyjarjarantlr/GrammarAtom;)Lgroovyjarjarantlr/Lookahead;
    .registers 7

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->FH:Lgroovyjarjarantlr/Tool;

    const-string v1, "token reference found in lexer"

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Tool;->FH(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v0

    invoke-static {v0}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-boolean v1, p2, Lgroovyjarjarantlr/GrammarAtom;->tp:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object v1, v1, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v1}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result v1

    iget-object v2, v0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    iget-object v1, v0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-direct {p0, v1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;Lgroovyjarjarantlr/AlternativeElement;)V

    goto :goto_0
.end method

.method public j6(ILgroovyjarjarantlr/OneOrMoreBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    return-object v0
.end method

.method public j6(ILgroovyjarjarantlr/RuleBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    return-object v0
.end method

.method public j6(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    check-cast v0, Lgroovyjarjarantlr/RuleBlock;

    iget-boolean v1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgroovyjarjarantlr/CodeGenerator;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "FOLLOW("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    aget-boolean v2, v0, p1

    if-eqz v2, :cond_3

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FOLLOW cycle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/Lookahead;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v2, v2, p1

    if-eqz v2, :cond_a

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "cache entry FOLLOW("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v3, v3, p1

    const-string v4, ","

    iget-object v5, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v6, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v3, v4, v5, v6}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v2, v0, p1

    iget-object v2, v2, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-nez v2, :cond_5

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/Lookahead;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    aget-object v0, v0, p1

    iget-object v0, v0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/RuleSymbol;

    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object v0

    iget-object v2, v0, Lgroovyjarjarantlr/RuleBlock;->J0:Lgroovyjarjarantlr/RuleEndElement;

    iget-object v0, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v0, v0, p1

    if-nez v0, :cond_6

    iget-object v0, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/Lookahead;

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_7

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "combining FOLLOW("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ") for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": from "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v0, v0, p1

    const-string v5, ","

    iget-object v6, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v7, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v0, v5, v6, v7}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " with FOLLOW for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v2, Lgroovyjarjarantlr/BlockEndElement;->gn:Lgroovyjarjarantlr/AlternativeBlock;

    check-cast v0, Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v0, v0, p1

    const-string v5, ","

    iget-object v6, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v7, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v0, v5, v6, v7}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v0, v2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v3, v0, p1

    iget-object v3, v3, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v2, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v2, v2, p1

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    iget-object v0, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v0, v0, p1

    iput-object v10, v0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    :goto_2
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "saving FOLLOW("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v1, v1, p1

    const-string v3, ","

    iget-object v4, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v5, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v1, v3, v4, v5}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/Lookahead;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, p1, v2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-object v2, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    iget-object v2, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    aget-object v2, v2, p1

    iget-object v0, v0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    iput-object v0, v2, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    goto :goto_2

    :cond_a
    aput-boolean v9, v0, p1

    new-instance v4, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v4}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/RuleSymbol;

    move v2, v3

    :goto_3
    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleSymbol;->DW()I

    move-result v5

    if-ge v2, v5, :cond_f

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/RuleSymbol;->j6(I)Lgroovyjarjarantlr/RuleRefElement;

    move-result-object v5

    iget-boolean v6, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v6, :cond_b

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "next["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "] is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v5, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v8}, Lgroovyjarjarantlr/GrammarElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    iget-object v5, v5, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v5, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v5

    iget-boolean v6, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v6, :cond_c

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "FIRST of next["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "] ptr is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lgroovyjarjarantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v6, v5, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-eqz v6, :cond_d

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iput-object v10, v5, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    :cond_d
    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    iget-boolean v5, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v5, :cond_e

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "combined FOLLOW["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "] is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lgroovyjarjarantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_f
    iget-object v0, p2, Lgroovyjarjarantlr/BlockEndElement;->VH:[Z

    aput-boolean v3, v0, p1

    iget-object v0, v4, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->DW()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v4, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    instance-of v2, v0, Lgroovyjarjarantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_12

    iget-object v0, v4, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(I)V

    :cond_10
    :goto_4
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_11

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "saving FOLLOW("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    iget-object v3, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v5, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v4, v1, v3, v5}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    iget-object v1, p2, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    invoke-virtual {v4}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/Lookahead;

    aput-object v0, v1, p1

    move-object v0, v4

    goto/16 :goto_1

    :cond_12
    instance-of v0, v0, Lgroovyjarjarantlr/LexerGrammar;

    if-eqz v0, :cond_13

    invoke-virtual {v4}, Lgroovyjarjarantlr/Lookahead;->FH()V

    goto :goto_4

    :cond_13
    iget-object v0, v4, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, v9}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(I)V

    goto :goto_4
.end method

.method public j6(ILgroovyjarjarantlr/RuleRefElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 9

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object v1, p2, Lgroovyjarjarantlr/RuleRefElement;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/RuleSymbol;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lgroovyjarjarantlr/RuleSymbol;->FH:Z

    if-nez v1, :cond_2

    :cond_1
    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->FH:Lgroovyjarjarantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "no definition of rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lgroovyjarjarantlr/RuleRefElement;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v2}, Lgroovyjarjarantlr/Grammar;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarElement;->DW()I

    move-result v3

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarElement;->j6()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lgroovyjarjarantlr/Tool;->j6(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object v0

    iget-object v0, v0, Lgroovyjarjarantlr/RuleBlock;->J0:Lgroovyjarjarantlr/RuleEndElement;

    iget-boolean v2, v0, Lgroovyjarjarantlr/RuleEndElement;->tp:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgroovyjarjarantlr/RuleEndElement;->tp:Z

    iget-object v1, p2, Lgroovyjarjarantlr/RuleRefElement;->VH:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILjava/lang/String;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v1

    iget-boolean v3, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v3, :cond_3

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

    :cond_3
    iput-boolean v2, v0, Lgroovyjarjarantlr/RuleEndElement;->tp:Z

    iget-object v0, v1, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->FH:Lgroovyjarjarantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "infinite recursion to rule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " from rule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p2, Lgroovyjarjarantlr/AlternativeElement;->Zo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v3}, Lgroovyjarjarantlr/Grammar;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarElement;->DW()I

    move-result v4

    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarElement;->j6()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lgroovyjarjarantlr/Tool;->j6(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    invoke-virtual {v1}, Lgroovyjarjarantlr/Lookahead;->j6()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "rule ref to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p2, Lgroovyjarjarantlr/RuleRefElement;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " has eps, depth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lgroovyjarjarantlr/Lookahead;->DW()V

    iget-object v0, v1, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->FH()[I

    move-result-object v2

    const/4 v0, 0x0

    iput-object v0, v1, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget v3, v2, v0

    iget-object v4, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    sub-int v3, p1, v3

    sub-int v3, p1, v3

    invoke-virtual {v4, v3}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public j6(ILgroovyjarjarantlr/StringLiteralElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 7

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz v0, :cond_3

    iget-object v0, p2, Lgroovyjarjarantlr/StringLiteralElement;->we:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    iget-object v1, p2, Lgroovyjarjarantlr/StringLiteralElement;->we:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p2, Lgroovyjarjarantlr/StringLiteralElement;->we:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-le p1, v0, :cond_4

    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v0

    invoke-static {v0}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-boolean v1, p2, Lgroovyjarjarantlr/GrammarAtom;->tp:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object v1, v1, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v1}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result v1

    iget-object v2, v0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    goto :goto_0
.end method

.method public j6(ILgroovyjarjarantlr/SynPredBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    return-object v0
.end method

.method public j6(ILgroovyjarjarantlr/TokenRangeElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p2, Lgroovyjarjarantlr/TokenRangeElement;->gn:I

    invoke-static {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->v5(I)Lgroovyjarjarantlr/collections/impl/BitSet;

    move-result-object v1

    iget v0, p2, Lgroovyjarjarantlr/TokenRangeElement;->gn:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget v2, p2, Lgroovyjarjarantlr/TokenRangeElement;->u7:I

    if-gt v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/Lookahead;-><init>(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_0
.end method

.method public j6(ILgroovyjarjarantlr/TreeElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 7

    const/4 v3, 0x1

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    if-le p1, v3, :cond_2

    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p2, Lgroovyjarjarantlr/TreeElement;->we:Lgroovyjarjarantlr/GrammarAtom;

    instance-of v1, v0, Lgroovyjarjarantlr/WildcardElement;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v0

    invoke-static {v0}, Lgroovyjarjarantlr/Lookahead;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-object v1, p2, Lgroovyjarjarantlr/TreeElement;->we:Lgroovyjarjarantlr/GrammarAtom;

    iget-boolean v1, v1, Lgroovyjarjarantlr/GrammarAtom;->tp:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object v1, v1, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v1}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result v1

    iget-object v2, v0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    goto :goto_0
.end method

.method public j6(ILgroovyjarjarantlr/WildcardElement;)Lgroovyjarjarantlr/Lookahead;
    .registers 7

    const/4 v3, 0x1

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look("

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

    :cond_0
    if-le p1, v3, :cond_1

    iget-object v0, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->v5:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    check-cast v0, Lgroovyjarjarantlr/LexerGrammar;

    iget-object v0, v0, Lgroovyjarjarantlr/LexerGrammar;->gn:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    :cond_2
    :goto_1
    new-instance v1, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/Lookahead;-><init>(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-direct {v0, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>(I)V

    const/4 v1, 0x4

    iget-object v2, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    iget-object v2, v2, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v2}, Lgroovyjarjarantlr/TokenManager;->DW()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(II)V

    iget-boolean v1, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "look("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, ") after not: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public j6(ILgroovyjarjarantlr/ZeroOrMoreBlock;)Lgroovyjarjarantlr/Lookahead;
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-object v1, p2, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v1, p1}, Lgroovyjarjarantlr/GrammarElement;->j6(I)Lgroovyjarjarantlr/Lookahead;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Lookahead;->j6(Lgroovyjarjarantlr/Lookahead;)V

    return-object v0
.end method

.method public j6(ILjava/lang/String;)Lgroovyjarjarantlr/Lookahead;
    .registers 10

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookRuleName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v0, p2}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/RuleSymbol;

    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object v2

    iget-object v0, v2, Lgroovyjarjarantlr/RuleBlock;->Ws:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "infinite recursion to rule "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0, p2}, Lgroovyjarjarantlr/Lookahead;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_2
    iget-object v1, v2, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    aget-object v1, v1, p1

    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "found depth "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " result in FIRST "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    aget-object v3, v3, p1

    const-string v4, ","

    iget-object v5, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v6, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v3, v4, v5, v6}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v2, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/Lookahead;

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    invoke-virtual {p0, p1, v2}, Lgroovyjarjarantlr/LLkAnalyzer;->j6(ILgroovyjarjarantlr/RuleBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v1

    iget-object v0, v2, Lgroovyjarjarantlr/RuleBlock;->Ws:[Z

    const/4 v3, 0x0

    aput-boolean v3, v0, p1

    iget-object v3, v2, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    invoke-virtual {v1}, Lgroovyjarjarantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/Lookahead;

    aput-object v0, v3, p1

    iget-boolean v0, p0, Lgroovyjarjarantlr/LLkAnalyzer;->j6:Z

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "saving depth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " result in FIRST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lgroovyjarjarantlr/RuleBlock;->QX:[Lgroovyjarjarantlr/Lookahead;

    aget-object v2, v2, p1

    const-string v4, ","

    iget-object v5, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Zo:Lgroovyjarjarantlr/CharFormatter;

    iget-object v6, p0, Lgroovyjarjarantlr/LLkAnalyzer;->Hw:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v2, v4, v5, v6}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public j6(Lgroovyjarjarantlr/AlternativeBlock;Z)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lgroovyjarjarantlr/ZeroOrMoreBlock;

    if-nez v0, :cond_0

    instance-of v0, p1, Lgroovyjarjarantlr/OneOrMoreBlock;

    if-nez v0, :cond_0

    instance-of v0, p1, Lgroovyjarjarantlr/SynPredBlock;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p1, Lgroovyjarjarantlr/AlternativeBlock;->gn:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget-object v3, p1, Lgroovyjarjarantlr/AlternativeBlock;->gn:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/AlternativeBlock;->DW(I)Lgroovyjarjarantlr/Alternative;

    move-result-object v3

    iget-object v4, v3, Lgroovyjarjarantlr/Alternative;->FH:Lgroovyjarjarantlr/SynPredBlock;

    if-nez v4, :cond_0

    iget-object v4, v3, Lgroovyjarjarantlr/Alternative;->Hw:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, v3, Lgroovyjarjarantlr/Alternative;->v5:Lgroovyjarjarantlr/ExceptionSpec;

    if-nez v4, :cond_0

    iget-object v3, v3, Lgroovyjarjarantlr/Alternative;->j6:Lgroovyjarjarantlr/AlternativeElement;

    instance-of v4, v3, Lgroovyjarjarantlr/CharLiteralElement;

    if-nez v4, :cond_2

    instance-of v4, v3, Lgroovyjarjarantlr/TokenRefElement;

    if-nez v4, :cond_2

    instance-of v4, v3, Lgroovyjarjarantlr/CharRangeElement;

    if-nez v4, :cond_2

    instance-of v4, v3, Lgroovyjarjarantlr/TokenRangeElement;

    if-nez v4, :cond_2

    instance-of v4, v3, Lgroovyjarjarantlr/StringLiteralElement;

    if-eqz v4, :cond_0

    if-nez p2, :cond_0

    :cond_2
    iget-object v4, v3, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    instance-of v4, v4, Lgroovyjarjarantlr/BlockEndElement;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lgroovyjarjarantlr/AlternativeElement;->FH()I

    move-result v3

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method
