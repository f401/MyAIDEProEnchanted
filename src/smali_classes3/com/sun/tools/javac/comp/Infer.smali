.class public Lcom/sun/tools/javac/comp/Infer;
.super Ljava/lang/Object;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Infer$InferenceException;,
        Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;,
        Lcom/sun/tools/javac/comp/Infer$NoInstanceException;,
        Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;,
        Lcom/sun/tools/javac/comp/Infer$UninferredMethodType$UninferredReturnType;
    }
.end annotation


# static fields
.field public static final anyPoly:Lcom/sun/tools/javac/code/Type;

.field protected static final inferKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/Infer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

.field private final botFilter:Lcom/sun/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field chk:Lcom/sun/tools/javac/comp/Check;

.field diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field private errorFilter:Lcom/sun/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field fromTypeVarFun:Lcom/sun/tools/javac/code/Type$Mapping;

.field getInstFun:Lcom/sun/tools/javac/code/Type$Mapping;

.field implicitArgType:Lcom/sun/tools/javac/code/Type$Mapping;

.field private final invalidInstanceException:Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;

.field rs:Lcom/sun/tools/javac/comp/Resolve;

.field syms:Lcom/sun/tools/javac/code/Symtab;

.field types:Lcom/sun/tools/javac/code/Types;

.field private final unambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/Infer;->inferKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 53
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    sput-object v0, Lcom/sun/tools/javac/comp/Infer;->anyPoly:Lcom/sun/tools/javac/code/Type;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/sun/tools/javac/comp/Infer$1;

    const-string v1, "fromTypeVarFun"

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/comp/Infer$1;-><init>(Lcom/sun/tools/javac/comp/Infer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->fromTypeVarFun:Lcom/sun/tools/javac/code/Type$Mapping;

    .line 135
    new-instance v0, Lcom/sun/tools/javac/comp/Infer$2;

    const-string v1, "getInstFun"

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/comp/Infer$2;-><init>(Lcom/sun/tools/javac/comp/Infer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->getInstFun:Lcom/sun/tools/javac/code/Type$Mapping;

    .line 245
    new-instance v0, Lcom/sun/tools/javac/comp/Infer$3;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Infer$3;-><init>(Lcom/sun/tools/javac/comp/Infer;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->errorFilter:Lcom/sun/tools/javac/util/Filter;

    .line 252
    new-instance v0, Lcom/sun/tools/javac/comp/Infer$4;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Infer$4;-><init>(Lcom/sun/tools/javac/comp/Infer;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->botFilter:Lcom/sun/tools/javac/util/Filter;

    .line 667
    new-instance v0, Lcom/sun/tools/javac/comp/Infer$6;

    const-string v1, "implicitArgType"

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/comp/Infer$6;-><init>(Lcom/sun/tools/javac/comp/Infer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->implicitArgType:Lcom/sun/tools/javac/code/Type$Mapping;

    .line 69
    sget-object v0, Lcom/sun/tools/javac/comp/Infer;->inferKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 70
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 71
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    .line 72
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 73
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 74
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 75
    new-instance v0, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;-><init>(ZLcom/sun/tools/javac/util/JCDiagnostic$Factory;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->ambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    .line 77
    new-instance v0, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;-><init>(ZLcom/sun/tools/javac/util/JCDiagnostic$Factory;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->unambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    .line 79
    new-instance v0, Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->invalidInstanceException:Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/comp/Infer;)Lcom/sun/tools/javac/comp/Infer$NoInstanceException;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->ambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/comp/Infer;)Lcom/sun/tools/javac/util/Filter;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->botFilter:Lcom/sun/tools/javac/util/Filter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/comp/Infer;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)V
    .registers 7

    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/sun/tools/javac/comp/Infer;->checkArgumentsAcceptable(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)V

    return-void
.end method

.method private checkArgumentsAcceptable(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;ZZ",
            "Lcom/sun/tools/javac/util/Warner;",
            ")V"
        }
    .end annotation

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->rs:Lcom/sun/tools/javac/comp/Resolve;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->checkRawArgumentsAcceptable(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)V
    :try_end_0
    .catch Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 575
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->invalidInstanceException:Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->getDiagnostic()Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;->setMessage(Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Infer;
    .registers 2

    .line 62
    sget-object v0, Lcom/sun/tools/javac/comp/Infer;->inferKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Infer;

    .line 63
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/sun/tools/javac/comp/Infer;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Infer;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 65
    :cond_0
    return-object v0
.end method

.method private instantiateArg(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ForAll;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/Warner;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$InferenceException;
        }
    .end annotation

    .line 590
    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/tools/javac/comp/Infer;->instantiateExpr(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    :try_end_0
    .catch Lcom/sun/tools/javac/comp/Infer$NoInstanceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    :goto_1
    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 593
    iget-object p3, p3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_1

    .line 595
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/tools/javac/comp/Infer;->instantiateExpr(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0
.end method

.method private instantiateAsUninferredVars(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 346
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v6, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    move-object v3, v2

    .line 349
    check-cast v3, Lcom/sun/tools/javac/code/Type$UndetVar;

    .line 350
    new-instance v0, Lcom/sun/tools/javac/code/Type$CapturedType;

    iget-object v1, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Type$CapturedType;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$WildcardType;)V

    .line 351
    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    move-object v6, v0

    .line 352
    goto :goto_1

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, p2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 356
    check-cast v0, Lcom/sun/tools/javac/code/Type$CapturedType;

    .line 357
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v6}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v1, v4, p2, v5}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    .line 358
    new-instance v4, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    sget-object v5, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v4, v1, v5, v7}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 359
    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type$TypeVar;

    iput-object v1, v4, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 360
    iput-object v4, v0, Lcom/sun/tools/javac/code/Type$CapturedType;->wildcard:Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 361
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    .line 362
    goto :goto_2

    .line 363
    :cond_2
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method private isSubClass(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    .line 225
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 226
    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    move-object v0, v1

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 228
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    .line 229
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 231
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/sun/tools/javac/comp/Infer;->isSubClass(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 242
    :goto_0
    return v0

    .line 237
    :cond_2
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 238
    iget-object v4, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v0, v5}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 239
    goto :goto_0

    .line 242
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkWithinBounds(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/Warner;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;
        }
    .end annotation

    .line 605
    move-object v1, p1

    move-object v2, p2

    .line 606
    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    instance-of v0, v0, Lcom/sun/tools/javac/code/Type$UndetVar;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 609
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_0

    .line 610
    :cond_1
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v3, v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 611
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v0, v3, p3}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->invalidInstanceException:Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;

    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 613
    const-string v2, "inferred.do.not.conform.to.bounds"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0

    .line 616
    :cond_2
    return-void
.end method

.method public instantiateExpr(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$InferenceException;
        }
    .end annotation

    .line 307
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->fromTypeVarFun:Lcom/sun/tools/javac/code/Type$Mapping;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object v3, v4

    .line 308
    :goto_0
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type$UndetVar;

    .line 310
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    check-cast v1, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 311
    new-instance v5, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 312
    sget-object v2, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->EXTENDS:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    invoke-virtual {p1, v1, v2}, Lcom/sun/tools/javac/code/Type$ForAll;->getConstraints(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    .line 313
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v8, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v7, v2, v8, v4}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 316
    :cond_0
    sget-object v2, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->EQUAL:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    invoke-virtual {p1, v1, v2}, Lcom/sun/tools/javac/code/Type$ForAll;->getConstraints(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v6, 0x11

    if-eq v1, v6, :cond_1

    .line 318
    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    .line 320
    :cond_1
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    .line 308
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v0

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1, v2, v4}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 323
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    .line 324
    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x15

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->boxedTypeOrType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 323
    :goto_2
    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v1, v4

    .line 329
    :goto_3
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type$UndetVar;

    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/comp/Infer;->maximizeInst(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/util/Warner;)V

    .line 329
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_3

    :cond_3
    move-object v0, p2

    .line 324
    goto :goto_2

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->getInstFun:Lcom/sun/tools/javac/code/Type$Mapping;

    invoke-static {v4, v0}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 335
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Type;->containsAny(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 337
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    .line 339
    invoke-direct {p0, v4, v3}, Lcom/sun/tools/javac/comp/Infer;->instantiateAsUninferredVars(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 337
    invoke-virtual {v1, v0, v2, v3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 341
    :cond_5
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p3}, Lcom/sun/tools/javac/util/Warner;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v0, v3}, Lcom/sun/tools/javac/code/Type$ForAll;->inst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p2}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    .line 325
    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->unambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    .line 326
    const-string v3, "infer.no.conforming.instance.exists"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0
.end method

.method public instantiateMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Type$MethodType;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;ZZ",
            "Lcom/sun/tools/javac/util/Warner;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$InferenceException;
        }
    .end annotation

    .line 378
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->fromTypeVarFun:Lcom/sun/tools/javac/code/Type$Mapping;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 379
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    .line 382
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Types;->capture(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v10

    .line 384
    if-eqz p7, :cond_1

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    move-object v7, v2

    .line 388
    :goto_0
    if-nez v7, :cond_e

    .line 389
    invoke-virtual {v10}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_2

    move-object v5, v3

    move-object v6, v10

    .line 393
    :goto_1
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v2, v7, :cond_5

    .line 394
    iget-object v2, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    .line 395
    iget-object v3, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 396
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v9

    .line 397
    iget v3, v4, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v11, 0x10

    if-ne v3, v11, :cond_0

    move-object v3, v4

    .line 398
    check-cast v3, Lcom/sun/tools/javac/code/Type$ForAll;

    move-object/from16 v0, p2

    move-object/from16 v1, p8

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/sun/tools/javac/comp/Infer;->instantiateArg(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0, v8}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 400
    if-eqz p6, :cond_3

    .line 401
    iget-object v11, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p8

    invoke-virtual {v11, v4, v3, v0}, Lcom/sun/tools/javac/code/Types;->isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v3

    .line 403
    :goto_2
    if-eqz v3, :cond_4

    .line 408
    iget-object v2, v5, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 409
    iget-object v3, v6, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 410
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object/from16 p5, v0

    move-object v5, v2

    move-object v6, v3

    .line 411
    goto :goto_1

    .line 384
    :cond_1
    const/4 v2, 0x0

    move-object v7, v2

    goto :goto_0

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->unambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    .line 391
    const-string v3, "infer.arg.length.mismatch"

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v2

    throw v2

    .line 402
    :cond_3
    iget-object v11, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p8

    invoke-virtual {v11, v4, v3, v0}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v3

    goto :goto_2

    .line 404
    :cond_4
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer;->unambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    .line 405
    const-string v4, "infer.no.conforming.assignment.exists"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v2

    throw v2

    .line 393
    :cond_5
    iget-object v2, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v2, v7, :cond_d

    .line 417
    if-eqz p7, :cond_8

    .line 418
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v7}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 419
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0, v8}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 420
    :goto_3
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 421
    iget-object v2, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 422
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    .line 423
    iget v2, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v9, 0x10

    if-ne v2, v9, :cond_6

    move-object v2, v3

    .line 424
    check-cast v2, Lcom/sun/tools/javac/code/Type$ForAll;

    move-object/from16 v0, p2

    move-object/from16 v1, p8

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/sun/tools/javac/comp/Infer;->instantiateArg(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 425
    :cond_6
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v5, v0}, Lcom/sun/tools/javac/code/Types;->isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v2

    .line 426
    if-eqz v2, :cond_7

    .line 431
    iget-object v6, v6, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 432
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object/from16 p5, v0

    goto :goto_3

    .line 427
    :cond_7
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->unambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    .line 428
    const-string v3, "infer.no.conforming.assignment.exists"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v5}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v2

    throw v2

    .line 417
    :cond_8
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    .line 438
    check-cast v2, Lcom/sun/tools/javac/code/Type$UndetVar;

    move-object/from16 v0, p8

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/comp/Infer;->minimizeInst(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/util/Warner;)V

    goto :goto_4

    .line 441
    :cond_9
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 444
    new-instance v6, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v6}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 447
    new-instance v5, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 450
    new-instance v4, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 452
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    .line 453
    check-cast v2, Lcom/sun/tools/javac/code/Type$UndetVar;

    .line 454
    iget-object v8, v2, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    iget v8, v8, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v9, 0x11

    if-ne v8, v9, :cond_a

    .line 455
    iget-object v8, v2, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v8}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 456
    invoke-virtual {v6, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 457
    iget-object v8, v2, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v5, v8}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 458
    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 459
    const/4 v8, 0x0

    iput-object v8, v2, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    goto :goto_5

    .line 461
    :cond_a
    iget-object v8, v2, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v5, v8}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 462
    iget-object v2, v2, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_5

    .line 465
    :cond_b
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p8

    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/tools/javac/comp/Infer;->checkWithinBounds(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)V

    .line 467
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1, v4}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 469
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 472
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 473
    new-instance v2, Lcom/sun/tools/javac/comp/Infer$5;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    move-object v3, p0

    move-object/from16 v7, p2

    move-object/from16 v9, p1

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p4

    invoke-direct/range {v2 .. v14}, Lcom/sun/tools/javac/comp/Infer$5;-><init>(Lcom/sun/tools/javac/comp/Infer;Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;Lcom/sun/tools/javac/code/Symbol;)V

    .line 506
    :goto_6
    return-object v2

    .line 504
    :cond_c
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type$MethodType;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v11

    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v8 .. v14}, Lcom/sun/tools/javac/comp/Infer;->checkArgumentsAcceptable(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)V

    move-object v2, v4

    .line 506
    goto :goto_6

    .line 414
    :cond_d
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer;->unambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    const-string v3, "infer.arg.length.mismatch"

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v2

    throw v2

    :cond_e
    move-object v5, v3

    move-object v6, v10

    goto/16 :goto_1
