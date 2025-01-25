.class Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;
.super Lcom/sun/tools/javac/comp/Resolve$ResolveError;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SymbolNotFoundError"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Resolve;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;I)V
    .registers 4

    .line 1953
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 1954
    const-string v0, "symbol not found error"

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Resolve$ResolveError;-><init>(Lcom/sun/tools/javac/comp/Resolve;ILjava/lang/String;)V

    .line 1955
    return-void
.end method

.method private getErrorKey(Lcom/sun/tools/javac/code/Kinds$KindName;ZZ)Ljava/lang/String;
    .registers 8

    .line 2011
    const-string v1, ""

    if-eqz p3, :cond_26

    const-string v0, ".location"

    .line 2013
    :goto_6
    sget-object v2, Lcom/sun/tools/javac/comp/Resolve$3;->$SwitchMap$com$sun$tools$javac$code$Kinds$KindName:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Kinds$KindName;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_29

    const/4 v3, 0x2

    if-eq v2, v3, :cond_29

    .line 2020
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cant.resolve"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2011
    :cond_26
    const-string v0, ""

    goto :goto_6

    .line 2016
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".args"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4e

    const-string v0, ".params"

    :goto_46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_4e
    move-object v0, v1

    goto :goto_46
.end method

.method private getLocationDiag(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 11

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2023
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    .line 2024
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 2025
    invoke-static {p1}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2024
    const-string v3, "location.1"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object p1, v4, v6

    aput-object v2, v4, v7

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 2029
    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 2030
    invoke-static {p2}, Lcom/sun/tools/javac/code/Kinds;->typeKindName(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v1

    .line 2029
    const-string v2, "location"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object p2, v3, v6

    const/4 v1, 0x0

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto :goto_21
.end method


# virtual methods
.method getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 15
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

    .line 1965
    if-nez p6, :cond_6

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object p6

    .line 1966
    :cond_6
    if-nez p7, :cond_c

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object p7

    .line 1967
    :cond_c
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    const/4 v3, 0x0

    if-ne p5, v0, :cond_17

    .line 1968
    const/4 v0, 0x0

    .line 2004
    :goto_16
    return-object v0

    .line 1970
    :cond_17
    invoke-virtual {p0, p5}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->isOperator(Lcom/sun/tools/javac/util/Name;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1971
    invoke-virtual {p6}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5c

    const/4 v0, 0x1

    move v2, v0

    .line 1972
    :goto_26
    invoke-virtual {p6}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f

    .line 1973
    const-string v4, "operator.cant.be.applied"

    .line 1975
    :goto_2f
    iget-object v0, p6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 1976
    if-nez v2, :cond_3d

    iget-object v0, p6, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    move-object v3, v0

    .line 1977
    :cond_3d
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p5, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    aput-object v3, v5, v1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto :goto_16

    .line 1971
    :cond_5c
    const/4 v0, 0x0

    move v2, v0

    goto :goto_26

    .line 1974
    :cond_5f
    const-string v4, "operator.cant.be.applied.1"

    goto :goto_2f

    .line 1980
    :cond_62
    const/4 v0, 0x0

    .line 1981
    if-nez p3, :cond_67

    .line 1982
    iget-object p3, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1981
    :cond_67
    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 1985
    iget v0, p3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_97

    iget-object v0, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->exists()Z

    move-result v0

    if-nez v0, :cond_97

    .line 1986
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    const-string v4, "doesnt.exist"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v5, v1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto :goto_16

    .line 1989
    :cond_97
    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    const/4 v0, 0x1

    .line 1992
    :cond_b4
    :goto_b4
    iget v1, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->kind:I

    const/16 v2, 0x47

    if-ne v1, v2, :cond_108

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne p5, v1, :cond_108

    const/4 v1, 0x1

    move v2, v1

    .line 1994
    :goto_c8
    if-eqz v2, :cond_10b

    sget-object v1, Lcom/sun/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 1995
    :goto_cc
    if-eqz v2, :cond_d2

    iget-object v2, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object p5, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 1996
    :cond_d2
    invoke-virtual {p7}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->getErrorKey(Lcom/sun/tools/javac/code/Kinds$KindName;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 1997
    if-eqz v0, :cond_112

    .line 1998
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    .line 2001
    invoke-direct {p0, p3, p4}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->getLocationDiag(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v3

    .line 1998
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object p5, v5, v1

    const/4 v1, 0x2

    aput-object p7, v5, v1

    const/4 v1, 0x3

    aput-object p6, v5, v1

    const/4 v1, 0x4

    aput-object v3, v5, v1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto/16 :goto_16

    .line 1990
    :cond_106
    const/4 v0, 0x0

    goto :goto_b4

    .line 1992
    :cond_108
    const/4 v1, 0x0

    move v2, v1

    goto :goto_c8

    .line 1994
    :cond_10b
    iget v1, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->kind:I

    invoke-static {v1}, Lcom/sun/tools/javac/code/Kinds;->absentKind(I)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v1

    goto :goto_cc

    .line 2004
    :cond_112
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v5, v3

    const/4 v1, 0x1

    aput-object p5, v5, v1

    const/4 v1, 0x2

    aput-object p7, v5, v1

    const/4 v1, 0x3

    aput-object p6, v5, v1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto/16 :goto_16
.end method
