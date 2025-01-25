.class public Lcom/sun/tools/javac/comp/Flow;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Flow$PendingExit;
    }
.end annotation


# static fields
.field protected static final flowKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/Flow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alive:Z

.field private final allowImprovedCatchAnalysis:Z

.field private final allowImprovedRethrowAnalysis:Z

.field private attrEnv:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field caught:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final chk:Lcom/sun/tools/javac/comp/Check;

.field classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

.field firstadr:I

.field inits:Lcom/sun/tools/javac/util/Bits;

.field initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

.field initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

.field private lint:Lcom/sun/tools/javac/code/Lint;

.field private final log:Lcom/sun/tools/javac/util/Log;

.field loopPassTwo:Z

.field private make:Lcom/sun/tools/javac/tree/TreeMaker;

.field private final names:Lcom/sun/tools/javac/util/Names;

.field nextadr:I

.field pendingExits:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/comp/Flow$PendingExit;",
            ">;"
        }
    .end annotation
.end field

.field preciseRethrowTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rs:Lcom/sun/tools/javac/comp/Resolve;

.field private final syms:Lcom/sun/tools/javac/code/Symtab;

.field thrown:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Lcom/sun/tools/javac/code/Types;

.field uninits:Lcom/sun/tools/javac/util/Bits;

.field uninitsTry:Lcom/sun/tools/javac/util/Bits;

.field uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

.field uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

.field unrefdResources:Lcom/sun/tools/javac/code/Scope;

.field vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 181
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/Flow;->flowKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    .line 203
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 204
    sget-object v0, Lcom/sun/tools/javac/comp/Flow;->flowKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 205
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->names:Lcom/sun/tools/javac/util/Names;

    .line 206
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    .line 207
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 208
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->types:Lcom/sun/tools/javac/code/Types;

    .line 209
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 210
    invoke-static {p1}, Lcom/sun/tools/javac/code/Lint;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 211
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 212
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowImprovedRethrowAnalysis()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/Flow;->allowImprovedRethrowAnalysis:Z

    .line 214
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowImprovedCatchAnalysis()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->allowImprovedCatchAnalysis:Z

    .line 215
    return-void
.end method

.method private static addVars(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Bits;Lcom/sun/tools/javac/util/Bits;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lcom/sun/tools/javac/util/Bits;",
            "Lcom/sun/tools/javac/util/Bits;",
            ")V"
        }
    .end annotation

    .line 990
    :goto_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 991
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 992
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1d

    .line 993
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 994
    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 995
    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/util/Bits;->incl(I)V

    .line 990
    :cond_1d
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 998
    :cond_20
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Flow;
    .registers 2

    .line 197
    sget-object v0, Lcom/sun/tools/javac/comp/Flow;->flowKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Flow;

    .line 198
    if-nez v0, :cond_f

    .line 199
    new-instance v0, Lcom/sun/tools/javac/comp/Flow;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Flow;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 200
    :cond_f
    return-object v0
.end method

.method private is292targetTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)Z
    .registers 8

    const/4 v1, 0x0

    .line 1419
    .line 1420
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1421
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_33

    .line 1422
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 1423
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1424
    if-eqz v0, :cond_31

    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_31

    .line 1426
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x10000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    .line 1428
    :goto_30
    return v0

    :cond_31
    move v0, v1

    .line 1426
    goto :goto_30

    :cond_33
    move v0, v1

    goto :goto_30
.end method