.end method

.method instantiatePolymorphicSignatureInstance(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 637
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 650
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->implicitArgType:Lcom/sun/tools/javac/code/Type$Mapping;

    invoke-static {p5, v1}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 656
    if-eqz p4, :cond_4

    .line 657
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 660
    :goto_1
    new-instance v3, Lcom/sun/tools/javac/code/Type$MethodType;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v3, v2, v0, v1, v4}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 664
    return-object v3

    .line 639
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    .line 640
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    if-ne v1, v2, :cond_1

    .line 641
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 645
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 647
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    if-ne v0, v1, :cond_3

    .line 648
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto :goto_0

    .line 649
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 658
    :cond_4
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method maximizeInst(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/util/Warner;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$NoInstanceException;
        }
    .end annotation

    .line 208
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->errorFilter:Lcom/sun/tools/javac/util/Filter;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Type;->filter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 209
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    .line 217
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    .line 218
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    return-void

    .line 212
    :cond_1
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->glb(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->ambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    .line 220
    const-string v3, "no.unique.maximal.instance.exists"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0
.end method

.method minimizeInst(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/util/Warner;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$NoInstanceException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 263
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->lobounds:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->errorFilter:Lcom/sun/tools/javac/util/Filter;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Type;->filter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 264
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    .line 272
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x13

    if-eq v0, v2, :cond_7

    .line 278
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer;->errorFilter:Lcom/sun/tools/javac/util/Filter;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Type;->filter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 286
    :goto_1
    if-eqz v0, :cond_6

    .line 287
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_6

    .line 292
    :cond_0
    return-void

    .line 267
    :cond_1
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    :goto_2
    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    goto :goto_2

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->lub(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 282
    :cond_4
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    goto :goto_1

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->glb(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_1

    .line 288
    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->ambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    .line 289
    const-string v3, "incompatible.upper.bounds"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0

    .line 273
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer;->ambiguousNoInstanceException:Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    .line 274
    const-string v3, "no.unique.minimal.instance.exists"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0
.end method
