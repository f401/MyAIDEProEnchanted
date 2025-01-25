.class public Lgroovyjarjarantlr/PythonCodeGenerator;
.super Lgroovyjarjarantlr/CodeGenerator;


# static fields
.field protected static final u7:Ljava/lang/String;


# instance fields
.field protected EQ:Z

.field J0:Ljava/lang/String;

.field J8:Lgroovyjarjarantlr/RuleBlock;

.field QX:Ljava/util/Hashtable;

.field Ws:Ljava/util/Hashtable;

.field XL:I

.field protected tp:I

.field protected we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lgroovyjarjarantlr/PythonCodeGenerator;->u7:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lgroovyjarjarantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->tp:I

    iput-boolean v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->EQ:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->we:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->Ws:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->QX:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->XL:I

    new-instance v1, Lgroovyjarjarantlr/PythonCharFormatter;

    invoke-direct {v1}, Lgroovyjarjarantlr/PythonCharFormatter;-><init>()V

    iput-object v1, p0, Lgroovyjarjarantlr/CodeGenerator;->v5:Lgroovyjarjarantlr/CharFormatter;

    iput-boolean v0, p0, Lgroovyjarjarantlr/CodeGenerator;->Zo:Z

    return-void
.end method


# virtual methods
.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2c

    if-ge v2, v4, :cond_1b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_18

    add-int/lit8 v3, v3, 0x1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    const/4 v2, 0x2

    const-string v4, ")"

    const-string v6, "self.astFactory.create("

    if-ge v3, v2, :cond_93

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    if-lez v3, :cond_30

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_30
    move-object v1, p1

    :goto_31
    iget-object v2, p0, Lgroovyjarjarantlr/CodeGenerator;->FH:Lgroovyjarjarantlr/Grammar;

    iget-object v2, v2, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v2, v1}, Lgroovyjarjarantlr/TokenManager;->DW(Ljava/lang/String;)Lgroovyjarjarantlr/TokenSymbol;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Lgroovyjarjarantlr/TokenSymbol;->j6()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_43

    const-string v0, ", \"\""

    :cond_43
    if-eqz v1, :cond_63

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_63
    iget-object v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->J0:Ljava/lang/String;

    const-string v1, "AST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Lgroovyjarjarantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "self.astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lgroovyjarjarantlr/GrammarAtom;->v5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2b
    invoke-virtual {p0, p2}, Lgroovyjarjarantlr/PythonCodeGenerator;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v0

    if-nez v0, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "antlr.make("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :cond_14
    :goto_14
    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v2

    if-ge v1, v2, :cond_2f

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v2

    if-ge v1, v2, :cond_14

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_2f
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->J8:Lgroovyjarjarantlr/RuleBlock;

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
    iget-object v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->J8:Lgroovyjarjarantlr/RuleBlock;

    iget-object v0, v0, Lgroovyjarjarantlr/RuleBlock;->J8:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v0

    const-string v4, "_AST"

    if-ge v3, v0, :cond_67

    iget-object v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->J8:Lgroovyjarjarantlr/RuleBlock;

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
    iget-object v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->Ws:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c1

    sget-object p2, Lgroovyjarjarantlr/PythonCodeGenerator;->u7:Ljava/lang/String;

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

    iget-object p1, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->J8:Lgroovyjarjarantlr/RuleBlock;

    invoke-virtual {p1}, Lgroovyjarjarantlr/RuleBlock;->v5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgroovyjarjarantlr/Tool;->j6(Ljava/lang/String;)V

    return-object v3

    :cond_9b
    iget-object p2, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->J8:Lgroovyjarjarantlr/RuleBlock;

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
    iget-object v0, p0, Lgroovyjarjarantlr/PythonCodeGenerator;->J8:Lgroovyjarjarantlr/RuleBlock;

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
