.class Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;
.super Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InapplicableSymbolError"
.end annotation


# instance fields
.field explanation:Lcom/sun/tools/javac/util/JCDiagnostic;

.field final this$0:Lcom/sun/tools/javac/comp/Resolve;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 2047
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 2048
    const/16 v0, 0x46

    const-string v1, "inapplicable symbol error"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;-><init>(Lcom/sun/tools/javac/comp/Resolve;ILcom/sun/tools/javac/code/Symbol;Ljava/lang/String;)V

    .line 2049
    return-void
.end method


# virtual methods
.method public access(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;
    .registers 5

    .line 2113
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    return-object v0
.end method

.method clear()V
    .registers 2

    .line 2108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->explanation:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 2109
    return-void
.end method

.method getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    .line 2080
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    const/4 v4, 0x0

    move-object/from16 v0, p5

    if-ne v0, v1, :cond_d

    .line 2081
    const/4 v1, 0x0

    .line 2095
    :goto_c
    return-object v1

    .line 2083
    :cond_d
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->isOperator(Lcom/sun/tools/javac/util/Name;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2084
    invoke-virtual/range {p6 .. p6}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_58

    const/4 v1, 0x1

    move v3, v1

    .line 2085
    :goto_1e
    invoke-virtual/range {p6 .. p6}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5b

    .line 2086
    const-string v5, "operator.cant.be.applied"

    .line 2088
    :goto_27
    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    .line 2089
    if-nez v3, :cond_39

    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    move-object v4, v1

    .line 2090
    :cond_39
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v3, v3, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p5, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    aput-object v4, v6, v2

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    goto :goto_c

    .line 2084
    :cond_58
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1e

    .line 2087
    :cond_5b
    const-string v5, "operator.cant.be.applied.1"

    goto :goto_27

    .line 2094
    :cond_5e
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/code/Symbol;->asMemberOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 2095
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cant.apply.symbol"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->explanation:Lcom/sun/tools/javac/util/JCDiagnostic;

    if-eqz v2, :cond_df

    const-string v2, ".1"

    :goto_86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2097
    invoke-static {v4}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v7

    .line 2098
    iget-object v2, v4, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v6, v6, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v6, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v6, :cond_e2

    iget-object v2, v4, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    :goto_9f
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v8, v4, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2099
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sun/tools/javac/comp/Resolve;->methodArguments(Lcom/sun/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v8

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 2100
    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/comp/Resolve;->methodArguments(Lcom/sun/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v9

    iget-object v6, v4, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 2101
    invoke-static {v6}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v10

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v11, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->explanation:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 2095
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v6, v12

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    aput-object v8, v6, v2

    const/4 v2, 0x3

    aput-object v9, v6, v2

    const/4 v2, 0x4

    aput-object v10, v6, v2

    const/4 v2, 0x5

    aput-object v4, v6, v2

    const/4 v2, 0x6

    aput-object v11, v6, v2

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    goto/16 :goto_c

    .line 2096
    :cond_df
    const-string v2, ""

    goto :goto_86

    .line 2098
    :cond_e2
    iget-object v2, v4, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_9f
.end method

.method setWrongSym(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;
    .registers 2

    .line 2063
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2064
    return-object p0
.end method

.method setWrongSym(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;
    .registers 4

    .line 2054
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2055
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v0, p1, :cond_a

    if-eqz p2, :cond_a

    .line 2056
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->explanation:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 2057
    :cond_a
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " explanation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->explanation:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
