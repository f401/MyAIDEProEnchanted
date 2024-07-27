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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lgroovyjarjarantlr/CodeGenerator;->DW:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iput-boolean v1, p0, Lgroovyjarjarantlr/CodeGenerator;->Zo:Z

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

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public DW(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v0

    instance-of v1, v0, Lgroovyjarjarantlr/RuleSymbol;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lgroovyjarjarantlr/RuleSymbol;

    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object v0

    iget-object v1, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v1, v1, Lgroovyjarjarantlr/Grammar;->j6:Lgroovyjarjarantlr/LLkGrammarAnalyzer;

    iget-object v0, v0, Lgroovyjarjarantlr/RuleBlock;->J0:Lgroovyjarjarantlr/RuleEndElement;

    invoke-interface {v1, p2, v0}, Lgroovyjarjarantlr/LLkGrammarAnalyzer;->j6(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-object v0, v0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CodeGenerator;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)I

    move-result v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CodeGenerator;->j6(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected j6(Lgroovyjarjarantlr/collections/impl/BitSet;)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->Hw:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->Hw:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->Hw:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW(Ljava/lang/Object;)V

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->Hw:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method

.method protected j6(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_tokenSet_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract j6(Lgroovyjarjarantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract j6(Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
.end method

.method public j6(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Grammar;->j6(Ljava/lang/String;)Lgroovyjarjarantlr/GrammarSymbol;

    move-result-object v0

    instance-of v1, v0, Lgroovyjarjarantlr/RuleSymbol;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lgroovyjarjarantlr/RuleSymbol;

    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleSymbol;->j6()Lgroovyjarjarantlr/RuleBlock;

    move-result-object v0

    iget-object v1, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v1, v1, Lgroovyjarjarantlr/Grammar;->j6:Lgroovyjarjarantlr/LLkGrammarAnalyzer;

    invoke-interface {v1, p2, v0}, Lgroovyjarjarantlr/LLkGrammarAnalyzer;->j6(ILgroovyjarjarantlr/RuleBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    iget-object v0, v0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CodeGenerator;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)I

    move-result v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CodeGenerator;->j6(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;
.end method