.method private isExceptionOrThrowable(Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 1176
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v1, :cond_14

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->exceptionType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public analyzeTree(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/TreeMaker;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/TreeMaker;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1443
    :try_start_2
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Flow;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    .line 1444
    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 1445
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Flow;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1446
    new-instance v0, Lcom/sun/tools/javac/util/Bits;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Bits;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1447
    new-instance v0, Lcom/sun/tools/javac/util/Bits;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Bits;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1448
    new-instance v0, Lcom/sun/tools/javac/util/Bits;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Bits;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    .line 1449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 1451
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-nez v0, :cond_7e

    .line 1452
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1456
    :cond_33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 1457
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 1458
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->preciseRethrowTypes:Ljava/util/HashMap;

    .line 1460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 1461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1463
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v3}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->unrefdResources:Lcom/sun/tools/javac/code/Scope;

    .line 1464
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_9d

    .line 1467
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1468
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 1470
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-eqz v0, :cond_8c

    move v0, v1

    :goto_74
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    array-length v3, v2

    if-ge v0, v3, :cond_8c

    .line 1471
    aput-object v5, v2, v0

    .line 1470
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_7e
    move v0, v1

    .line 1454
    :goto_7f
    :try_start_7f
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    array-length v3, v3

    if-ge v0, v3, :cond_33

    .line 1455
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const/4 v4, 0x0

    aput-object v4, v3, v0
    :try_end_89
    .catchall {:try_start_7f .. :try_end_89} :catchall_9d

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 1472
    :cond_8c
    iput v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 1473
    iput v1, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 1474
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1475
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1476
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1477
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1478
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->unrefdResources:Lcom/sun/tools/javac/code/Scope;

    .line 1479
    return-void

    .line 1467
    :catchall_9d
    move-exception v0

    move-object v2, v0

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1468
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 1470
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-eqz v0, :cond_bc

    move v0, v1

    :goto_b2
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    array-length v4, v3

    if-ge v0, v4, :cond_bc

    .line 1471
    aput-object v5, v3, v0

    .line 1470
    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    .line 1472
    :cond_bc
    iput v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 1473
    iput v1, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 1474
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1475
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1476
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1477
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1478
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->unrefdResources:Lcom/sun/tools/javac/code/Scope;

    .line 1479
    throw v2
.end method

.method checkCaughtType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1153
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, p2, p4}, Lcom/sun/tools/javac/comp/Check;->subset(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1154
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "except.already.caught"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    :cond_15
    :goto_15
    return-void

    .line 1155
    :cond_16
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->isUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1156
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/Flow;->isExceptionOrThrowable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 1157
    invoke-virtual {v0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->intersects(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1158
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "except.never.thrown.in.try"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 1159
    :cond_38
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->allowImprovedCatchAnalysis:Z

    if-eqz v0, :cond_15

    .line 1160
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-static {p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sun/tools/javac/comp/Check;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1165
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v1, p4}, Lcom/sun/tools/javac/comp/Check;->diff(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1166
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/Flow;->isExceptionOrThrowable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1167
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    if-ne v0, v3, :cond_6a

    .line 1168
    const-string v0, "unreachable.catch"

    .line 1170
    :goto_60
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v0, v3}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 1169
    :cond_6a
    const-string v0, "unreachable.catch.1"

    goto :goto_60
.end method

.method checkInit(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 7

    .line 430
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    if-ge v0, v1, :cond_d

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    .line 431
    :cond_d
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/comp/Flow;->trackable(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 432
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 433
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "var.might.not.have.been.initialized"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->incl(I)V

    .line 437
    :cond_31
    return-void
.end method

.method errorUncaught()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 316
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;

    move-object v1, v0

    .line 317
    :goto_b
    if-eqz v1, :cond_7e

    .line 319
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_36

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    iget-object v2, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    iget v2, v2, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    if-ne v0, v2, :cond_36

    .line 321
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v2, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "unreported.exception.default.constructor"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->thrown:Lcom/sun/tools/javac/code/Type;

    aput-object v1, v4, v6

    invoke-virtual {v0, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :goto_2c
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;

    move-object v1, v0

    goto :goto_b

    .line 324
    :cond_36
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6a

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 325
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->isResourceVariable()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 326
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "unreported.exception.implicit.close"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->thrown:Lcom/sun/tools/javac/code/Type;

    aput-object v0, v5, v6

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    aput-object v0, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    .line 331
    :cond_6a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v2, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "unreported.exception.need.to.catch.or.throw"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->thrown:Lcom/sun/tools/javac/code/Type;

    aput-object v1, v4, v6

    invoke-virtual {v0, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    .line 336
    :cond_7e
    return-void
.end method

.method letInit(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 6

    .line 418
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_14

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_26

    .line 420
    :cond_14
    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 421
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_26

    .line 422
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Flow;->letInit(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 425
    :cond_26
    return-void
.end method

.method letInit(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 13

    const-wide/16 v4, 0x10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 381
    iget v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    iget v2, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    const-string v0, "var.might.already.be.assigned"

    if-lt v1, v2, :cond_93

    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/comp/Flow;->trackable(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 382
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-eqz v1, :cond_44

    .line 383
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x200000000L

    and-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-eqz v1, :cond_58

    .line 384
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x8000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4c

    .line 385
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "multicatch.parameter.may.not.be.assigned"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->incl(I)V

    .line 411
    :cond_4b
    :goto_4b
    return-void

    .line 389
    :cond_4c
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "final.parameter.may.not.be.assigned"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_44

    .line 392
    :cond_58
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iget v2, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v1

    if-nez v1, :cond_72

    .line 393
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    .line 394
    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    if-eqz v2, :cond_6a

    .line 395
    const-string v0, "var.might.be.assigned.in.loop"

    .line 396
    :cond_6a
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v1, p1, v0, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_44

    .line 398
    :cond_72
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 400
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iget v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 401
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    iget v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    goto :goto_44

    .line 404
    :cond_8b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iget v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    goto :goto_44

    .line 408
    :cond_93
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4b

    .line 409
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "var.might.already.be.assigned"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b
.end method

.method markDead()V
    .registers 4

    .line 489
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    iget v2, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 490
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    iget v2, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 492
    return-void
.end method

.method markThrown(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/comp/Check;->isUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 343
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p2, v1}, Lcom/sun/tools/javac/comp/Check;->isHandled(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 344
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    new-instance v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;

    invoke-direct {v1, p1, p2}, Lcom/sun/tools/javac/comp/Flow$PendingExit;-><init>(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 345
    :cond_20
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p2, v1}, Lcom/sun/tools/javac/comp/Check;->incl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 347
    :cond_2a
    return-void
.end method

.method merge()V
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 509
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 510
    return-void
.end method

.method newVar(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 6

    const/4 v3, 0x0

    .line 366
    iget v0, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    array-length v2, v1

    if-ne v0, v2, :cond_11

    .line 367
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 368
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 371
    :cond_11
    iget v0, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    iput v0, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 372
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    aput-object p1, v0, v1

    .line 373
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 374
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->incl(I)V

    .line 375
    iget v0, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 376
    return-void
.end method

.method recordExit(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 6

    .line 443
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    new-instance v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-direct {v1, p1, v2, v3}, Lcom/sun/tools/javac/comp/Flow$PendingExit;-><init>(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/Bits;Lcom/sun/tools/javac/util/Bits;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 444
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Flow;->markDead()V

    .line 445
    return-void
.end method

.method referenced(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 3

    .line 1404
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->unrefdResources:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Scope;->remove(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1405
    return-void
.end method

.method resolveBreaks(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/ListBuffer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/comp/Flow$PendingExit;",
            ">;)Z"
        }
    .end annotation

    .line 450
    const/4 v2, 0x0

    .line 451
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 452
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    move-object v3, v0

    .line 453
    :goto_a
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 454
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;

    .line 455
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v4, 0x15

    if-ne v0, v4, :cond_3b

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBreak;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->target:Lcom/sun/tools/javac/tree/JCTree;

    if-ne v0, p1, :cond_3b

    .line 457
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget-object v2, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 458
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Flow$PendingExit;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 459
    const/4 v0, 0x1

    .line 453
    :goto_36
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v2, v0

    move-object v3, v1

    goto :goto_a

    .line 461
    :cond_3b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move v0, v2

    goto :goto_36

    .line 464
    :cond_42
    return v2
.end method

.method resolveContinues(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 7

    .line 469
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 471
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    move-object v2, v0

    move v3, v1

    .line 472
    :goto_10
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 473
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;

    .line 474
    iget-object v1, v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v4, 0x16

    if-ne v1, v4, :cond_40

    iget-object v1, v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->target:Lcom/sun/tools/javac/tree/JCTree;

    if-ne v1, p1, :cond_40

    .line 476
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 477
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 478
    const/4 v1, 0x1

    .line 472
    :goto_3b
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    move v3, v1

    goto :goto_10

    .line 480
    :cond_40
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move v1, v3

    goto :goto_3b

    .line 483
    :cond_47
    return v3
.end method

.method scanCond(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 6

    const/4 v3, 0x0

    .line 566
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isFalse()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 567
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Flow;->merge()V

    .line 568
    :cond_10
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 569
    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    iget v2, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 570
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 571
    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    iget v2, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 572
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 573
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 587
    :cond_36
    :goto_36
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    if-eq v0, v1, :cond_42

    .line 588
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iput-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 589
    :cond_42
    return-void

    .line 574
    :cond_43
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 575
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    if-nez v0, :cond_52

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Flow;->merge()V

    .line 576
    :cond_52
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 577
    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    iget v2, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 578
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 579
    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    iget v2, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 580
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 581
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    goto :goto_36

    .line 583
    :cond_79
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 584
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    if-eqz v0, :cond_36

    .line 585
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    if-eq v0, v1, :cond_8d

    const/4 v0, 0x1

    :goto_89
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->split(Z)V

    goto :goto_36

    :cond_8d
    const/4 v0, 0x0

    goto :goto_89
.end method

.method scanDef(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 6

    .line 519
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 520
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1e

    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    if-nez v0, :cond_1e

    .line 521
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "initializer.must.be.able.to.complete.normally"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    :cond_1e
    return-void
.end method

.method scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 548
    if-eqz p1, :cond_c

    .line 549
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 550
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Flow;->merge()V

    .line 552
    :cond_c
    return-void
.end method

.method scanExprs(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)V"
        }
    .end annotation

    .line 557
    if-eqz p1, :cond_12

    .line 558
    :goto_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 559
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 558
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_2

    .line 560
    :cond_12
    return-void
.end method

.method scanStat(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 6

    .line 529
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    if-nez v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 530
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "unreachable.stmt"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 533
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 534
    return-void
.end method

.method scanStats(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;)V"
        }
    .end annotation

    .line 539
    if-eqz p1, :cond_12

    .line 540
    :goto_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 541
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 540
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_2

    .line 542
    :cond_12
    return-void
.end method

.method split(Z)V
    .registers 4

    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 498
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 499
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 500
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 501
    if-eqz p1, :cond_1f

    .line 502
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 503
    :cond_1f
    return-void
.end method

.method trackable(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z
    .registers 6

    .line 355
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_26

    .line 357
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x200040010L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 358
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isEnclosedBy(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    .line 355
    :goto_27
    return v0

    .line 358
    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 4

    .line 1277
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1278
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExprs(Lcom/sun/tools/javac/util/List;)V

    .line 1279
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_13
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1280
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Flow;->markThrown(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V

    .line 1279
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_13

    .line 1281
    :cond_24
    return-void
.end method

.method public visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V
    .registers 5

    .line 1321
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    .line 1322
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v1

    .line 1323
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1324
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1325
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_27

    .line 1326
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1327
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1328
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1330
    :cond_27
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1331
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1332
    return-void
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 4

    .line 1335
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1336
    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    if-nez v1, :cond_d

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1337
    :cond_d
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1338
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->letInit(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1339
    return-void
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 3

    .line 1342
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1343
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1344
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->letInit(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1345
    return-void
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 5

    .line 1369
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v0

    const/16 v1, 0x39

    if-eq v0, v1, :cond_38

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_17

    .line 1391
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1392
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1389
    :goto_16
    return-void

    .line 1371
    :cond_17
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1372
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1373
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1374
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1375
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1376
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1377
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1378
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    goto :goto_16

    .line 1381
    :cond_38
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1382
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 1383
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 1384
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1385
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1386
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1387
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1388
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    goto :goto_16
.end method

.method public visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 4

    .line 800
    iget v0, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 801
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Flow;->scanStats(Lcom/sun/tools/javac/util/List;)V

    .line 802
    iput v0, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 803
    return-void
.end method

.method public visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V
    .registers 2

    .line 1245
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->recordExit(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1246
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 20

    .line 594
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-nez v2, :cond_7

    .line 709
    :goto_6
    return-void

    .line 596
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 598
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 599
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 600
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 601
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 602
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 603
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 605
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 606
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-eq v2, v4, :cond_4c

    .line 607
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 608
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 610
    :cond_4c
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 611
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/code/Lint;->augment(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 616
    :try_start_6c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    :goto_71
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 617
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_a3

    .line 618
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 619
    iget-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v14, v5, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v16, 0x8

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-eqz v5, :cond_a3

    .line 620
    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 621
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->trackable(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->newVar(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 616
    :cond_a3
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    goto :goto_71

    .line 628
    :cond_a7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    :goto_ac
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_df

    .line 629
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_db

    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    .line 630
    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->flags(Lcom/sun/tools/javac/tree/JCTree;)J

    move-result-wide v14

    const-wide/16 v16, 0x8

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-eqz v2, :cond_db

    .line 631
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanDef(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/sun/tools/javac/comp/Flow;->errorUncaught()V

    .line 628
    :cond_db
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    goto :goto_ac

    .line 638
    :cond_df
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-eq v2, v4, :cond_12a

    .line 639
    const/4 v4, 0x1

    .line 640
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v5, v2

    :goto_f1
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 641
    iget-object v2, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->isInitialConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_25d

    .line 642
    iget-object v2, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 643
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 644
    if-eqz v4, :cond_118

    .line 645
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 646
    const/4 v2, 0x0

    .line 640
    :goto_114
    iget-object v5, v5, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v4, v2

    goto :goto_f1

    .line 648
    :cond_118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v13, v2, v14}, Lcom/sun/tools/javac/comp/Check;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    move v2, v4

    goto :goto_114

    .line 655
    :cond_12a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    :goto_12f
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_165

    .line 656
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_161

    .line 657
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 658
    iget-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v14, v5, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v16, 0x8

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_161

    .line 659
    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 660
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->trackable(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v5

    if-eqz v5, :cond_161

    .line 661
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->newVar(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 655
    :cond_161
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    goto :goto_12f

    .line 667
    :cond_165
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    :goto_16a
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_19d

    .line 668
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_199

    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    .line 669
    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->flags(Lcom/sun/tools/javac/tree/JCTree;)J

    move-result-wide v14

    const-wide/16 v16, 0x8

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_199

    .line 670
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanDef(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/sun/tools/javac/comp/Flow;->errorUncaught()V

    .line 668
    :cond_199
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    goto :goto_16a

    .line 681
    :cond_19d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v4, :cond_25b

    .line 682
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    :goto_1ae
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e8

    .line 683
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->isInitialConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 684
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 685
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Flow;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v5, v13}, Lcom/sun/tools/javac/tree/TreeMaker;->Types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    iput-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    .line 686
    iget-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/tools/javac/comp/Flow;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v13, v2, v14}, Lcom/sun/tools/javac/code/Types;->createMethodTypeWithThrown(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, v5, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 682
    :cond_1e4
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    goto :goto_1ae

    .line 689
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v4, v3}, Lcom/sun/tools/javac/comp/Check;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object v4, v2

    .line 693
    :goto_1f5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v3, v2

    :goto_1fa
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_21b

    .line 694
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_217

    .line 695
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/sun/tools/javac/comp/Flow;->errorUncaught()V

    .line 693
    :cond_217
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v2

    goto :goto_1fa

    .line 700
    :cond_21b
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;
    :try_end_21f
    .catchall {:try_start_6c .. :try_end_21f} :catchall_23d

    .line 702
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 703
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 704
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 705
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 706
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 707
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 708
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    goto/16 :goto_6

    .line 702
    :catchall_23d
    move-exception v2

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 703
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 704
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 705
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 706
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 707
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 708
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 709
    throw v2

    :cond_25b
    move-object v4, v3

    goto :goto_1f5

    :cond_25d
    move v2, v4

    goto/16 :goto_114
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 8

    const/16 v3, 0x8

    .line 1182
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1183
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1184
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1185
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1186
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1187
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_5e

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_5e

    .line 1193
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1194
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v2

    .line 1195
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v3

    .line 1196
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v4

    .line 1197
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v5

    .line 1198
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1199
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1200
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1201
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1202
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1203
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1204
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1215
    :goto_5d
    return-void

    .line 1206
    :cond_5e
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1207
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v2

    .line 1208
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v3

    .line 1209
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1210
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1211
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1212
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1213
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    goto :goto_5d
.end method

.method public visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V
    .registers 2

    .line 1249
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->recordExit(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1250
    return-void
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 9

    const/4 v0, 0x1

    .line 806
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 807
    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 808
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 809
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget v3, v3, Lcom/sun/tools/javac/util/Log;->nerrors:I

    .line 811
    :goto_10
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v4

    .line 812
    iget v5, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/Bits;->excludeFrom(I)V

    .line 813
    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v5}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 814
    iget-boolean v5, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->resolveContinues(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 815
    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v5}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 816
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget v5, v5, Lcom/sun/tools/javac/util/Log;->nerrors:I

    if-ne v5, v3, :cond_4b

    iget-boolean v5, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    if-nez v5, :cond_4b

    .line 818
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/util/Bits;->diffSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v5

    iget v6, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/util/Bits;->nextBit(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6d

    .line 825
    :cond_4b
    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 826
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 827
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 828
    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    if-eqz v2, :cond_7e

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v2

    if-nez v2, :cond_7e

    :goto_63
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 829
    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/comp/Flow;->resolveBreaks(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/ListBuffer;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 830
    return-void

    .line 820
    :cond_6d
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 821
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 822
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 823
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    goto :goto_10

    .line 828
    :cond_7e
    const/4 v0, 0x0

    goto :goto_63
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 12

    const/4 v2, 0x1

    .line 866
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 867
    iget-boolean v4, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 868
    iget v5, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 869
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanStats(Lcom/sun/tools/javac/util/List;)V

    .line 872
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 873
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget v6, v0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    .line 875
    :goto_17
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v7

    .line 876
    iget v0, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/Bits;->excludeFrom(I)V

    .line 877
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_93

    .line 878
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 879
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 880
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 881
    iget-object v8, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v8, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 882
    iget-object v8, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v8, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 883
    iget-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v8, v8, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->isFalse()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    iput-boolean v8, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 891
    :goto_43
    iget-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v8}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 892
    iget-boolean v8, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->resolveContinues(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v9

    or-int/2addr v8, v9

    iput-boolean v8, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 893
    iget-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v8}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 894
    iget-object v8, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget v8, v8, Lcom/sun/tools/javac/util/Log;->nerrors:I

    if-ne v8, v6, :cond_73

    iget-boolean v8, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    if-nez v8, :cond_73

    .line 896
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v8

    iget-object v9, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v8, v9}, Lcom/sun/tools/javac/util/Bits;->diffSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v8

    iget v9, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    invoke-virtual {v8, v9}, Lcom/sun/tools/javac/util/Bits;->nextBit(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_b0

    .line 902
    :cond_73
    iput-boolean v4, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 903
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 904
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 905
    invoke-virtual {p0, p1, v3}, Lcom/sun/tools/javac/comp/Flow;->resolveBreaks(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/ListBuffer;)Z

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_be

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 906
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v0

    if-nez v0, :cond_be

    move v0, v2

    :goto_8e
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 907
    iput v5, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 908
    return-void

    .line 885
    :cond_93
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    .line 886
    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    iget v8, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v0, v1, v8}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 887
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v1

    .line 888
    iget v8, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    iget v9, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v1, v8, v9}, Lcom/sun/tools/javac/util/Bits;->inclRange(II)V

    .line 889
    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    goto :goto_43

    .line 898
    :cond_b0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 899
    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 900
    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    goto/16 :goto_17

    .line 906
    :cond_be
    const/4 v0, 0x0

    goto :goto_8e

    :cond_c0
    move v0, v2

    goto :goto_8e
.end method

.method public visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 12

    const/4 v9, 0x1

    .line 911
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V

    .line 913
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 914
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 915
    iget v2, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 916
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 917
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v3

    .line 918
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v4

    .line 920
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v5, v6}, Lcom/sun/tools/javac/comp/Flow;->letInit(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 921
    new-instance v5, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 922
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget v5, v5, Lcom/sun/tools/javac/util/Log;->nerrors:I

    .line 924
    :goto_33
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v6}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v6

    .line 925
    iget v7, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/util/Bits;->excludeFrom(I)V

    .line 926
    iget-object v7, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v7}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 927
    iget-boolean v7, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->resolveContinues(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v8

    or-int/2addr v7, v8

    iput-boolean v7, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 928
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget v7, v7, Lcom/sun/tools/javac/util/Log;->nerrors:I

    if-ne v7, v5, :cond_69

    iget-boolean v7, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    if-nez v7, :cond_69

    .line 930
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/util/Bits;->diffSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v7

    iget v8, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/util/Bits;->nextBit(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7d

    .line 936
    :cond_69
    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 937
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 938
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 939
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Flow;->resolveBreaks(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/ListBuffer;)Z

    .line 940
    iput-boolean v9, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 941
    iput v2, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 942
    return-void

    .line 932
    :cond_7d
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v6

    iput-object v6, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 933
    iput-boolean v9, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 934
    iput-boolean v9, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    goto :goto_33
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 4

    .line 1397
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 1398
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Flow;->checkInit(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 1399
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->referenced(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1401
    :cond_17
    return-void
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 7

    const/4 v3, 0x1

    .line 1218
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1219
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1220
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1221
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1222
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1223
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1224
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    if-eqz v2, :cond_44

    .line 1225
    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 1226
    iput-boolean v3, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 1227
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v3

    .line 1228
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v4

    .line 1229
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1230
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1231
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1232
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1233
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1234
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 1240
    :goto_43
    return-void

    .line 1236
    :cond_44
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1237
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1238
    iput-boolean v3, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    goto :goto_43
.end method

.method public visitLabelled(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .registers 4

    .line 945
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 946
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 947
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 948
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Flow;->resolveBreaks(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/ListBuffer;)Z

    move-result v0

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 949
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 16

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 713
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-nez v0, :cond_7

    .line 781
    :goto_6
    return-void

    .line 715
    :cond_7
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 716
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 717
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v6

    .line 718
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v7

    .line 719
    iget v8, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 720
    iget v9, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 721
    iget-object v10, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 723
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->augment(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 725
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 728
    :try_start_38
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->isInitialConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v11

    .line 731
    if-nez v11, :cond_42

    .line 732
    iget v0, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    iput v0, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 733
    :cond_42
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_45
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 734
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 735
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 736
    iget-object v12, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget-object v13, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget v13, v13, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v12, v13}, Lcom/sun/tools/javac/util/Bits;->incl(I)V

    .line 737
    iget-object v12, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v12, v0}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 733
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_45

    .line 739
    :cond_68
    if-eqz v11, :cond_c2

    .line 740
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 746
    :cond_74
    :goto_74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 747
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 749
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    if-eqz v0, :cond_9e

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9e

    .line 750
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagEndPos(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "missing.ret.stmt"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v12}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    :cond_9e
    if-eqz v11, :cond_e4

    .line 753
    iget v0, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    :goto_a2
    iget v1, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    if-ge v0, v1, :cond_e4

    .line 754
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->classDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne v1, v2, :cond_bf

    .line 755
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagEndPos(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/comp/Flow;->checkInit(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 753
    :cond_bf
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    .line 741
    :cond_c2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/32 v12, 0x100008

    and-long/2addr v0, v12

    const-wide/32 v12, 0x100000

    cmp-long v0, v0, v12

    if-eqz v0, :cond_74

    .line 742
    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;
    :try_end_d5
    .catchall {:try_start_38 .. :try_end_d5} :catchall_d6

    goto :goto_74

    .line 775
    :catchall_d6
    move-exception v0

    iput-object v6, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 776
    iput-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 777
    iput v8, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 778
    iput v9, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 779
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 780
    iput-object v10, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 781
    throw v0

    .line 757
    :cond_e4
    :try_start_e4
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 758
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    move-object v1, v0

    .line 759
    :cond_f2
    :goto_f2
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 760
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;

    .line 761
    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 762
    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->thrown:Lcom/sun/tools/javac/code/Type;

    if-nez v2, :cond_12e

    .line 763
    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/16 v12, 0x17

    if-ne v2, v12, :cond_12c

    move v2, v3

    :goto_10d
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 764
    if-eqz v11, :cond_f2

    .line 765
    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->inits:Lcom/sun/tools/javac/util/Bits;

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 766
    iget v2, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    :goto_118
    iget v12, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    if-ge v2, v12, :cond_f2

    .line 767
    iget-object v12, v0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v12}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v12

    iget-object v13, p0, Lcom/sun/tools/javac/comp/Flow;->vars:[Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    aget-object v13, v13, v2

    invoke-virtual {p0, v12, v13}, Lcom/sun/tools/javac/comp/Flow;->checkInit(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_118

    :cond_12c
    move v2, v4

    .line 763
    goto :goto_10d

    .line 771
    :cond_12e
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    :try_end_133
    .catchall {:try_start_e4 .. :try_end_133} :catchall_d6

    goto :goto_f2

    .line 775
    :cond_134
    iput-object v6, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 776
    iput-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 777
    iput v8, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 778
    iput v9, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    .line 779
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 780
    iput-object v10, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    goto/16 :goto_6
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 3

    .line 1316
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExprs(Lcom/sun/tools/javac/util/List;)V

    .line 1317
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExprs(Lcom/sun/tools/javac/util/List;)V

    .line 1318
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 7

    .line 1284
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1285
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExprs(Lcom/sun/tools/javac/util/List;)V

    .line 1287
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1288
    :goto_11
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1290
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Flow;->markThrown(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V

    .line 1289
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_11

    .line 1292
    :cond_22
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 1302
    :try_start_24
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_49

    .line 1303
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1304
    :goto_31
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1306
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/comp/Check;->incl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 1305
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_31

    .line 1308
    :cond_49
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_51

    .line 1311
    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 1312
    return-void

    .line 1311
    :catchall_51
    move-exception v0

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 1312
    throw v0
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 3

    .line 1253
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1255
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->recordExit(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1256
    return-void
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 15

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 952
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 953
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 954
    iget v6, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 955
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 956
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 957
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v8

    .line 959
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    move v2, v3

    :goto_1e
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 960
    iput-boolean v4, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 961
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 962
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v8}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 963
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    .line 964
    iget-object v9, v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v9, :cond_82

    move v2, v4

    .line 968
    :goto_3d
    iget-object v9, v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v9}, Lcom/sun/tools/javac/comp/Flow;->scanStats(Lcom/sun/tools/javac/util/List;)V

    .line 969
    iget-object v9, v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-static {v9, v7, v8}, Lcom/sun/tools/javac/comp/Flow;->addVars(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Bits;Lcom/sun/tools/javac/util/Bits;)V

    .line 971
    iget-boolean v9, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    if-nez v9, :cond_7e

    iget-boolean v9, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    if-eqz v9, :cond_7e

    iget-object v9, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v10, Lcom/sun/tools/javac/code/Lint$LintCategory;->FALLTHROUGH:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 973
    invoke-virtual {v9, v10}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v9

    if-eqz v9, :cond_7e

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    .line 974
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 975
    iget-object v9, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v10, Lcom/sun/tools/javac/code/Lint$LintCategory;->FALLTHROUGH:Lcom/sun/tools/javac/code/Lint$LintCategory;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    .line 976
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 975
    const-string v11, "possible.fall-through.into.case"

    new-array v12, v3, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v0, v11, v12}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    :cond_7e
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1e

    .line 967
    :cond_82
    iget-object v9, v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v9}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    goto :goto_3d

    .line 979
    :cond_88
    if-nez v2, :cond_91

    .line 980
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 981
    iput-boolean v4, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 983
    :cond_91
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    invoke-virtual {p0, p1, v5}, Lcom/sun/tools/javac/comp/Flow;->resolveBreaks(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/ListBuffer;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 984
    iput v6, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 985
    return-void
.end method

.method public visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V
    .registers 8

    .line 1259
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1260
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_4a

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4a

    .line 1263
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x40000000010L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->preciseRethrowTypes:Ljava/util/HashMap;

    .line 1264
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Flow;->allowImprovedRethrowAnalysis:Z

    if-eqz v1, :cond_4a

    .line 1266
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->preciseRethrowTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1267
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Flow;->markThrown(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_3a

    .line 1271
    :cond_4a
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Flow;->markThrown(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V

    .line 1273
    :cond_51
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Flow;->markDead()V

    .line 1274
    return-void
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 2

    .line 1433
    return-void
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 22

    .line 1001
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 1002
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1003
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1004
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    move-object v3, v2

    :goto_15
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1005
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->isMultiCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1006
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lcom/sun/tools/javac/util/List;

    .line 1008
    :goto_31
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1009
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v5, v2, v6}, Lcom/sun/tools/javac/comp/Check;->incl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    goto :goto_35

    .line 1007
    :cond_54
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto :goto_31

    .line 1004
    :cond_61
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v2

    goto :goto_15

    .line 1012
    :cond_65
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v12

    .line 1013
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    .line 1014
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1015
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v15

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    .line 1018
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    .line 1019
    instance-of v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v4, :cond_ba

    .line 1020
    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 1021
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->unrefdResources:Lcom/sun/tools/javac/code/Scope;

    iget-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1023
    invoke-virtual {v12, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_96

    .line 1024
    :cond_ba
    instance-of v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v4, :cond_c6

    .line 1025
    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    goto :goto_96

    .line 1027
    :cond_c6
    new-instance v2, Ljava/lang/AssertionError;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1030
    :cond_ce
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_d6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree;

    .line 1031
    iget-object v2, v9, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v2

    if-eqz v2, :cond_163

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, v9, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, v9, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1034
    :goto_103
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_107
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Type;

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->autoCloseableType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v5, v3}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    if-eqz v2, :cond_107

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->rs:Lcom/sun/tools/javac/comp/Resolve;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v3, Lcom/sun/tools/javac/util/Names;->close:Lcom/sun/tools/javac/util/Name;

    .line 1040
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 1041
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    move-object/from16 v3, p1

    .line 1036
    invoke-virtual/range {v2 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 1042
    iget v3, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_107

    .line 1043
    check-cast v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_151
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    .line 1044
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/sun/tools/javac/comp/Flow;->markThrown(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_151

    .line 1033
    :cond_163
    iget-object v2, v9, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto :goto_103

    .line 1050
    :cond_16a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1051
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/comp/Flow;->allowImprovedCatchAnalysis:Z

    if-eqz v2, :cond_214

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->runtimeExceptionType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->errorType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v4, v5}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/comp/Check;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object v3, v2

    .line 1054
    :goto_196
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1055
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sun/tools/javac/comp/Flow;->caught:Lcom/sun/tools/javac/util/List;

    .line 1056
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1058
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1059
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1060
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 1062
    invoke-virtual {v12}, Lcom/sun/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v4, Lcom/sun/tools/javac/code/Lint$LintCategory;->TRY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 1063
    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v2

    if-eqz v2, :cond_21b

    .line 1064
    invoke-virtual {v12}, Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1cf
    :goto_1cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 1065
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Flow;->unrefdResources:Lcom/sun/tools/javac/code/Scope;

    iget-object v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v7}, Lcom/sun/tools/javac/code/Scope;->includes(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v5

    if-eqz v5, :cond_1cf

    .line 1066
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v7, Lcom/sun/tools/javac/code/Lint$LintCategory;->TRY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v12

    const-string v16, "try.resource.not.referenced"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v7, v12, v0, v1}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Flow;->unrefdResources:Lcom/sun/tools/javac/code/Scope;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v2}, Lcom/sun/tools/javac/code/Scope;->remove(Lcom/sun/tools/javac/code/Symbol;)V

    goto :goto_1cf

    .line 1053
    :cond_214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    move-object v3, v2

    goto/16 :goto_196

    .line 1062
    :cond_21b
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 1074
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    :goto_224
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_34c

    .line 1075
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 1076
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v12, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 1077
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->isMultiCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)Z

    move-result v2

    if-eqz v2, :cond_2b5

    .line 1078
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lcom/sun/tools/javac/util/List;

    .line 1080
    :goto_24b
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/sun/tools/javac/comp/Check;->diff(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v16

    .line 1082
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_25f
    :goto_25f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1083
    iget-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v18, v0

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_46d

    .line 1085
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Flow;->syms:Lcom/sun/tools/javac/code/Symtab;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_25f

    .line 1088
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3, v5}, Lcom/sun/tools/javac/comp/Flow;->checkCaughtType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v5}, Lcom/sun/tools/javac/comp/Check;->incl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    move-object v2, v7

    :goto_2b3
    move-object v7, v2

    .line 1091
    goto :goto_25f

    .line 1079
    :cond_2b5
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto :goto_24b

    .line 1092
    :cond_2c2
    invoke-virtual {v15}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1094
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sun/tools/javac/comp/Flow;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    iget-object v0, v12, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Bits;->incl(I)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    iget-object v0, v12, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->preciseRethrowTypes:Ljava/util/HashMap;

    iget-object v0, v12, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/sun/tools/javac/comp/Check;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v8, v2}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v9, v2}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1101
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->preciseRethrowTypes:Ljava/util/HashMap;

    iget-object v7, v12, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    or-int/2addr v6, v2

    .line 1074
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    goto/16 :goto_224

    .line 1105
    :cond_34c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v2, :cond_433

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1107
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1108
    invoke-virtual {v15}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1111
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1112
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 1113
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1114
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    if-nez v7, :cond_3d6

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v3, v11}, Lcom/sun/tools/javac/comp/Check;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1117
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    if-nez v2, :cond_3c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->FINALLY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 1118
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v2

    if-eqz v2, :cond_3c6

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->FINALLY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1120
    invoke-static {v4}, Lcom/sun/tools/javac/tree/TreeInfo;->diagEndPos(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    .line 1119
    const-string v5, "finally.cannot.complete"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    :cond_3c6
    :goto_3c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->uninitsTry:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v13}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1150
    return-void

    .line 1124
    :cond_3d6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v7, v3, v5}, Lcom/sun/tools/javac/comp/Check;->diff(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v7, v10, v3}, Lcom/sun/tools/javac/comp/Check;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1125
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v5, v3, v2}, Lcom/sun/tools/javac/comp/Check;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v9}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1129
    :goto_3fd
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_427

    .line 1130
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/comp/Flow$PendingExit;

    .line 1131
    iget-object v3, v2, Lcom/sun/tools/javac/comp/Flow$PendingExit;->inits:Lcom/sun/tools/javac/util/Bits;

    if-eqz v3, :cond_41f

    .line 1132
    iget-object v3, v2, Lcom/sun/tools/javac/comp/Flow$PendingExit;->inits:Lcom/sun/tools/javac/util/Bits;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v3, v5}, Lcom/sun/tools/javac/util/Bits;->orSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1133
    iget-object v3, v2, Lcom/sun/tools/javac/comp/Flow$PendingExit;->uninits:Lcom/sun/tools/javac/util/Bits;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v3, v5}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1135
    :cond_41f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_3fd

    .line 1137
    :cond_427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v8}, Lcom/sun/tools/javac/util/Bits;->orSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    .line 1138
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    goto :goto_3c6

    .line 1141
    :cond_433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v3, v5}, Lcom/sun/tools/javac/comp/Check;->diff(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/sun/tools/javac/comp/Check;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1142
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 1143
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 1144
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1146
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1147
    :goto_45b
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_3c6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_45b

    :cond_46d
    move-object v2, v7

    goto/16 :goto_2b3
.end method

.method public visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V
    .registers 9

    .line 1408
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V

    .line 1409
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->CAST:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 1410
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 1411
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1412
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->is292targetTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1413
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->CAST:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 1414
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1413
    const-string v4, "redundant.cast"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    :cond_42
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 4

    .line 1348
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 1364
    :pswitch_7  #0x33
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1357
    :goto_c
    return-void

    .line 1360
    :pswitch_d  #0x34, 0x35, 0x36, 0x37
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1361
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->letInit(Lcom/sun/tools/javac/tree/JCTree;)V

    goto :goto_c

    .line 1350
    :pswitch_18  #0x32
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1351
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1352
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1353
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    .line 1354
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1355
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 1356
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    goto :goto_c

    .line 1348
    :pswitch_data_2e
    .packed-switch 0x32
        :pswitch_18  #00000032
        :pswitch_7  #00000033
        :pswitch_d  #00000034
        :pswitch_d  #00000035
        :pswitch_d  #00000036
        :pswitch_d  #00000037
    .end packed-switch
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 6

    .line 785
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Flow;->trackable(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v0

    .line 786
    if-eqz v0, :cond_17

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_17

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Flow;->newVar(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 787
    :cond_17
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_3b

    .line 788
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 789
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Lint;->augment(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 791
    :try_start_29
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Flow;->scanExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 792
    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Flow;->letInit(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_3c

    .line 794
    :cond_39
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 797
    :cond_3b
    return-void

    .line 794
    :catchall_3c
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 795
    throw v0
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 11

    const/4 v0, 0x1

    .line 833
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 834
    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 837
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->pendingExits:Lcom/sun/tools/javac/util/ListBuffer;

    .line 838
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget v3, v3, Lcom/sun/tools/javac/util/Log;->nerrors:I

    .line 840
    :goto_10
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v4

    .line 841
    iget v5, p0, Lcom/sun/tools/javac/comp/Flow;->nextadr:I

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/Bits;->excludeFrom(I)V

    .line 842
    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v5}, Lcom/sun/tools/javac/comp/Flow;->scanCond(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 843
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 844
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenFalse:Lcom/sun/tools/javac/util/Bits;

    .line 845
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->initsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 846
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->uninitsWhenTrue:Lcom/sun/tools/javac/util/Bits;

    iput-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 847
    iget-object v7, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v7, v7, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v7}, Lcom/sun/tools/javac/code/Type;->isFalse()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    iput-boolean v7, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 848
    iget-object v7, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v7}, Lcom/sun/tools/javac/comp/Flow;->scanStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 849
    iget-boolean v7, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Flow;->resolveContinues(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v8

    or-int/2addr v7, v8

    iput-boolean v7, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 850
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Flow;->log:Lcom/sun/tools/javac/util/Log;

    iget v7, v7, Lcom/sun/tools/javac/util/Log;->nerrors:I

    if-ne v7, v3, :cond_63

    iget-boolean v7, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    if-nez v7, :cond_63

    .line 852
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/util/Bits;->diffSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v7

    iget v8, p0, Lcom/sun/tools/javac/comp/Flow;->firstadr:I

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/util/Bits;->nextBit(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7c

    .line 858
    :cond_63
    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 859
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 860
    iput-object v6, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 861
    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/comp/Flow;->resolveBreaks(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/ListBuffer;)Z

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 862
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v1

    if-nez v1, :cond_89

    :cond_79
    :goto_79
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    .line 863
    return-void

    .line 854
    :cond_7c
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/tools/javac/comp/Flow;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 855
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->loopPassTwo:Z

    .line 856
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Flow;->alive:Z

    goto :goto_10

    .line 862
    :cond_89
    const/4 v0, 0x0

    goto :goto_79
.end method
