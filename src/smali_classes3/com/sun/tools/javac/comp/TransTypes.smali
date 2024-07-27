.class public Lcom/sun/tools/javac/comp/TransTypes;
.super Lcom/sun/tools/javac/tree/TreeTranslator;
.source "TransTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/TransTypes$NeedsOverridBridgeFilter;
    }
.end annotation


# static fields
.field protected static final transTypesKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/TransTypes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final addBridges:Z

.field private allowEnums:Z

.field currentMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

.field private enter:Lcom/sun/tools/javac/comp/Enter;

.field private env:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/sun/tools/javac/util/Log;

.field private make:Lcom/sun/tools/javac/tree/TreeMaker;

.field private names:Lcom/sun/tools/javac/util/Names;

.field overridden:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation
.end field

.field overrideBridgeFilter:Lcom/sun/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private pt:Lcom/sun/tools/javac/code/Type;

.field private final resolve:Lcom/sun/tools/javac/comp/Resolve;

.field private syms:Lcom/sun/tools/javac/code/Symtab;

.field private types:Lcom/sun/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/TransTypes;->transTypesKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeTranslator;-><init>()V

    .line 329
    new-instance v0, Lcom/sun/tools/javac/comp/TransTypes$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/TransTypes$1;-><init>(Lcom/sun/tools/javac/comp/TransTypes;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->overrideBridgeFilter:Lcom/sun/tools/javac/util/Filter;

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->currentMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 81
    sget-object v0, Lcom/sun/tools/javac/comp/TransTypes;->transTypesKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 82
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->names:Lcom/sun/tools/javac/util/Names;

    .line 83
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->log:Lcom/sun/tools/javac/util/Log;

    .line 84
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 85
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Enter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->enter:Lcom/sun/tools/javac/comp/Enter;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->overridden:Ljava/util/Map;

    .line 87
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowEnums()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->allowEnums:Z

    .line 89
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->addBridges()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->addBridges:Z

    .line 90
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 91
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 92
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/comp/TransTypes;)Lcom/sun/tools/javac/code/Types;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    return-object v0
.end method

