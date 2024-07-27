.class Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;
.super Lcom/sun/tools/javac/comp/Resolve$ResolveError;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InapplicableSymbolsError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;
    }
.end annotation


# instance fields
.field private candidates:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/comp/Resolve;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 2126
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 2127
    const/16 v0, 0x45

    const-string v1, "inapplicable symbols"

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/Resolve$ResolveError;-><init>(Lcom/sun/tools/javac/comp/Resolve;ILjava/lang/String;)V

    .line 2124
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidates:Lcom/sun/tools/javac/util/List;

    .line 2128
    return-void
.end method

.method private getName()Lcom/sun/tools/javac/util/Name;
    .registers 4

    .line 2173
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidates:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2174
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_0

    .line 2175
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 2174
    :goto_0
    return-object v0

    .line 2176
    :cond_0
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_0
.end method


# virtual methods
.method addCandidate(Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/code/Symbol;
    .registers 10

    .line 2162
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;-><init>(Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/comp/Resolve$1;)V

    .line 2163
    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidates:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2164
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidates:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidates:Lcom/sun/tools/javac/util/List;

    .line 2165
    :cond_0
    return-object p0
.end method

.method candidateDetails(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    .line 2155
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2156
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidates:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;

    .line 2157
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->getDiagnostic(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2158
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method clear()V
    .registers 2

    .line 2169
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidates:Lcom/sun/tools/javac/util/List;

    .line 2170
    return-void
.end method

.method getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 16
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

    .line 2138
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidates:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2139
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    .line 2140
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    .line 2143
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne p5, v1, :cond_0

    sget-object v1, Lcom/sun/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 2144
    :goto_0
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->getName()Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    .line 2139
    const-string v4, "cant.apply.symbols"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    const/4 v1, 0x2

    aput-object p6, v5, v1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    .line 2146
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$MultilineDiagnostic;

    invoke-virtual {p0, p4}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidateDetails(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$MultilineDiagnostic;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/util/List;)V

    .line 2148
    :goto_1
    return-object v0

    .line 2143
    :cond_0
    iget v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->kind:I

    invoke-static {v1}, Lcom/sun/tools/javac/code/Kinds;->absentKind(I)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v1

    goto :goto_0

    .line 2148
    :cond_1
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    const/16 v2, 0x47

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lcom/sun/tools/javac/comp/Resolve;I)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto :goto_1
.end method
