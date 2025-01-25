.class public abstract Lgroovyjarjarantlr/CodeGenerator;
.super Ljava/lang/Object;


# instance fields
.field protected DW:I

.field protected FH:Lgroovyjarjarantlr/Grammar;

.field protected Hw:Lgroovyjarjarantlr/collections/impl/Vector;

.field protected VH:I

.field protected Zo:Z

.field protected gn:I

.field protected j6:Lgroovyjarjarantlr/Tool;

.field protected v5:Lgroovyjarjarantlr/CharFormatter;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgroovyjarjarantlr/CodeGenerator;->DW:I

    const/4 v1, 0x0

    iput-object v1, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iput-boolean v0, p0, Lgroovyjarjarantlr/CodeGenerator;->Zo:Z

    const/4 v0, 0x2

    iput v0, p0, Lgroovyjarjarantlr/CodeGenerator;->VH:I

    const/4 v0, 0x4

    iput v0, p0, Lgroovyjarjarantlr/CodeGenerator;->gn:I

    return-void
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public DW(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object p1

    instance-of v0, p1, Lgroovyjarjarantlr/RuleSymbol;

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    check-cast p1, Lgroovyjarjarantlr/RuleSymbol;

    invoke-virtual {p1}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object p1

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->j6:Lgroovyjarjarantlr/LLkGrammarAnalyzer;

    iget-object p1, p1, Lgroovyjarjarantlr/RuleBlock;->J0:Lgroovyjarjarantlr/RuleEndElement;

    invoke-interface {v0, p2, p1}, Lgroovyjarjarantlr/LLkGrammarAnalyzer;->j6(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    iget-object p1, p1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CodeGenerator;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)I

    move-result p1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CodeGenerator;->j6(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected j6(Lgroovyjarjarantlr/collections/impl/BitSet;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lgroovyjarjarantlr/CodeGenerator;->Hw:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lgroovyjarjarantlr/CodeGenerator;->Hw:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->Hw:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW(Ljava/lang/Object;)V

    iget-object p1, p0, Lgroovyjarjarantlr/CodeGenerator;->Hw:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method protected j6(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_tokenSet_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract j6(Lgroovyjarjarantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract j6(Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
.end method

.method public j6(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object p1

    instance-of v0, p1, Lgroovyjarjarantlr/RuleSymbol;

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    check-cast p1, Lgroovyjarjarantlr/RuleSymbol;

    invoke-virtual {p1}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object p1

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->j6:Lgroovyjarjarantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p2, p1}, Lgroovyjarjarantlr/LLkGrammarAnalyzer;->j6(ILgroovyjarjarantlr/RuleBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    iget-object p1, p1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CodeGenerator;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)I

    move-result p1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CodeGenerator;->j6(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;
.end method
