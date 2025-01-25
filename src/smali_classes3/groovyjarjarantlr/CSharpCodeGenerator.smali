.class public Lgroovyjarjarantlr/CSharpCodeGenerator;
.super Lgroovyjarjarantlr/CodeGenerator;


# static fields
.field private static tp:Lgroovyjarjarantlr/CSharpNameSpace;

.field protected static final u7:Ljava/lang/String;


# instance fields
.field protected EQ:I

.field protected J0:Z

.field J8:Z

.field QX:Lgroovyjarjarantlr/RuleBlock;

.field Ws:Ljava/lang/String;

.field XL:Ljava/util/Hashtable;

.field aM:Ljava/util/Hashtable;

.field j3:I

.field protected we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lgroovyjarjarantlr/CSharpCodeGenerator;->u7:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lgroovyjarjarantlr/CSharpCodeGenerator;->tp:Lgroovyjarjarantlr/CSharpNameSpace;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lgroovyjarjarantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->EQ:I

    iput-boolean v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->we:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->J0:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->J8:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->XL:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->aM:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->j3:I

    new-instance v0, Lgroovyjarjarantlr/CSharpCharFormatter;

    invoke-direct {v0}, Lgroovyjarjarantlr/CSharpCharFormatter;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->v5:Lgroovyjarjarantlr/CharFormatter;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->J8:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    instance-of v1, v0, Lgroovyjarjarantlr/TreeWalkerGrammar;

    if-nez v1, :cond_e

    instance-of v0, v0, Lgroovyjarjarantlr/ParserGrammar;

    if-eqz v0, :cond_29

    :cond_e
    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v0, p1}, Lgroovyjarjarantlr/TokenManager;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(AST)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_29
    return-object p1
.end method

.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_36

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-object p1, v3

    :cond_36
    iget-object v1, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v1, v1, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v1, p1}, Lgroovyjarjarantlr/TokenManager;->DW(Ljava/lang/String;)Lgroovyjarjarantlr/TokenSymbol;

    move-result-object p1

    const-string v1, ") "

    const-string v2, "("

    if-eqz p1, :cond_64

    invoke-virtual {p1}, Lgroovyjarjarantlr/TokenSymbol;->j6()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_64

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/TokenSymbol;->j6()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    :cond_64
    iget-boolean p1, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->J8:Z

    if-eqz p1, :cond_7f

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->Ws:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7f
    :goto_7f
    return-object v0
.end method

.method protected j6(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "tokenSet_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Lgroovyjarjarantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1d

    invoke-virtual {p0, p2}, Lgroovyjarjarantlr/CSharpCodeGenerator;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object v1

    const-string v2, ") "

    const-string v3, "("

    if-eqz v1, :cond_82

    iget-object v1, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v1, v1, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lgroovyjarjarantlr/TokenManager;->DW(Ljava/lang/String;)Lgroovyjarjarantlr/TokenSymbol;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lgroovyjarjarantlr/TokenSymbol;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_40

    goto :goto_55

    :cond_40
    if-eqz v1, :cond_9d

    invoke-virtual {v1}, Lgroovyjarjarantlr/TokenSymbol;->j6()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9d

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/TokenSymbol;->j6()Ljava/lang/String;

    move-result-object p2

    goto :goto_90

    :cond_55
    :goto_55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ") astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ", \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    :cond_82
    iget-boolean p1, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->J8:Z

    if-eqz p1, :cond_9d

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->Ws:Ljava/lang/String;

    :goto_90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9d
    :goto_9d
    return-object v0
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
    .registers 6

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

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->Ws:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ") astFactory.make("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_32
    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v2

    if-ge v1, v2, :cond_53

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_53
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->QX:Lgroovyjarjarantlr/RuleBlock;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    iget-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    instance-of v1, v0, Lgroovyjarjarantlr/TreeWalkerGrammar;

    const-string v2, "_in"

    const/4 v3, 0x0

    if-eqz v1, :cond_30

    iget-boolean v0, v0, Lgroovyjarjarantlr/Grammar;->FH:Z

    const/4 v1, 0x1

    if-nez v0, :cond_14

    goto :goto_31

    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_30

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v0, v5, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    iget-object v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->QX:Lgroovyjarjarantlr/RuleBlock;

    iget-object v0, v0, Lgroovyjarjarantlr/RuleBlock;->J8:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v0

    const-string v4, "_AST"

    if-ge v3, v0, :cond_67

    iget-object v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->QX:Lgroovyjarjarantlr/RuleBlock;

    iget-object v0, v0, Lgroovyjarjarantlr/RuleBlock;->J8:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v0, v3}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/AlternativeElement;

    invoke-virtual {v0}, Lgroovyjarjarantlr/AlternativeElement;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    if-eqz v1, :cond_54

    goto :goto_63

    :cond_54
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_63
    return-object p1

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_67
    iget-object v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->XL:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c1

    sget-object p2, Lgroovyjarjarantlr/CSharpCodeGenerator;->u7:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, " in rule "

    const-string v5, "Ambiguous reference to AST element "

    if-ne v0, p2, :cond_9b

    iget-object p2, p0, Lgroovyjarjarantlr/CodeGenerator;->j6:Lgroovyjarjarantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_81
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->QX:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {p1}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/Tool;->j6(Ljava/lang/String;)V

    return-object v3

    :cond_9b
    iget-object p2, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->QX:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {p2}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_af

    iget-object p2, p0, Lgroovyjarjarantlr/CodeGenerator;->j6:Lgroovyjarjarantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_81

    :cond_af
    if-eqz v1, :cond_c0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c0
    return-object v0

    :cond_c1
    iget-object v0, p0, Lgroovyjarjarantlr/CSharpCodeGenerator;->QX:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {v0}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    new-instance v0, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_dd

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "_AST_in"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e6

    :cond_dd
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_e6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_f0

    if-nez v1, :cond_f0

    iput-object p1, p2, Lgroovyjarjarantlr/ActionTransInfo;->DW:Ljava/lang/String;

    :cond_f0
    return-object p1
.end method
