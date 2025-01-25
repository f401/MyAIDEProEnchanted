.class public Lgroovyjarjarantlr/CppCodeGenerator;
.super Lgroovyjarjarantlr/CodeGenerator;


# static fields
.field private static EQ:Ljava/lang/String;

.field private static tp:Ljava/lang/String;

.field protected static final u7:Ljava/lang/String;

.field private static we:Lgroovyjarjarantlr/NameSpace;


# instance fields
.field J0:Z

.field protected J8:I

.field Mr:Ljava/lang/String;

.field protected QX:Z

.field U2:Lgroovyjarjarantlr/RuleBlock;

.field protected Ws:Z

.field protected XL:Z

.field a8:Ljava/util/Hashtable;

.field protected aM:Z

.field private er:Lgroovyjarjarantlr/collections/impl/Vector;

.field j3:Z

.field lg:Ljava/util/Hashtable;

.field rN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lgroovyjarjarantlr/CppCodeGenerator;->u7:Ljava/lang/String;

    const-string v0, "ANTLR_USE_NAMESPACE(std)"

    sput-object v0, Lgroovyjarjarantlr/CppCodeGenerator;->tp:Ljava/lang/String;

    const-string v0, "ANTLR_USE_NAMESPACE(antlr)"

    sput-object v0, Lgroovyjarjarantlr/CppCodeGenerator;->EQ:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lgroovyjarjarantlr/CppCodeGenerator;->we:Lgroovyjarjarantlr/NameSpace;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lgroovyjarjarantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->J0:Z

    iput v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->J8:I

    iput-boolean v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->Ws:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->QX:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lgroovyjarjarantlr/CppCodeGenerator;->XL:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->aM:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->j3:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->a8:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->lg:Ljava/util/Hashtable;

    iput v1, p0, Lgroovyjarjarantlr/CppCodeGenerator;->rN:I

    new-instance v0, Lgroovyjarjarantlr/CppCharFormatter;

    invoke-direct {v0}, Lgroovyjarjarantlr/CppCharFormatter;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->v5:Lgroovyjarjarantlr/CharFormatter;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->j3:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    instance-of v1, v0, Lgroovyjarjarantlr/TreeWalkerGrammar;

    if-nez v1, :cond_e

    instance-of v0, v0, Lgroovyjarjarantlr/ParserGrammar;

    if-eqz v0, :cond_33

    :cond_e
    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v0, p1}, Lgroovyjarjarantlr/TokenManager;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lgroovyjarjarantlr/CppCodeGenerator;->EQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "RefAST("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_33
    return-object p1
.end method

.method public j6(Lgroovyjarjarantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, ")"

    const-string v1, "astFactory->create("

    if-eqz p1, :cond_b3

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lgroovyjarjarantlr/CppCodeGenerator;->er:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/Vector;->DW(I)V

    iget-object v2, p0, Lgroovyjarjarantlr/CppCodeGenerator;->er:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_31

    :cond_23
    iget-object v2, p0, Lgroovyjarjarantlr/CppCodeGenerator;->er:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->VH()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(Ljava/lang/Object;I)V

    goto :goto_a0

    :cond_31
    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Lgroovyjarjarantlr/CodeGenerator;->j6:Lgroovyjarjarantlr/Tool;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Attempt to redefine AST type for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->Zo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v5}, Lgroovyjarjarantlr/Grammar;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarElement;->DW()I

    move-result v6

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarElement;->j6()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lgroovyjarjarantlr/Tool;->DW(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v3, p0, Lgroovyjarjarantlr/CodeGenerator;->j6:Lgroovyjarjarantlr/Tool;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, " from \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" to \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" sticking to \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    invoke-virtual {v4}, Lgroovyjarjarantlr/Grammar;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarElement;->DW()I

    move-result v5

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarElement;->j6()I

    move-result p1

    invoke-virtual {v3, v2, v4, v5, p1}, Lgroovyjarjarantlr/Tool;->DW(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_a0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_a5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_ae
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b3
    const/16 p1, 0x2c

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_cd

    iget-object v2, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v2, v2, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lgroovyjarjarantlr/TokenManager;->j6(Ljava/lang/String;)Z

    move-result v4

    :cond_cd
    iget-boolean p1, p0, Lgroovyjarjarantlr/CppCodeGenerator;->j3:Z

    if-eqz p1, :cond_fc

    iget-object p1, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    instance-of v2, p1, Lgroovyjarjarantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_fc

    iget-object p1, p1, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {p1, p2}, Lgroovyjarjarantlr/TokenManager;->j6(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_fc

    if-nez v4, :cond_fc

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lgroovyjarjarantlr/CppCodeGenerator;->EQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "RefAST("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ae

    :cond_fc
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_a5
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v0

    if-nez v0, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lgroovyjarjarantlr/CppCodeGenerator;->Mr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "(astFactory->make((new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lgroovyjarjarantlr/CppCodeGenerator;->EQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "ASTArray("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_3b
    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v3

    if-ge v1, v3, :cond_61

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "->add("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/CppCodeGenerator;->U2:Lgroovyjarjarantlr/RuleBlock;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    instance-of v1, v0, Lgroovyjarjarantlr/TreeWalkerGrammar;

    const-string v2, "_in"

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    iget-boolean v0, v0, Lgroovyjarjarantlr/Grammar;->FH:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_30

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    if-ne v4, v6, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :cond_30
    :goto_30
    iget-object v1, p0, Lgroovyjarjarantlr/CppCodeGenerator;->U2:Lgroovyjarjarantlr/RuleBlock;

    iget-object v1, v1, Lgroovyjarjarantlr/RuleBlock;->J8:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v1

    const-string v4, "_AST"

    if-ge v3, v1, :cond_66

    iget-object v1, p0, Lgroovyjarjarantlr/CppCodeGenerator;->U2:Lgroovyjarjarantlr/RuleBlock;

    iget-object v1, v1, Lgroovyjarjarantlr/RuleBlock;->J8:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v1}, Lgroovyjarjarantlr/AlternativeElement;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    if-eqz v0, :cond_53

    goto :goto_62

    :cond_53
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_62
    return-object p1

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_66
    iget-object v1, p0, Lgroovyjarjarantlr/CppCodeGenerator;->a8:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c0

    sget-object p2, Lgroovyjarjarantlr/CppCodeGenerator;->u7:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, " in rule "

    const-string v5, "Ambiguous reference to AST element "

    if-ne v1, p2, :cond_9a

    iget-object p2, p0, Lgroovyjarjarantlr/CodeGenerator;->j6:Lgroovyjarjarantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_80
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lgroovyjarjarantlr/CppCodeGenerator;->U2:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {p1}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/Tool;->j6(Ljava/lang/String;)V

    return-object v3

    :cond_9a
    iget-object p2, p0, Lgroovyjarjarantlr/CppCodeGenerator;->U2:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {p2}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ae

    iget-object p2, p0, Lgroovyjarjarantlr/CodeGenerator;->j6:Lgroovyjarjarantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_80

    :cond_ae
    if-eqz v0, :cond_bf

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_bf
    return-object v1

    :cond_c0
    iget-object v1, p0, Lgroovyjarjarantlr/CppCodeGenerator;->U2:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v1}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    new-instance v1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_dc

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "_AST_in"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e5

    :cond_dc
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_e5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_ef

    if-nez v0, :cond_ef

    iput-object p1, p2, Lgroovyjarjarantlr/ActionTransInfo;->DW:Ljava/lang/String;

    :cond_ef
    return-object p1
.end method