.method private addOverrideBridges(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    .line 823
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 824
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v2

    .line 825
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v4, 0x7

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    const-wide v4, 0x80000000L

    or-long/2addr v2, v4

    const-wide v4, 0x20000000000L

    or-long/2addr v2, v4

    iget-object v4, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 826
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v2

    .line 827
    iget-object v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, p4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v3, v4, p4}, Lcom/sun/tools/javac/tree/TreeMaker;->Super(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    .line 828
    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 829
    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 831
    invoke-virtual {v5, v3, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v6, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 832
    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Idents(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 833
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 832
    invoke-virtual {p0, v6, v0, v8}, Lcom/sun/tools/javac/comp/TransTypes;->translateArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 830
    invoke-virtual {v5, v8, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 834
    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 835
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget v3, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 836
    iget-object v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    .line 838
    :goto_0
    iget-object v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v4, 0x0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 839
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 840
    invoke-virtual {p5, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 841
    return-void

    .line 837
    :cond_0
    iget-object v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/comp/TransTypes;->coerce(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v0

    goto :goto_0
.end method

.method private addOverrideBridgesIfNeeded(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v5

    .line 782
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/TransTypes;->boundsRestricted(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 783
    :cond_0
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 799
    :goto_0
    return-object v0

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 785
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    .line 786
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eqz v1, :cond_4

    .line 787
    new-instance v1, Lcom/sun/tools/javac/comp/TransTypes$NeedsOverridBridgeFilter;

    invoke-direct {v1, p0, p2}, Lcom/sun/tools/javac/comp/TransTypes$NeedsOverridBridgeFilter;-><init>(Lcom/sun/tools/javac/comp/TransTypes;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->getElements(Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    move-object v2, v0

    .line 789
    check-cast v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 790
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->asMemberOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 791
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    const/4 v1, 0x0

    invoke-virtual {v2, p2, v0, v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, p2, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 794
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 795
    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/comp/TransTypes;->addOverrideBridges(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V

    goto :goto_1

    .line 799
    :cond_4
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private boundsRestricted(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z
    .registers 8

    .line 760
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 761
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 763
    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    .line 764
    :goto_0
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 766
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 768
    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 769
    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 768
    invoke-virtual {v4, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    const/4 v0, 0x1

    .line 776
    :goto_1
    return v0

    .line 772
    :cond_0
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 773
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    move-object v3, v1

    .line 774
    goto :goto_0

    .line 776
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 756
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/TransTypes;
    .registers 2

    .line 58
    sget-object v0, Lcom/sun/tools/javac/comp/TransTypes;->transTypesKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/TransTypes;

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/sun/tools/javac/comp/TransTypes;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/TransTypes;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 61
    :cond_0
    return-object v0
.end method

.method private isBridgeNeeded(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;)Z
    .registers 8

    const/4 v0, 0x1

    .line 342
    if-eq p2, p1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 346
    invoke-direct {p0, p3, p1, v1}, Lcom/sun/tools/javac/comp/TransTypes;->isSameMemberWhenErased(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2, v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 349
    invoke-direct {p0, p3, p2, v2}, Lcom/sun/tools/javac/comp/TransTypes;->isSameMemberWhenErased(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 355
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 354
    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 361
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, p3, p1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->isSameMemberWhenErased(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isSameMemberWhenErased(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;)Z
    .registers 6

    .line 380
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addBridge(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;ZLcom/sun/tools/javac/util/ListBuffer;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Z",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 215
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3, p2}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 216
    invoke-direct {p0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v9

    .line 219
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2, v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    .line 220
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    const-wide v4, 0x80000000L

    or-long/2addr v4, v2

    .line 221
    if-eqz p5, :cond_0

    const-wide v2, 0x2000000000L

    or-long/2addr v4, v2

    .line 222
    :cond_0
    new-instance v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v6, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 226
    if-nez p5, :cond_1

    .line 227
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v4

    .line 231
    iget-object v2, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    move-object/from16 v0, p4

    if-ne v2, v0, :cond_2

    .line 232
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->This(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 236
    :goto_0
    iget-object v5, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 240
    iget-object v6, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 243
    invoke-virtual {v6, v2, p3}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v8, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v10, v4, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 244
    invoke-virtual {v8, v10}, Lcom/sun/tools/javac/tree/TreeMaker;->Idents(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v10, v11}, Lcom/sun/tools/javac/comp/TransTypes;->translateArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 241
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v2, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    .line 245
    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    .line 246
    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget v5, v5, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 247
    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v2

    .line 249
    :goto_1
    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v6, 0x0

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v5, v6, v7, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    iput-object v2, v4, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 252
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 226
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 257
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->overridden:Ljava/util/Map;

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget-object v5, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v2, v5, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Super(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    goto :goto_0

    .line 248
    :cond_3
    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v7}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/sun/tools/javac/comp/TransTypes;->coerce(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v2

    goto :goto_1
.end method

.method addBridgeIfNeeded(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_1

    .line 284
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x20000001000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 286
    invoke-virtual {p2, p3, v0}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p2

    .line 288
    check-cast v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 289
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p3, v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->binaryImplementation(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->overrideBridgeFilter:Lcom/sun/tools/javac/util/Filter;

    invoke-virtual {v2, p3, v1, v3, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;ZLcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v3

    .line 291
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 293
    invoke-virtual {v1, v4, v5}, Lcom/sun/tools/javac/code/Symbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    :cond_0
    if-eqz v3, :cond_7

    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v2, v3, v1}, Lcom/sun/tools/javac/comp/TransTypes;->isBridgeNeeded(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 296
    if-ne v0, v3, :cond_6

    const/4 v5, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/TransTypes;->addBridge(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;ZLcom/sun/tools/javac/util/ListBuffer;)V

    .line 327
    :cond_1
    :goto_1
    return-void

    .line 306
    :cond_2
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide v6, 0x20000001000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x1000

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 307
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->overridden:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 308
    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    .line 309
    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, p3, v1, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    :cond_3
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, p3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 312
    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    iget-object v4, p3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 313
    invoke-virtual {v2, v4, v5}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 311
    const-string v5, "name.clash.same.erasure.no.override"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v3, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    invoke-virtual {v1, p1, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 316
    :cond_4
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p3, v1, v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v1, p3, :cond_5

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 319
    invoke-virtual {v1, v3, v4}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    if-nez v1, :cond_1

    .line 322
    :cond_5
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, p3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 323
    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    iget-object v4, p3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 324
    invoke-virtual {v2, v4, v5}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 322
    const-string v5, "name.clash.same.erasure.no.override"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v3, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    invoke-virtual {v1, p1, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 296
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 297
    :cond_7
    if-ne v3, v2, :cond_1

    iget-object v0, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, p3, :cond_1

    .line 299
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 300
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x401

    and-long/2addr v0, v4

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 301
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    const-wide/16 v4, 0x1

    iget-object v6, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    and-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 304
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/TransTypes;->addBridge(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;ZLcom/sun/tools/javac/util/ListBuffer;)V

    goto/16 :goto_1
.end method

.method addBridges(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 401
    :goto_0
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 403
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/sun/tools/javac/comp/TransTypes;->addBridges(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V

    .line 404
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/tools/javac/comp/TransTypes;->addBridges(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V

    .line 406
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 409
    :cond_1
    return-void
.end method

.method addBridges(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 388
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    :goto_0
    if-eqz v0, :cond_0

    .line 389
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/sun/tools/javac/comp/TransTypes;->addBridgeIfNeeded(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V

    .line 388
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/sun/tools/javac/comp/TransTypes;->addBridges(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V

    .line 390
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 392
    :cond_1
    return-void
.end method

.method cast(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 7

    .line 106
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v0, v0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 107
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 108
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, p2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v1, v2, p1, p2}, Lcom/sun/tools/javac/comp/Resolve;->logAccessErrorInternal(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iput v0, v1, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 114
    return-object p1
.end method

.method coerce(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 7

    .line 124
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 125
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 126
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    sget-object v3, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v1, v2, v0, v3}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object p1

    .line 128
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->cast(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_0
.end method

.method retype(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 6

    .line 156
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 157
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p3

    .line 159
    :cond_0
    iput-object p2, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 160
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/sun/tools/javac/comp/TransTypes;->coerce(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    .line 162
    :cond_1
    return-object p1
.end method

.method public translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;",
            "Lcom/sun/tools/javac/code/Type;",
            ")TT;"
        }
    .end annotation

    .line 422
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 424
    :try_start_0
    iput-object p2, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 425
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 427
    iput-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 425
    return-object v0

    .line 427
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 428
    throw v0
.end method

.method public translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 434
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 437
    :try_start_0
    iput-object p2, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 438
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 440
    iput-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 441
    return-object v0

    .line 440
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 441
    throw v0
.end method

.method translateArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x1

    .line 175
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    move-object v2, p1

    .line 177
    :goto_1
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 179
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 180
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_1

    .line 182
    :cond_2
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 183
    if-nez p3, :cond_5

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    :goto_2
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 184
    if-eqz p3, :cond_4

    .line 185
    :goto_3
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 187
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_3

    .line 183
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 190
    :cond_4
    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method translateClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 12

    .line 850
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 853
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 854
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translateClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 857
    if-nez v0, :cond_1

    .line 888
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->env:Lcom/sun/tools/javac/comp/Env;

    .line 861
    :try_start_0
    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->env:Lcom/sun/tools/javac/comp/Env;

    .line 864
    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 865
    iget-object v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 866
    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->forToplevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 869
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 870
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    .line 871
    invoke-super {p0, v0}, Lcom/sun/tools/javac/tree/TreeTranslator;->visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 872
    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 873
    iget-boolean v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->addBridges:Z

    if-eqz v4, :cond_3

    .line 874
    new-instance v4, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 877
    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x200

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 878
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v5, v6, v4}, Lcom/sun/tools/javac/comp/TransTypes;->addBridges(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/ListBuffer;)V

    .line 879
    :cond_2
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 881
    :cond_3
    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v4}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 883
    :try_start_2
    iput-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 884
    iput-object v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 885
    iput-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->env:Lcom/sun/tools/javac/comp/Env;

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v0

    :try_start_3
    iput-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 884
    iput-object v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 885
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 887
    :catchall_1
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->env:Lcom/sun/tools/javac/comp/Env;

    .line 888
    throw v0
.end method

.method public translateTopLevelClass(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/TreeMaker;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4

    const/4 v0, 0x0

    .line 896
    iput-object p2, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 897
    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    .line 898
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
    .registers 2

    .line 685
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 686
    return-void
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 7

    .line 586
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 587
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 588
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 590
    iget-boolean v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->allowEnums:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/TransTypes;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v3, v4, :cond_0

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v3, :cond_0

    .line 593
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 594
    :cond_0
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lcom/sun/tools/javac/code/Type;

    .line 598
    :goto_0
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0, v3}, Lcom/sun/tools/javac/comp/TransTypes;->translateArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 601
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->retype(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 602
    return-void

    .line 597
    :cond_1
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V
    .registers 4

    .line 579
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 580
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 582
    :cond_0
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 583
    return-void
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 4

    .line 637
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 638
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 639
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->type:Lcom/sun/tools/javac/code/Type;

    .line 640
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 641
    return-void
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 4

    .line 644
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 645
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 646
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->type:Lcom/sun/tools/javac/code/Type;

    .line 647
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 648
    return-void
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 4

    .line 656
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 657
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 658
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 659
    return-void
.end method

.method public visitCase(Lcom/sun/tools/javac/tree/JCTree$JCCase;)V
    .registers 4

    .line 529
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 530
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    .line 531
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 532
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 3

    .line 446
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translateClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 447
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 448
    return-void
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 4

    .line 549
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 550
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 551
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 552
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    .line 553
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->retype(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 554
    return-void
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 4

    .line 488
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 489
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 490
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 491
    return-void
.end method

.method public visitExec(Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .registers 4

    .line 564
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 565
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 566
    return-void
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 5

    const/4 v2, 0x0

    .line 500
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    .line 501
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 503
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    .line 504
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 505
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 506
    return-void
.end method

.method public visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 5

    .line 509
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 510
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 511
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 512
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 514
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 515
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 516
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 5

    .line 689
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 692
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 693
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 707
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 697
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_0

    .line 700
    :cond_1
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 701
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->retype(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_0

    .line 704
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    .line 705
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_0
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 4

    .line 557
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 558
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 559
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 560
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 561
    return-void
.end method

.method public visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V
    .registers 4

    .line 675
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 676
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 679
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->retype(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 680
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 9

    .line 452
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->currentMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 454
    :try_start_0
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->currentMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 455
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 456
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    .line 457
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translateVarDefs(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 458
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    .line 459
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 460
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 461
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    iput-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->currentMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 464
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 468
    :goto_0
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 471
    invoke-direct {p0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "name.clash.same.erasure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :cond_0
    return-void

    .line 469
    :cond_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->currentMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 464
    throw v0
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 5

    const/4 v2, 0x0

    .line 618
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 619
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    .line 620
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    .line 622
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    .line 627
    :goto_0
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 628
    return-void

    .line 624
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    goto :goto_0
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 6

    const/4 v3, 0x0

    .line 605
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 607
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 608
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lcom/sun/tools/javac/code/Type;

    .line 610
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 611
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lcom/sun/tools/javac/code/Type;

    .line 610
    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/TransTypes;->translateArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    .line 612
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 613
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    .line 614
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 615
    return-void
.end method

.method public visitParens(Lcom/sun/tools/javac/tree/JCTree$JCParens;)V
    .registers 4

    .line 631
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 632
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->type:Lcom/sun/tools/javac/code/Type;

    .line 633
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 634
    return-void
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 5

    .line 569
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->currentMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 570
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 571
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 6

    .line 710
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 711
    :goto_0
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 714
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x200000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 716
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implemented(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 718
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 719
    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 720
    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 718
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->coerce(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 725
    :goto_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 726
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 736
    :goto_2
    return-void

    .line 722
    :cond_2
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    .line 729
    :cond_3
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 730
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->retype(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_2

    .line 733
    :cond_4
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    .line 734
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_2
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 4

    .line 519
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 522
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 523
    :goto_1
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 524
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translateCases(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    .line 525
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 526
    return-void

    .line 520
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_1
.end method

.method public visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V
    .registers 4

    .line 535
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 536
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 537
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 538
    return-void
.end method

.method public visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V
    .registers 4

    .line 574
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 575
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 576
    return-void
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 4

    .line 541
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->autoCloseableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    .line 542
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 543
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translateCatchers(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    .line 544
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 545
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 546
    return-void
.end method

.method public visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
    .registers 4

    .line 747
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 748
    iput-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 749
    return-void
.end method

.method public visitTypeArray(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .registers 4

    .line 739
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 740
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 741
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 742
    return-void
.end method

.method public visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V
    .registers 4

    .line 662
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    .line 663
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->type:Lcom/sun/tools/javac/code/Type;

    .line 664
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 665
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 666
    return-void
.end method

.method public visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V
    .registers 4

    const/4 v1, 0x0

    .line 669
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 670
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    .line 671
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 672
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 4

    .line 651
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 652
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 653
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 5

    .line 481
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 482
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/TransTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 483
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 484
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 485
    return-void
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 4

    .line 494
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 495
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 496
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 497
    return-void
.end method
