.class public Lcom/sun/tools/javac/comp/Attr;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "Attr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Attr$BreakAttr;,
        Lcom/sun/tools/javac/comp/Attr$IdentAttributer;,
        Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;
    }
.end annotation


# static fields
.field static final allowDiamondFinder:Z = true

.field protected static final attrKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/Attr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allowAnonOuterThis:Z

.field allowBoxing:Z

.field allowCovariantReturns:Z

.field allowEnums:Z

.field allowGenerics:Z

.field allowStringsInSwitch:Z

.field allowVarargs:Z

.field final annotate:Lcom/sun/tools/javac/comp/Annotate;

.field private breakTree:Lcom/sun/tools/javac/tree/JCTree;

.field final cfolder:Lcom/sun/tools/javac/comp/ConstFold;

.field final chk:Lcom/sun/tools/javac/comp/Check;

.field final deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

.field final diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field final enter:Lcom/sun/tools/javac/comp/Enter;

.field env:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field errKey:Ljava/lang/String;

.field private final erroneousMapping:Lcom/sun/tools/javac/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/code/Scope;",
            "Lcom/sun/tools/javac/code/Scope;",
            ">;"
        }
    .end annotation
.end field

.field findDiamonds:Z

.field private identAttributer:Lcom/sun/source/tree/TreeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/source/tree/TreeVisitor",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field final infer:Lcom/sun/tools/javac/comp/Infer;

.field final log:Lcom/sun/tools/javac/util/Log;

.field final make:Lcom/sun/tools/javac/tree/TreeMaker;

.field final memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

.field final names:Lcom/sun/tools/javac/util/Names;

.field noteWarner:Lcom/sun/tools/javac/util/Warner;

.field pkind:I

.field pt:Lcom/sun/tools/javac/code/Type;

.field relax:Z

.field result:Lcom/sun/tools/javac/code/Type;

.field final rs:Lcom/sun/tools/javac/comp/Resolve;

.field sourceName:Ljava/lang/String;

.field final syms:Lcom/sun/tools/javac/code/Symtab;

.field final target:Lcom/sun/tools/javac/jvm/Target;

.field final types:Lcom/sun/tools/javac/code/Types;

.field useBeforeDeclarationWarning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/Attr;->attrKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    .line 301
    new-instance v0, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;

    invoke-direct {v0, p0, v3}, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;-><init>(Lcom/sun/tools/javac/comp/Attr;Lcom/sun/tools/javac/comp/Attr$1;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->identAttributer:Lcom/sun/source/tree/TreeVisitor;

    .line 374
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 1924
    new-instance v0, Lcom/sun/tools/javac/util/Pair;

    invoke-direct {v0, v3, v3}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->erroneousMapping:Lcom/sun/tools/javac/util/Pair;

    .line 2704
    new-instance v0, Lcom/sun/tools/javac/util/Warner;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Warner;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->noteWarner:Lcom/sun/tools/javac/util/Warner;

    .line 96
    sget-object v0, Lcom/sun/tools/javac/comp/Attr;->attrKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 98
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    .line 99
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    .line 100
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 101
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 102
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 103
    invoke-static {p1}, Lcom/sun/tools/javac/comp/MemberEnter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/MemberEnter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    .line 104
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 105
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Enter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->enter:Lcom/sun/tools/javac/comp/Enter;

    .line 106
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Infer;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Infer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->infer:Lcom/sun/tools/javac/comp/Infer;

    .line 107
    invoke-static {p1}, Lcom/sun/tools/javac/comp/ConstFold;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/ConstFold;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    .line 108
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Target;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 109
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 110
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 111
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Annotate;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    .line 112
    invoke-static {p1}, Lcom/sun/tools/javac/code/DeferredLintHandler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 114
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v3

    .line 116
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Source;->allowGenerics()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowGenerics:Z

    .line 118
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Source;->allowVarargs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowVarargs:Z

    .line 119
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Source;->allowEnums()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowEnums:Z

    .line 120
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Source;->allowBoxing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowBoxing:Z

    .line 121
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Source;->allowCovariantReturns()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowCovariantReturns:Z

    .line 122
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Source;->allowAnonOuterThis()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowAnonOuterThis:Z

    .line 123
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Source;->allowStringsInSwitch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowStringsInSwitch:Z

    .line 124
    iget-object v0, v4, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->sourceName:Ljava/lang/String;

    .line 125
    const-string v0, "-retrofit"

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "-relax"

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->relax:Z

    .line 127
    const-string v0, "findDiamond"

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Source;->allowDiamond()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Attr;->findDiamonds:Z

    .line 129
    const-string v0, "useBeforeDeclarationWarning"

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->useBeforeDeclarationWarning:Z

    .line 130
    return-void

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0

    :cond_2
    move v2, v1

    .line 128
    goto :goto_1
.end method

.method private static addVars(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Scope;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lcom/sun/tools/javac/code/Scope;",
            ")V"
        }
    .end annotation

    .line 1053
    :goto_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1055
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1056
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1053
    :cond_0
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1058
    :cond_1
    return-void
.end method

.method private assertConvertible(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)V
    .registers 7

    .line 2830
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2, p3, p4}, Lcom/sun/tools/javac/code/Types;->isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2845
    :cond_0
    :goto_0
    return-void

    .line 2833
    :cond_1
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2834
    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2835
    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p4}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private attribClassBody(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    .line 3181
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 3182
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne p2, v1, :cond_4

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 3185
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v4, p2}, Lcom/sun/tools/javac/comp/Check;->validateAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3188
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribBounds(Lcom/sun/tools/javac/util/List;)V

    .line 3189
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isAnonymous()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3191
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v4, p1}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 3192
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v4, p1}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 3193
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v4, p1}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 3198
    :cond_0
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x600

    and-long/2addr v4, v6

    cmp-long v1, v4, v10

    if-nez v1, :cond_1

    .line 3199
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Attr;->relax:Z

    if-nez v1, :cond_1

    .line 3200
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Lcom/sun/tools/javac/comp/Check;->checkAllDefined(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 3203
    :cond_1
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x2000

    and-long/2addr v4, v6

    cmp-long v1, v4, v10

    if-eqz v1, :cond_5

    .line 3204
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3205
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v5, "cant.extend.intf.annotation"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3207
    :cond_2
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3208
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v5, "intf.annotation.cant.have.type.params"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3219
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v4, v5}, Lcom/sun/tools/javac/comp/Check;->checkClassBounds(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 3221
    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 3223
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    move-object v4, v1

    .line 3224
    :goto_2
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3225
    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v5, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3224
    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v1

    goto :goto_2

    :cond_4
    move v1, v3

    .line 3182
    goto/16 :goto_0

    .line 3214
    :cond_5
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v4, v5}, Lcom/sun/tools/javac/comp/Check;->checkCompatibleSupertypes(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_1

    .line 3229
    :cond_6
    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v4, v5}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3230
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v5, "generic.throwable"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3234
    :cond_7
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Check;->checkImplementations(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 3237
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, p1, v4}, Lcom/sun/tools/javac/comp/Attr;->checkAutoCloseable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)V

    .line 3239
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v4, v1

    :goto_3
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3241
    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 3244
    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v1, v2, :cond_a

    .line 3245
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    cmp-long v1, v6, v10

    if-eqz v1, :cond_8

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v5, :cond_a

    :cond_8
    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    .line 3246
    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->flags(Lcom/sun/tools/javac/tree/JCTree;)J

    move-result-wide v6

    const-wide/16 v8, 0x208

    and-long/2addr v6, v8

    cmp-long v1, v6, v10

    if-eqz v1, :cond_a

    .line 3247
    const/4 v5, 0x0

    .line 3248
    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_d

    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 3249
    :goto_4
    if-eqz v1, :cond_9

    iget v5, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 3251
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 3252
    :cond_9
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v6, "icls.cant.have.static.decl"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p2, v7, v3

    invoke-virtual {v5, v1, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3239
    :cond_a
    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v1

    goto :goto_3

    .line 3257
    :cond_b
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Check;->checkCyclicConstructors(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 3260
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclicElements(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 3263
    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->SERIAL:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3264
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/Attr;->isSerializable(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3265
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    cmp-long v1, v2, v10

    if-nez v1, :cond_c

    .line 3266
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    cmp-long v1, v2, v10

    if-nez v1, :cond_c

    .line 3267
    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/comp/Attr;->checkSerialVersionUID(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 3269
    :cond_c
    return-void

    :cond_d
    move-object v1, v5

    goto :goto_4
.end method

.method private canOwnInitializer(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 6

    .line 2699
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2701
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2699
    :goto_0
    return v0

    .line 2701
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 3313
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method private checkEnumInitializer(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ")V"
        }
    .end annotation

    .line 2662
    invoke-direct {p0, p3}, Lcom/sun/tools/javac/comp/Attr;->isStaticEnumField(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2663
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 2665
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-nez v1, :cond_1

    .line 2681
    :cond_0
    :goto_0
    return-void

    .line 2671
    :cond_1
    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2676
    :cond_2
    invoke-static {p2}, Lcom/sun/tools/javac/comp/Resolve;->isInitializer(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "illegal.enum.static.ref"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private checkInit(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$VarSymbol;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2619
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, p3, :cond_0

    iget v0, p3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->pos:I

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    if-le v0, v3, :cond_3

    :cond_0
    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 2621
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Attr;->canOwnInitializer(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v3, p3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 2622
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-ne v3, v0, :cond_3

    .line 2623
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {p2}, Lcom/sun/tools/javac/comp/Resolve;->isStatic(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v3

    if-ne v0, v3, :cond_3

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 2624
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_1

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2625
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 2626
    :cond_1
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    if-ne v0, p3, :cond_5

    .line 2627
    const-string v0, "self.ref"

    .line 2628
    :goto_1
    if-eqz p4, :cond_2

    invoke-direct {p0, p3}, Lcom/sun/tools/javac/comp/Attr;->isStaticEnumField(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2629
    :cond_2
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2635
    :cond_3
    :goto_2
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    .line 2637
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Attr;->checkEnumInitializer(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 2638
    return-void

    :cond_4
    move v0, v2

    .line 2623
    goto :goto_0

    .line 2627
    :cond_5
    const-string v0, "forward.ref"

    goto :goto_1

    .line 2630
    :cond_6
    iget-boolean v3, p0, Lcom/sun/tools/javac/comp/Attr;->useBeforeDeclarationWarning:Z

    if-eqz v3, :cond_3

    .line 2631
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {v3, v4, v0, v1}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private checkSerialVersionUID(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 11

    const-wide/16 v6, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3286
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->serialVersionUID:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 3287
    :goto_0
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_0

    .line 3288
    :cond_0
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-nez v1, :cond_2

    .line 3289
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->SERIAL:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 3290
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    .line 3289
    const-string v3, "missing.SVUID"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3310
    :cond_1
    :goto_1
    return-void

    .line 3295
    :cond_2
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 3296
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v6

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 3298
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->SERIAL:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 3299
    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 3298
    const-string v3, "improper.SVUID"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3302
    :cond_3
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 3303
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->SERIAL:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 3304
    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 3303
    const-string v3, "long.SVUID"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3307
    :cond_4
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3308
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->SERIAL:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 3309
    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 3308
    const-string v3, "constant.SVUID"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private condType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    .line 1194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/comp/Attr;->condType1(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1198
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1199
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1200
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, p3, v0}, Lcom/sun/tools/javac/comp/ConstFold;->coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1198
    :cond_0
    return-object v0

    :cond_1
    move-object p3, p4

    .line 1201
    goto :goto_0
.end method

.method private condType1(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 12

    const/4 v4, 0x1

    const/16 v6, 0x9

    const/4 v3, 0x4

    .line 1218
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3, p4}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1271
    :goto_0
    return-object v0

    .line 1221
    :cond_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowBoxing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move-object v0, p3

    .line 1223
    :goto_1
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Attr;->allowBoxing:Z

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    move-object v1, p4

    .line 1230
    :goto_2
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1234
    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ge v2, v3, :cond_5

    iget v2, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 1235
    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1236
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_1

    .line 1224
    :cond_4
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p4}, Lcom/sun/tools/javac/code/Types;->unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    goto :goto_2

    .line 1237
    :cond_5
    iget v2, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ge v2, v3, :cond_6

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 1238
    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1239
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v3, v4

    .line 1241
    :goto_3
    if-ge v3, v6, :cond_8

    .line 1242
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->typeOfTag:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v2, v3

    .line 1243
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5, v0, v2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 1244
    invoke-virtual {v5, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v0, v2

    .line 1245
    goto :goto_0

    .line 1241
    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 1250
    :cond_8
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowBoxing:Z

    if-eqz v0, :cond_a

    .line 1251
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1252
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object p3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1253
    :cond_9
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1254
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p4}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object p4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1257
    :cond_a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3, p4}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1258
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 1259
    :cond_b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p4, p3}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1260
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 1262
    :cond_c
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowBoxing:Z

    if-eqz v0, :cond_d

    iget v0, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v0, v6, :cond_d

    iget v0, p4, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_e

    .line 1263
    :cond_d
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "neither.conditional.subtype"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    aput-object p4, v2, v4

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1265
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 1271
    :cond_e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->lub(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private enumConstant(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;
    .registers 11

    const/4 v2, 0x0

    .line 1062
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "enum.label.must.be.unqualified.enum"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1078
    :cond_0
    :goto_0
    return-object v1

    .line 1066
    :cond_1
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    .line 1067
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    .line 1068
    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 1069
    :goto_1
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_3

    .line 1070
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 1071
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    move-object v0, v1

    .line 1072
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    .line 1073
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    .line 1074
    iget-wide v4, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v6, 0x4000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move-object v1, v2

    .line 1075
    goto :goto_0

    .line 1069
    :cond_2
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 1078
    goto :goto_0
.end method

.method private findJumpTarget(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "I",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    const/16 v2, 0x16

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1319
    :goto_0
    if-eqz p4, :cond_3

    .line 1322
    iget-object v0, p4, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 1355
    :cond_0
    iget-object p4, p4, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    goto :goto_0

    .line 1348
    :pswitch_0
    if-nez p3, :cond_0

    const/16 v0, 0x15

    if-ne p2, v0, :cond_0

    iget-object v0, p4, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 1363
    :cond_1
    :goto_1
    return-object v0

    .line 1324
    :pswitch_1
    iget-object v0, p4, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    .line 1325
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lcom/sun/tools/javac/util/Name;

    if-ne p3, v1, :cond_0

    .line 1327
    if-ne p2, v2, :cond_1

    .line 1328
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1329
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1330
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1331
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    .line 1332
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "not.loop.label"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1335
    :cond_2
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->referencedStatement(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    goto :goto_1

    .line 1345
    :pswitch_2
    if-nez p3, :cond_0

    iget-object v0, p4, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_1

    .line 1357
    :cond_3
    if-eqz p3, :cond_4

    .line 1358
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "undef.label"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1363
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1359
    :cond_4
    if-ne p2, v2, :cond_5

    .line 1360
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "cont.outside.loop"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1362
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "break.outside.switch.loop"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1322
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSyntheticScopeMapping(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/code/Scope;",
            "Lcom/sun/tools/javac/code/Scope;",
            ">;"
        }
    .end annotation

    .line 1899
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->erroneousMapping:Lcom/sun/tools/javac/util/Pair;

    .line 1921
    :goto_0
    return-object v0

    .line 1903
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1904
    new-instance v8, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    new-instance v1, Lcom/sun/tools/javac/code/Scope;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, v2}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    invoke-direct {v8, v0, v1}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1909
    iget-object v0, v8, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v7, v0

    .line 1910
    :goto_1
    iget-object v0, v7, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_1

    .line 1912
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1913
    new-instance v5, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v5, v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1915
    iget-object v0, v7, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, v7, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v6, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1917
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v6, v5}, Lcom/sun/tools/javac/code/Types;->createMethodTypeWithReturn(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget-object v0, v7, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1919
    iget-object v0, v8, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1911
    invoke-virtual {v7}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v0, v8

    .line 1921
    goto :goto_0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Attr;
    .registers 2

    .line 89
    sget-object v0, Lcom/sun/tools/javac/comp/Attr;->attrKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Attr;

    .line 90
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/sun/tools/javac/comp/Attr;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Attr;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 92
    :cond_0
    return-object v0
.end method

.method private isSerializable(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z
    .registers 5

    .line 3274
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->serializableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->complete()V
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 3278
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->serializableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    :goto_0
    return v0

    .line 3276
    :catch_0
    move-exception v0

    .line 3277
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStaticEnumField(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z
    .registers 4

    .line 2687
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Flags;->isEnum(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2688
    invoke-static {p1}, Lcom/sun/tools/javac/code/Flags;->isStatic(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2689
    invoke-static {p1}, Lcom/sun/tools/javac/code/Flags;->isConstant(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2687
    :goto_0
    return v0

    .line 2689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isType(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 3

    .line 278
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectSym(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "I)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 2379
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    .line 2380
    iget-object v11, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    .line 2381
    iget v2, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v3, 0xb

    if-eq v2, v3, :cond_6

    const/16 v3, 0x13

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    .line 2438
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    if-ne v11, v2, :cond_1

    .line 2441
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 2442
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, p3}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2443
    new-instance v7, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-static {v3}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v7, v4, v3, v2}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 2444
    new-instance v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v4, 0x19

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v2, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    iget-object v8, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v3 .. v8}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2448
    :cond_0
    :goto_0
    return-object v3

    .line 2447
    :cond_1
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "cant.deref"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v2, v10, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2448
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v2, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_0

    .line 2411
    :pswitch_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2419
    :pswitch_1
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2420
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sun/tools/javac/comp/Attr;->selectSym(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v9

    .line 2422
    :goto_1
    if-nez v9, :cond_3

    .line 2423
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "type.var.cant.be.deref"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v10, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2424
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v2, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_0

    .line 2421
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 2426
    :cond_3
    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 2427
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    move-object/from16 v0, p4

    invoke-direct {v3, v2, v0, p3, v9}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2429
    :goto_2
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    const/4 v8, 0x1

    move-object v4, v10

    move-object v5, p2

    move-object v6, p3

    move-object v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;

    move-object v3, v9

    .line 2430
    goto :goto_0

    :cond_4
    move-object v3, v9

    .line 2428
    goto :goto_2

    .line 2383
    :pswitch_2
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v3, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2384
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-virtual {v2, v0, v3, v11, v1}, Lcom/sun/tools/javac/comp/Resolve;->findIdentInPackage(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 2383
    const/4 v8, 0x1

    move-object v4, v10

    move-object v5, p2

    move-object v6, p3

    move-object v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    goto/16 :goto_0

    .line 2434
    :cond_5
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v11, v3, p3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    goto/16 :goto_0

    .line 2388
    :cond_6
    move-object/from16 v0, p5

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p5

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    .line 2389
    :cond_7
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 2390
    invoke-virtual/range {p5 .. p5}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-virtual/range {p5 .. p5}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    move-object v3, v10

    move-object/from16 v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v7, v11

    .line 2389
    invoke-virtual/range {v2 .. v9}, Lcom/sun/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    goto/16 :goto_0

    .line 2391
    :cond_8
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v11, v2, :cond_9

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v11, v2, :cond_a

    .line 2392
    :cond_9
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v3, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object/from16 v0, p4

    invoke-virtual {v2, v10, v0, v3, v11}, Lcom/sun/tools/javac/comp/Resolve;->resolveSelf(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    goto/16 :goto_0

    .line 2393
    :cond_a
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    if-ne v11, v2, :cond_c

    .line 2396
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v2, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 2397
    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Attr;->allowGenerics:Z

    if-eqz v2, :cond_b

    .line 2398
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2400
    :goto_3
    new-instance v7, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v7, v4, v2, v3}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 2401
    new-instance v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v4, 0x19

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v2, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    iget-object v8, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v3 .. v8}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    goto/16 :goto_0

    .line 2399
    :cond_b
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto :goto_3

    .line 2405
    :cond_c
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-virtual {v2, v0, p3, v11, v1}, Lcom/sun/tools/javac/comp/Resolve;->findIdentInType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 2406
    and-int/lit8 v2, p6, 0x40

    if-nez v2, :cond_0

    .line 2407
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    const/4 v8, 0x1

    move-object v4, v10

    move-object v5, p2

    move-object v6, p3

    move-object v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    goto/16 :goto_0

    .line 2381
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private selectSym(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "I)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 2371
    iget-object v2, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Attr;->selectSym(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attrib(Lcom/sun/tools/javac/comp/Env;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 3071
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3072
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Attr;->attribTopLevel(Lcom/sun/tools/javac/comp/Env;)V

    .line 3075
    :goto_0
    return-void

    .line 3074
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_0
.end method

.method attribAnnotationTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 573
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    .line 575
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 573
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 577
    :cond_0
    return-void
.end method

.method attribAnyTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 514
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 514
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method attribArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 503
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 505
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    const/16 v5, 0xc

    sget-object v6, Lcom/sun/tools/javac/comp/Infer;->anyPoly:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p2, v5, v6}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 504
    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/comp/Check;->checkNonVoid(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 503
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method attribBase(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ZZZ)Lcom/sun/tools/javac/code/Type;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;ZZZ)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 635
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 638
    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Attr;->checkBase(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ZZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    .line 637
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    goto :goto_0
.end method

.method attribBounds(Lcom/sun/tools/javac/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v8, 0x0

    .line 556
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    .line 557
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    instance-of v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v2, :cond_0

    .line 559
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 560
    iget-wide v4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v6, 0x1000000

    and-long/2addr v4, v6

    cmp-long v2, v4, v8

    if-eqz v2, :cond_0

    .line 561
    iget-wide v4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v6, 0x10000000

    and-long/2addr v4, v6

    cmp-long v2, v4, v8

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/sun/tools/javac/util/Assert;->check(ZLjava/lang/Object;)V

    .line 562
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Attr;->attribClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_0

    .line 561
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 566
    :cond_2
    return-void
.end method

.method attribClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    const-wide/32 v10, 0x1004000

    const/16 v6, 0xa

    const-wide/16 v8, 0x0

    .line 3110
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 3173
    :cond_0
    :goto_0
    return-void

    .line 3114
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 3116
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 3117
    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v4, 0x1000000

    and-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    .line 3119
    iget v0, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_2

    .line 3120
    iget-object v0, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Attr;->attribClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 3123
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_3

    .line 3124
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Attr;->attribClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 3130
    :cond_3
    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v4, 0x10000000

    and-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 3131
    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v4, -0x10000001

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 3134
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    move-object v2, v0

    .line 3142
    :goto_1
    iget-object v1, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    if-nez v1, :cond_4

    .line 3143
    iget-object v1, v2, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    move-object v2, v1

    goto :goto_1

    .line 3146
    :cond_4
    iget-object v1, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/sun/tools/javac/code/Lint;->augment(Lcom/sun/tools/javac/util/List;J)Lcom/sun/tools/javac/code/Lint;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 3148
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v1

    .line 3149
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v2

    .line 3153
    :try_start_0
    iget-object v4, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v4, v5, :cond_5

    iget-wide v4, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    and-long/2addr v4, v10

    cmp-long v4, v4, v8

    if-nez v4, :cond_5

    .line 3155
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v6, "enum.no.subclassing"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3158
    :cond_5
    iget-object v4, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v4, :cond_6

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v4, v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    const-wide/16 v6, 0x4000

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_6

    iget-wide v4, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    and-long/2addr v4, v10

    cmp-long v3, v4, v8

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 3161
    invoke-virtual {v3, p1}, Lcom/sun/tools/javac/jvm/Target;->compilerBootstrap(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3162
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v5, "enum.types.not.extensible"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3164
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/sun/tools/javac/comp/Attr;->attribClassBody(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 3166
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lcom/sun/tools/javac/comp/Check;->checkDeprecatedAnnotation(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3168
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 3169
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    goto/16 :goto_0

    .line 3168
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 3169
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    .line 3170
    throw v0
.end method

.method public attribClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 5

    .line 3099
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Annotate;->flush()V

    .line 3100
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/comp/Attr;->attribClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 3104
    :goto_0
    return-void

    .line 3101
    :catch_0
    move-exception v0

    .line 3102
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;

    goto :goto_0
.end method

.method attribDiamond(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCNewClass;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Pair;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCNewClass;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/code/Scope;",
            "Lcom/sun/tools/javac/code/Scope;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 1827
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1828
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->erroneousMapping:Lcom/sun/tools/javac/util/Pair;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return-object p3

    .line 1837
    :cond_1
    invoke-virtual {p1, p2}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v3

    .line 1838
    iget-object v1, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    .line 1843
    iget-object v1, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Scope;

    iput-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 1846
    :try_start_0
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->resolveDiamond(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1852
    iget-object v1, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Scope;

    iput-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 1853
    iget v1, v6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1855
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1856
    new-instance v5, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v4, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v5, v1, v2, v4}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1858
    iget-object v8, p2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    iget-object v1, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v11, v1, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    move-object v4, p0

    move-object v7, v3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/sun/tools/javac/comp/Attr;->checkMethod(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1864
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 1869
    :goto_1
    iget v1, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1874
    :try_start_1
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->infer:Lcom/sun/tools/javac/comp/Infer;

    move-object v0, v2

    check-cast v0, Lcom/sun/tools/javac/code/Type$ForAll;

    move-object v1, v0

    .line 1875
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    iget v3, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v5, 0x12

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    :goto_2
    sget-object v5, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    .line 1874
    invoke-virtual {v4, v1, v3, v5}, Lcom/sun/tools/javac/comp/Infer;->instantiateExpr(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    :try_end_1
    .catch Lcom/sun/tools/javac/comp/Infer$InferenceException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 1885
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v3, p2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lcom/sun/tools/javac/comp/Check;->checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object p3

    goto/16 :goto_0

    .line 1866
    :cond_3
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    goto :goto_1

    .line 1875
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;
    :try_end_2
    .catch Lcom/sun/tools/javac/comp/Infer$InferenceException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1877
    :catch_0
    move-exception v1

    .line 1879
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v4, p2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v6, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1881
    const-string v7, "diamond"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v5, v7, v8}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v5

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Infer$InferenceException;->diagnostic:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 1879
    const-string v6, "cant.apply.diamond.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v1, v7, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1852
    :catchall_0
    move-exception v1

    move-object v3, v1

    iget-object v1, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Scope;

    iput-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 1853
    throw v3
.end method

.method attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 460
    const/16 v0, 0xc

    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 449
    iget v0, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    :goto_0
    const/16 v0, 0xc

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object p3, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto :goto_0
.end method

.method public attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 453
    iget v0, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    move-object v4, p3

    :goto_0
    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v4, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto :goto_0
.end method

.method public attribExprToTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 335
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 336
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p2, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 338
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    :try_end_0
    .catch Lcom/sun/tools/javac/comp/Attr$BreakAttr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 349
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 350
    :goto_0
    return-object p2

    .line 341
    :catch_0
    move-exception v0

    .line 342
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/tools/javac/comp/Attr$BreakAttr;

    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {v0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Attr$BreakAttr;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Attr$BreakAttr;->access$100(Lcom/sun/tools/javac/comp/Attr$BreakAttr;)Lcom/sun/tools/javac/comp/Env;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 348
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 349
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto :goto_0

    .line 345
    :cond_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 349
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 350
    throw v0

    .line 339
    :catch_1
    move-exception v0

    .line 340
    :try_start_3
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Attr$BreakAttr;->access$100(Lcom/sun/tools/javac/comp/Attr$BreakAttr;)Lcom/sun/tools/javac/comp/Env;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p2

    .line 348
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 349
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto :goto_0
.end method

.method attribExprs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 486
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 487
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 487
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public attribIdent(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/code/Symbol;
    .registers 11

    const/4 v3, 0x0

    .line 293
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->enter:Lcom/sun/tools/javac/comp/Enter;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/comp/Enter;->topLevelEnv(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v7

    .line 294
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    iput-object v0, v7, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 297
    iget-object v0, v7, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 298
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->identAttributer:Lcom/sun/source/tree/TreeVisitor;

    invoke-virtual {p1, v0, v7}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    return-object v0
.end method

.method public attribLazyConstantValue(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 592
    move-object v1, p1

    .line 593
    :goto_0
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    if-nez v0, :cond_0

    .line 594
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    move-object v1, v0

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 607
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v2

    .line 608
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v3

    .line 611
    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 613
    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/comp/Attr;->coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 617
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-object v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 618
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-object v0, v1

    .line 615
    :goto_2
    return-object v0

    .line 605
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v1, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v1, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/code/Lint;->augment(Lcom/sun/tools/javac/util/List;J)Lcom/sun/tools/javac/code/Lint;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    goto :goto_1

    .line 615
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-object v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 618
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 615
    const/4 v0, 0x0

    goto :goto_2

    .line 617
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-object v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 618
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 619
    throw v1
.end method

.method public attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 480
    const/4 v0, 0x0

    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public attribStatToTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 355
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 356
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p2, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 358
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    :try_end_0
    .catch Lcom/sun/tools/javac/comp/Attr$BreakAttr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 369
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 370
    :goto_0
    return-object p2

    .line 361
    :catch_0
    move-exception v0

    .line 362
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/tools/javac/comp/Attr$BreakAttr;

    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {v0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Attr$BreakAttr;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Attr$BreakAttr;->access$100(Lcom/sun/tools/javac/comp/Attr$BreakAttr;)Lcom/sun/tools/javac/comp/Env;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 368
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 369
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto :goto_0

    .line 365
    :cond_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 369
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 370
    throw v0

    .line 359
    :catch_1
    move-exception v0

    .line 360
    :try_start_3
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Attr$BreakAttr;->access$100(Lcom/sun/tools/javac/comp/Attr$BreakAttr;)Lcom/sun/tools/javac/comp/Env;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p2

    .line 368
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    .line 369
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto :goto_0
.end method

.method attribStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 495
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 495
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method public attribTopLevel(Lcom/sun/tools/javac/comp/Env;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 3082
    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 3084
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Annotate;->flush()V

    .line 3085
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    iget-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/Check;->validateAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 3089
    :goto_0
    return-void

    .line 3086
    :catch_0
    move-exception v0

    .line 3087
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;

    goto :goto_0
.end method

.method attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;I",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 418
    const-string v5, "incompatible.types"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;I",
            "Lcom/sun/tools/javac/code/Type;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 422
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 423
    iget v2, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    .line 424
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    .line 425
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->errKey:Ljava/lang/String;

    .line 427
    :try_start_0
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 428
    iput p3, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    .line 429
    iput-object p4, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    .line 430
    iput-object p5, p0, Lcom/sun/tools/javac/comp/Attr;->errKey:Ljava/lang/String;

    .line 431
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 432
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->breakTree:Lcom/sun/tools/javac/tree/JCTree;

    if-eq p1, v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 440
    iput v2, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    .line 441
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    .line 442
    iput-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->errKey:Ljava/lang/String;

    .line 437
    :goto_0
    return-object v0

    .line 433
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sun/tools/javac/comp/Attr$BreakAttr;

    const/4 v5, 0x0

    invoke-direct {v0, p2, v5}, Lcom/sun/tools/javac/comp/Attr$BreakAttr;-><init>(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Attr$1;)V

    throw v0
    :try_end_1
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    :try_start_2
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    iput-object v5, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 437
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 439
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 440
    iput v2, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    .line 441
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    .line 442
    iput-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->errKey:Ljava/lang/String;

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 440
    iput v2, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    .line 441
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    .line 442
    iput-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->errKey:Ljava/lang/String;

    .line 443
    throw v0
.end method

.method public attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 330
    iget-object v1, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-virtual {v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup()Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 331
    const/4 v1, 0x2

    sget-object v2, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 466
    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 467
    return-object v0
.end method

.method attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 473
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 474
    return-object v0
.end method

.method attribTypeVariables(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 534
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    .line 535
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v1, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 536
    iget-object v2, v1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v4, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    iput-wide v4, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    .line 537
    sget-object v2, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    iput-object v2, v1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 538
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 540
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 541
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->setBounds(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/util/List;)V

    .line 548
    :goto_2
    iget-object v0, v1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v4, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    const-wide/32 v6, -0x10000001

    and-long/2addr v4, v6

    iput-wide v4, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->setBounds(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/util/List;)V

    goto :goto_2

    .line 550
    :cond_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    .line 551
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type$TypeVar;)V

    goto :goto_3

    .line 552
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Attr;->attribStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 553
    return-void
.end method

.method attribTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Attr;->attribAnyTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/comp/Check;->checkRefTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 13

    .line 201
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    iget v0, p5, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p5, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 202
    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->errKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p5, v2}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 211
    :cond_0
    :goto_0
    iput-object p2, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 212
    return-object p2

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    .line 206
    invoke-static {p4}, Lcom/sun/tools/javac/code/Kinds;->kindNames(I)Ljava/util/EnumSet;

    move-result-object v2

    .line 207
    invoke-static {p3}, Lcom/sun/tools/javac/code/Kinds;->kindName(I)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v3

    .line 205
    const-string v4, "unexpected.type"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v0, v1, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0
.end method

.method checkAssignable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 244
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 245
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x40000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 248
    invoke-virtual {p3}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    invoke-static {p3}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_1

    .line 249
    :cond_0
    invoke-virtual {p0, p2, p4}, Lcom/sun/tools/javac/comp/Attr;->isAssignableAsBlankFinal(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/comp/Env;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 250
    :cond_1
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->isResourceVariable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "try.resource.may.not.be.assigned"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "cant.assign.val.to.final.var"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 255
    :cond_4
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x40000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 256
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    const-wide v2, -0x40000000001L

    and-long/2addr v0, v2

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    goto :goto_0
.end method

.method checkAutoCloseable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x1

    .line 1143
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->autoCloseableType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1144
    invoke-virtual {v0, p3, v1}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1146
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-boolean v7, v0, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 1147
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v8, v0, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    .line 1149
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 1150
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    .line 1151
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v1, Lcom/sun/tools/javac/util/Names;->close:Lcom/sun/tools/javac/util/Name;

    .line 1155
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 1156
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1151
    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1159
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iput-boolean v7, v1, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 1160
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iput-object v8, v1, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    .line 1161
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->autoCloseableClose:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 1163
    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/sun/tools/javac/code/Symbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->interruptedExceptionType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 1164
    invoke-virtual {v3, p3, v0}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/comp/Check;->isHandled(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->TRY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 1165
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->TRY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v2, "try.resource.throws.interrupted.exc"

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    :cond_0
    return-void

    .line 1159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iput-boolean v7, v1, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 1160
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iput-object v8, v1, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    .line 1161
    throw v0
.end method

.method checkBase(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ZZZ)Lcom/sun/tools/javac/code/Type;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;ZZZ)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 646
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    :goto_0
    return-object p1

    .line 648
    :cond_0
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    .line 650
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "illegal.forward.ref"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Attr;->allowGenerics:Z

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v2, p6

    invoke-virtual {v0, v1, p1, v2}, Lcom/sun/tools/javac/comp/Check;->checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 657
    :cond_2
    if-eqz p5, :cond_3

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "intf.expected.here"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    .line 662
    :cond_3
    if-eqz p6, :cond_4

    if-eqz p4, :cond_4

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 664
    const-wide/16 v2, 0x200

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 665
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "no.intf.expected.here"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto/16 :goto_0

    .line 668
    :cond_4
    if-eqz p6, :cond_5

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 669
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 670
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "cant.inherit.from.final"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0
.end method

.method checkFirstConstructorStat(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;Lcom/sun/tools/javac/comp/Env;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1560
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 1561
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v3, v4, :cond_0

    .line 1562
    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1563
    iget-object v0, v3, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v0

    const/16 v4, 0x14

    if-ne v0, v4, :cond_0

    iget-object v0, v3, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 1569
    :goto_0
    return v0

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1568
    invoke-static {v4}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 1567
    const-string v5, "call.must.be.first.stmt.in.ctor"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v5, v1}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 1569
    goto :goto_0
.end method

.method checkId(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;I",
            "Lcom/sun/tools/javac/code/Type;",
            "Z)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 2484
    invoke-virtual {p6}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2594
    :goto_0
    return-object v0

    .line 2486
    :cond_0
    iget v0, p3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_4

    .line 2576
    :cond_1
    iget-object v2, p3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2577
    :cond_2
    :goto_1
    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_3

    .line 2588
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v0, p4, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1, v3, v0, p3}, Lcom/sun/tools/javac/comp/Check;->checkDeprecated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2589
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sun/tools/javac/comp/Check;->checkSunAPI(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2594
    :cond_3
    iget v3, p3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    move-object v0, p0

    move-object v1, p1

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 2579
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected kind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in tree "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2569
    :cond_5
    iget-object v0, p4, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 2570
    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 2571
    invoke-virtual {p6}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {p6}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    iget-object v0, p4, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v7, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 2570
    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Attr;->checkMethod(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v0, p3

    .line 2524
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 2528
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Attr;->allowGenerics:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    if-ne p5, v1, :cond_8

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 2531
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_7

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_8

    .line 2533
    :cond_7
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1, p2, v2}, Lcom/sun/tools/javac/code/Types;->asOuterSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2534
    if-eqz v1, :cond_8

    .line 2535
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2536
    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2537
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "unchecked.assign.to.var"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/comp/Check;->warnUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2544
    :cond_8
    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_a

    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_a

    .line 2546
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2, p3}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    move-object v2, v1

    .line 2549
    :goto_2
    iget-object v1, p4, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2550
    new-instance v4, Lcom/sun/tools/javac/code/Type$ForAll;

    iget-object v1, p4, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-direct {v4, v1, v2}, Lcom/sun/tools/javac/code/Type$ForAll;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    .line 2551
    iget-object v1, p4, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    move-object v3, v1

    :goto_3
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2552
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Type;->contains(Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2553
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v6, "undetermined.type"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v1, v5, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2554
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 2551
    :cond_9
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v1

    goto :goto_3

    .line 2547
    :cond_a
    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v2, v1

    goto :goto_2

    :cond_b
    move-object v4, v2

    .line 2556
    :cond_c
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Attr;->isStaticReference(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2562
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2564
    :goto_4
    const/16 v0, 0xc

    if-ne p5, v0, :cond_2

    .line 2565
    invoke-direct {p0, v2}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    goto/16 :goto_1

    :cond_d
    move-object v2, v4

    .line 2564
    goto :goto_4

    .line 2490
    :cond_e
    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2491
    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_10

    .line 2492
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 2497
    iget-object v0, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2498
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    :goto_5
    move-object v2, v0

    .line 2521
    goto/16 :goto_1

    .line 2511
    :cond_f
    iget v0, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_11

    if-eq p2, v3, :cond_11

    .line 2513
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_13

    .line 2514
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p2, v2}, Lcom/sun/tools/javac/code/Types;->asEnclosingSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2515
    :goto_6
    if-nez v0, :cond_12

    .line 2516
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v2, v0

    .line 2517
    :goto_7
    if-eq v2, v3, :cond_11

    .line 2518
    new-instance v0, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v2, v3, v1}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto :goto_5

    :cond_10
    move-object v2, v1

    .line 2491
    goto/16 :goto_1

    :cond_11
    move-object v0, v1

    goto :goto_5

    :cond_12
    move-object v2, v0

    goto :goto_7

    :cond_13
    move-object v0, p2

    goto :goto_6
.end method

.method public checkMethod(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Z)Lcom/sun/tools/javac/code/Type;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;Z)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 2718
    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Attr;->allowGenerics:Z

    if-eqz v2, :cond_1

    .line 2719
    invoke-virtual/range {p2 .. p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    .line 2721
    :cond_0
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/code/Types;->asOuterSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2722
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2723
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2724
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2723
    invoke-virtual {v3, v4, v5}, Lcom/sun/tools/javac/code/Types;->isSameTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2725
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v5, "unchecked.call.mbr.of.raw.type"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/tools/javac/comp/Check;->warnUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2735
    :cond_1
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->noteWarner:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Warner;->clear()V

    .line 2736
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/sun/tools/javac/comp/Attr;->noteWarner:Lcom/sun/tools/javac/util/Warner;

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/sun/tools/javac/comp/Resolve;->instantiate(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;

    move-result-object v8

    .line 2744
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->noteWarner:Lcom/sun/tools/javac/util/Warner;

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Warner;->hasNonSilentLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v5

    .line 2748
    if-nez v8, :cond_3

    .line 2749
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2750
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    .line 2753
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/tools/javac/code/Type;->toString(Lcom/sun/tools/javac/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 2750
    const-string v5, "internal.error.cant.instantiate"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-virtual {v2, v3, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2754
    :cond_2
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2826
    :goto_0
    return-object v2

    .line 2759
    :cond_3
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2760
    if-eqz p7, :cond_4

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    move-object v4, v2

    .line 2761
    :goto_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v6, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v6, :cond_e

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, v6, :cond_e

    .line 2763
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    :goto_2
    move-object v6, v2

    move-object/from16 v7, p4

    .line 2765
    :goto_3
    iget-object v2, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v2, v4, :cond_5

    .line 2766
    iget-object v2, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    .line 2767
    iget-object v9, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    iget-object v11, v2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v9, v10, v11, v3}, Lcom/sun/tools/javac/comp/Check;->convertWarner(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Warner;

    move-result-object v9

    .line 2768
    iget-object v10, v2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v2, v10, v3, v9}, Lcom/sun/tools/javac/comp/Attr;->assertConvertible(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)V

    .line 2769
    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v9, v2}, Lcom/sun/tools/javac/util/Warner;->hasNonSilentLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v2

    or-int/2addr v2, v5

    .line 2770
    iget-object v7, v7, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 2771
    iget-object v3, v6, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v5, v2

    move-object v6, v3

    .line 2772
    goto :goto_3

    .line 2760
    :cond_4
    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_1

    .line 2773
    :cond_5
    if-eqz p7, :cond_6

    .line 2774
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 2775
    :goto_4
    iget-object v2, v7, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v2, :cond_7

    .line 2776
    iget-object v2, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    .line 2777
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v9, v2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v6, v9, v3}, Lcom/sun/tools/javac/comp/Check;->convertWarner(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Warner;

    move-result-object v4

    .line 2778
    iget-object v6, v2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v2, v6, v3, v4}, Lcom/sun/tools/javac/comp/Attr;->assertConvertible(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)V

    .line 2779
    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/util/Warner;->hasNonSilentLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v2

    or-int/2addr v5, v2

    .line 2780
    iget-object v7, v7, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_4

    .line 2782
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v6, 0x400000000L

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Attr;->allowVarargs:Z

    if-eqz v2, :cond_7

    .line 2784
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    .line 2785
    invoke-virtual/range {p5 .. p5}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    .line 2786
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2787
    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v7, v3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2788
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual/range {p4 .. p4}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2789
    invoke-virtual {v6, v2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    .line 2788
    const-string v7, "inexact.non-varargs.call"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v2, v9, v6

    invoke-virtual {v4, v3, v7, v9}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2793
    :cond_7
    if-eqz v5, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_a

    .line 2794
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    .line 2796
    invoke-static/range {p2 .. p2}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2798
    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sun/tools/javac/comp/Resolve;->methodArguments(Lcom/sun/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v7

    iget-object v9, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 2799
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/sun/tools/javac/comp/Resolve;->methodArguments(Lcom/sun/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v9

    .line 2800
    invoke-virtual/range {p2 .. p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v10

    .line 2801
    invoke-virtual/range {p2 .. p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v11

    .line 2794
    const-string v12, "unchecked.meth.invocation.applied"

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v4, 0x1

    aput-object v6, v13, v4

    const/4 v4, 0x2

    aput-object v7, v13, v4

    const/4 v4, 0x3

    aput-object v9, v13, v4

    const/4 v4, 0x4

    aput-object v10, v13, v4

    const/4 v4, 0x5

    aput-object v11, v13, v4

    invoke-virtual {v2, v3, v12, v13}, Lcom/sun/tools/javac/comp/Check;->warnUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2802
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2803
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2804
    new-instance v4, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v4, v2, v3, v6, v7}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 2807
    :goto_5
    if-eqz p7, :cond_d

    .line 2808
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 2809
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    .line 2810
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    iget v6, v6, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_8

    if-eqz v5, :cond_9

    .line 2811
    :cond_8
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v6}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v5, v6, v7, v0}, Lcom/sun/tools/javac/comp/Check;->checkVararg(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2813
    :cond_9
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5, v2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 2814
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/16 v6, 0x1a

    if-eq v2, v6, :cond_c

    const/16 v6, 0x1b

    if-ne v2, v6, :cond_b

    move-object v2, v3

    .line 2819
    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    iput-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lcom/sun/tools/javac/code/Type;

    move-object v2, v4

    .line 2820
    goto/16 :goto_0

    :cond_a
    move-object v4, v8

    .line 2793
    goto :goto_5

    .line 2822
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 2816
    :cond_c
    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    iput-object v5, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lcom/sun/tools/javac/code/Type;

    move-object v2, v4

    goto/16 :goto_0

    :cond_d
    move-object v2, v4

    goto/16 :goto_0

    :cond_e
    move-object v2, v3

    goto/16 :goto_2
.end method

.method public coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/comp/ConstFold;->coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method isAssignableAsBlankFinal(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/comp/Env;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 224
    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v3, v0, :cond_1

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-eq v3, v4, :cond_0

    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v3, v0, :cond_2

    .line 233
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {p2}, Lcom/sun/tools/javac/comp/Resolve;->isStatic(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v3

    if-ne v0, v3, :cond_2

    :cond_1
    move v2, v1

    .line 224
    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 233
    goto :goto_0
.end method

.method isStaticReference(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    .line 266
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 267
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method litType(I)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 2855
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->typeOfTag:[Lcom/sun/tools/javac/code/Type;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public makeNullCheck(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 1930
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 1931
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_1

    .line 1937
    :cond_0
    :goto_0
    return-object p1

    .line 1933
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/16 v1, 0x38

    invoke-virtual {v0, v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Unary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    .line 1935
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->nullcheck:Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 1936
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->type:Lcom/sun/tools/javac/code/Type;

    move-object p1, v0

    .line 1937
    goto :goto_0
.end method

.method newMethTemplate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 6
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
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 1575
    new-instance v0, Lcom/sun/tools/javac/code/Type$MethodType;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1576
    if-nez p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/sun/tools/javac/code/Type$ForAll;

    invoke-direct {v1, p2, v0}, Lcom/sun/tools/javac/code/Type$ForAll;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public postAttr(Lcom/sun/tools/javac/comp/Env;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 3326
    new-instance v0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;-><init>(Lcom/sun/tools/javac/comp/Attr;)V

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3327
    return-void
.end method

.method thisSym(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Symbol;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, p2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sun/tools/javac/comp/Resolve;->resolveSelf(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
    .registers 8

    .line 3050
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "annotation.not.valid.for.type"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3051
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 3052
    return-void
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 15

    const/16 v12, 0xa

    const/16 v10, 0x22

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 1410
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/AttrContext;->dup()Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    .line 1416
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v7

    .line 1420
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v7, v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v7, v0, :cond_2

    :cond_0
    move v0, v11

    .line 1423
    :goto_0
    if-eqz v0, :cond_b

    .line 1426
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Attr;->checkFirstConstructorStat(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;Lcom/sun/tools/javac/comp/Env;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1430
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-boolean v11, v0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    .line 1433
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Attr;->attribArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 1434
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Attr;->attribTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 1438
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1439
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v7, v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    if-ne v3, v0, :cond_3

    .line 1441
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v8, "no.superclass"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v0, v1, v8, v9}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1442
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1448
    :cond_1
    :goto_1
    iget v0, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v12, :cond_7

    .line 1449
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v1, v0

    .line 1450
    :goto_2
    if-eqz v1, :cond_4

    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v8, 0xe

    if-ne v0, v8, :cond_4

    .line 1451
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_2
    move v0, v6

    .line 1420
    goto :goto_0

    .line 1444
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    goto :goto_1

    .line 1452
    :cond_4
    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v12, :cond_9

    .line 1455
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    if-ne v0, v10, :cond_8

    .line 1456
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1462
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v8

    .line 1463
    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1462
    invoke-virtual {v7, v8, v0}, Lcom/sun/tools/javac/comp/Check;->checkRefType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1478
    :cond_5
    :goto_3
    iget-object v0, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowEnums:Z

    if-eqz v0, :cond_6

    .line 1479
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 1484
    :cond_6
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v8, v0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 1485
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-boolean v11, v0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 1486
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-boolean v6, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 1487
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1488
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    .line 1487
    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->resolveConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v7

    .line 1489
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-boolean v8, v0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 1492
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, v7}, Lcom/sun/tools/javac/tree/TreeInfo;->setSymbol(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1496
    invoke-virtual {p0, v4, v5}, Lcom/sun/tools/javac/comp/Attr;->newMethTemplate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v10

    .line 1497
    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_a

    :goto_4
    const/16 v9, 0x10

    move-object v4, p0

    move-object v6, v3

    move-object v8, v2

    invoke-virtual/range {v4 .. v11}, Lcom/sun/tools/javac/comp/Attr;->checkId(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    .line 1448
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1551
    :goto_5
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 1552
    return-void

    .line 1465
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v7, v0, :cond_5

    .line 1468
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/sun/tools/javac/comp/Resolve;->resolveImplicitThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    goto :goto_3

    .line 1471
    :cond_9
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 1472
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v7, "illegal.qual.not.icls"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    aput-object v9, v8, v6

    invoke-virtual {v0, v1, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_a
    move v11, v6

    .line 1497
    goto :goto_4

    .line 1506
    :cond_b
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Attr;->attribArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1507
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/comp/Attr;->attribAnyTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 1512
    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/comp/Attr;->newMethTemplate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1513
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-boolean v6, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 1514
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1515
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    if-eqz v0, :cond_e

    .line 1516
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_d

    :cond_c
    move v6, v11

    :cond_d
    invoke-static {v6}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1519
    :cond_e
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1520
    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v5, 0xf

    if-eq v0, v5, :cond_12

    .line 1525
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    if-ne v0, v10, :cond_f

    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowCovariantReturns:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->clone:Lcom/sun/tools/javac/util/Name;

    if-ne v7, v0, :cond_f

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1528
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/code/Types;->isArray(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1529
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    move-object v1, v0

    .line 1532
    :cond_f
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowGenerics:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->getClass:Lcom/sun/tools/javac/util/Name;

    if-ne v7, v0, :cond_10

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 1533
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1534
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    if-ne v0, v10, :cond_11

    .line 1535
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1537
    :goto_6
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 1539
    new-instance v3, Lcom/sun/tools/javac/code/Type$ClassType;

    new-instance v7, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    sget-object v6, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v7, v0, v6, v8}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-static {v7}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v3, v5, v0, v1}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v1, v3

    .line 1545
    :cond_10
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/comp/Check;->checkRefTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    .line 1549
    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    const/16 v6, 0xc

    iget v7, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_5

    .line 1536
    :cond_11
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_6

    .line 1521
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V
    .registers 6

    .line 1396
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1397
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->checkNonVoid(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1400
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1401
    return-void
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 8

    .line 1982
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1983
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 1984
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v3, v0}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1985
    const/16 v3, 0xc

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1986
    return-void
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 10

    .line 1990
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 1991
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1993
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 1994
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 1993
    add-int/lit8 v2, v2, -0x11

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->resolveBinaryOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v6

    iput-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 1997
    iget v0, v6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1998
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1999
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    move-object v2, v6

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 2002
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v3

    .line 2000
    add-int/lit8 v3, v3, -0x11

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Check;->checkOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;ILcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)I

    .line 2005
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/sun/tools/javac/comp/Check;->checkDivZero(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V

    .line 2006
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, v6, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2007
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2006
    invoke-virtual {v0, v1, v2, v4}, Lcom/sun/tools/javac/comp/Check;->checkCastable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 2010
    :cond_0
    const/16 v5, 0xc

    iget v6, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2011
    return-void
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 11

    .line 2053
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->checkNonVoid(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 2054
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->checkNonVoid(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 2057
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 2058
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->resolveBinaryOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v6

    iput-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 2060
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2061
    iget v0, v6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2062
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2063
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2064
    iget-object v0, v6, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    .line 2065
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    move-object v2, v6

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 2067
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v3

    .line 2065
    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Check;->checkOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;ILcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    .line 2072
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2073
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    invoke-virtual {v1, v0, v4, v5}, Lcom/sun/tools/javac/comp/ConstFold;->fold2(ILcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2074
    if-eqz v1, :cond_5

    .line 2075
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    invoke-virtual {v2, v1, v7}, Lcom/sun/tools/javac/comp/ConstFold;->coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2082
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v3, :cond_0

    .line 2083
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iput-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 2085
    :cond_0
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v3, :cond_1

    .line 2086
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iput-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 2093
    :cond_1
    :goto_0
    const/16 v1, 0xa5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_3

    .line 2094
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    new-instance v1, Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sun/tools/javac/util/Warner;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    invoke-virtual {v0, v4, v5, v1}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2095
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v3, "incomparable.types"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    invoke-virtual {v0, v1, v3, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2099
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/sun/tools/javac/comp/Check;->checkDivZero(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V

    .line 2101
    :cond_4
    const/16 v3, 0xc

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2102
    return-void

    :cond_5
    move-object v2, v7

    goto :goto_0
.end method

.method public visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 14

    const/4 v5, 0x0

    .line 896
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 900
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 901
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dupUnshared()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v7

    .line 902
    iget-object v0, v7, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v8, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/32 v2, 0x100000

    iget-wide v10, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    or-long/2addr v2, v10

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, v8, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 905
    iget-wide v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    .line 906
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v7}, Lcom/sun/tools/javac/comp/Attr;->attribStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 914
    :goto_0
    iput-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 915
    return-void

    .line 909
    :cond_1
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 910
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dup()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 911
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Attr;->attribStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 912
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    goto :goto_0
.end method

.method public visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V
    .registers 6

    .line 1292
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->getTag()I

    move-result v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->label:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->findJumpTarget(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->target:Lcom/sun/tools/javac/tree/JCTree;

    .line 1293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1294
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 8

    .line 679
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/comp/Enter;->classEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 682
    :cond_0
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 683
    if-nez v1, :cond_1

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 704
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 695
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 696
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_2

    .line 699
    iget-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v4, 0x400000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 701
    :cond_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 702
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    goto :goto_0
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 8

    .line 1172
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1173
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1174
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1175
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->condType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1179
    return-void
.end method

.method public visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V
    .registers 6

    .line 1297
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->getTag()I

    move-result v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->label:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->findJumpTarget(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->target:Lcom/sun/tools/javac/tree/JCTree;

    .line 1298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1299
    return-void
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 5

    .line 918
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 919
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 920
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 921
    return-void
.end method

.method public visitErroneous(Lcom/sun/tools/javac/tree/JCTree$JCErroneous;)V
    .registers 7

    .line 3055
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_0

    .line 3056
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 3057
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    const/16 v3, 0x1f

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 3058
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 3059
    return-void
.end method

.method public visitExec(Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .registers 4

    .line 1286
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 1287
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1289
    return-void
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 6

    .line 930
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v3, v2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 931
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dup()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 932
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Attr;->attribStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 933
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 934
    :cond_0
    iput-object p1, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 935
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Attr;->attribStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 936
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 937
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 939
    return-void
.end method

.method public visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 10

    const/4 v7, 0x0

    .line 942
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v3, v2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 943
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dup()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 944
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 945
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 946
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/sun/tools/javac/comp/Check;->checkNonVoid(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 947
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 948
    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->iterableType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 951
    if-nez v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 955
    const-string v5, "type.req.array.or.iterable"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v4

    .line 952
    const-string v5, "foreach.not.applicable.to.type"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v0, v3, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 964
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3, v0, v4}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 965
    iput-object p1, v1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 966
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 967
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 969
    return-void

    .line 958
    :cond_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 960
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 961
    :cond_2
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 14

    .line 2141
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 2148
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->resolveMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 2149
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v7, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 2155
    :goto_0
    iput-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2164
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 2165
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2166
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_b

    iget v2, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v2, v2, 0x16

    if-eqz v2, :cond_b

    iget-object v2, v3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_b

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v2, v5, :cond_b

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-eq v2, v5, :cond_b

    .line 2172
    :goto_1
    iget-object v2, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2173
    invoke-virtual {v3, v2, v4}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2174
    iget-object v2, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/32 v8, 0x400000

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-eqz v2, :cond_1

    .line 2175
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Attr;->allowAnonOuterThis:Z

    xor-int/lit8 v1, v1, 0x1

    .line 2176
    :cond_1
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    goto :goto_1

    .line 2150
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 2151
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    const/4 v7, 0x0

    goto :goto_0

    .line 2153
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/comp/Resolve;->resolveIdent(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    move-object v2, v0

    move v4, v1

    .line 2181
    :goto_2
    iget v0, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    move-object v0, v3

    .line 2182
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 2186
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    const/4 v5, 0x0

    invoke-direct {p0, p1, v1, v0, v5}, Lcom/sun/tools/javac/comp/Attr;->checkInit(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$VarSymbol;Z)V

    .line 2190
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v5, 0x10

    if-ne v1, v5, :cond_5

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v5, v1, :cond_5

    iget-wide v8, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_5

    .line 2193
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v6, "local.var.accessed.from.icls.needs.final"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v1, v5, v6, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2200
    :cond_5
    iget v1, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_6

    .line 2201
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v0, v5, v6}, Lcom/sun/tools/javac/comp/Attr;->checkAssignable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 2207
    :cond_6
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    if-nez v0, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    iget v0, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_8

    iget-object v0, v3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2210
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    .line 2211
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget v0, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_9

    move-object v0, v3

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/comp/Check;->earlyRefError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2213
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 2214
    iget v1, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_a

    iget v1, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    iget-object v1, v3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v1, :cond_a

    iget-object v1, v3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eq v1, v2, :cond_a

    .line 2218
    :goto_4
    iget-object v1, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, v4, v3}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2219
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    goto :goto_4

    .line 2211
    :cond_9
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/comp/Attr;->thisSym(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_3

    .line 2221
    :cond_a
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget v5, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Attr;->checkId(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2222
    return-void

    :cond_b
    move-object v2, v0

    goto/16 :goto_2
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 5

    .line 1275
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1276
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1277
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Check;->checkEmptyIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V

    .line 1280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1281
    return-void
.end method

.method public visitImport(Lcom/sun/tools/javac/tree/JCTree$JCImport;)V
    .registers 2

    .line 3177
    return-void
.end method

.method public visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V
    .registers 9

    .line 2128
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2129
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2130
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v3, v4}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 2131
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Types;->isArray(Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2132
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2135
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2136
    :goto_1
    const/4 v3, 0x4

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2137
    return-void

    .line 2133
    :cond_1
    iget v2, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x13

    if-eq v2, v3, :cond_0

    .line 2134
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "array.req.but.found"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_1
.end method

.method public visitLabelled(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .registers 8

    .line 973
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    move-object v1, v0

    .line 974
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 975
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_1

    .line 977
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "label.already.in.use"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lcom/sun/tools/javac/util/Name;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 986
    return-void

    .line 981
    :cond_1
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    move-object v1, v0

    goto :goto_0
.end method

.method public visitLiteral(Lcom/sun/tools/javac/tree/JCTree$JCLiteral;)V
    .registers 8

    .line 2848
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    .line 2849
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Attr;->litType(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    .line 2848
    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2850
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 13

    .line 707
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 709
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    iget-object v1, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/sun/tools/javac/code/Lint;->augment(Lcom/sun/tools/javac/util/List;J)Lcom/sun/tools/javac/code/Lint;

    move-result-object v1

    .line 710
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v3

    .line 711
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Check;->setMethod(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v4

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/code/DeferredLintHandler;->flush(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 714
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lcom/sun/tools/javac/comp/Check;->checkDeprecatedAnnotation(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 716
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Attr;->attribBounds(Lcom/sun/tools/javac/util/List;)V

    .line 720
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v6, v6, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v5, v6, v2}, Lcom/sun/tools/javac/comp/Check;->checkHideClashes(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 725
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, p1, v2}, Lcom/sun/tools/javac/comp/Check;->checkOverride(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 729
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, p1, v5}, Lcom/sun/tools/javac/comp/MemberEnter;->methodEnv(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v5

    .line 731
    iget-object v0, v5, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 734
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, v5, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v6, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/code/Scope;->enterIfAbsent(Lcom/sun/tools/javac/code/Symbol;)V

    .line 734
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v6, v6, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v5, v6, v2}, Lcom/sun/tools/javac/comp/Check;->checkOverrideClashes(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 836
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    .line 837
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/comp/Check;->setMethod(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 838
    throw v0

    .line 737
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v6, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 738
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v8, 0x2000

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 739
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v7, "intf.annotation.members.cant.have.params"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, v5}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 744
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_2

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v5, p1}, Lcom/sun/tools/javac/comp/Check;->checkVarargsMethodDecl(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V

    .line 751
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1, v5}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 754
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1, v5}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 757
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v8, 0x2000

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_6

    .line 759
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 760
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v7, "throws.not.allowed.in.intf.annotation"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    :cond_4
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 765
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v7, "intf.annotation.members.cant.have.type.params"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Check;->validateAnnotationType(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 771
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->validateAnnotationMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 773
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_6

    .line 776
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Check;->validateAnnotationTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 780
    :cond_6
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 781
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v8

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v9, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v9, v9, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v7, v8, v0, v9}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 780
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_3

    .line 783
    :cond_7
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-nez v0, :cond_a

    .line 787
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v8, 0x200

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v8, 0x500

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->relax:Z

    if-nez v0, :cond_8

    .line 790
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v7, "missing.meth.body.or.decl.abstract"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    :cond_8
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_9

    .line 792
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v6, 0x2000

    and-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_9

    .line 793
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v6, "default.allowed.in.intf.annotation.member"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    :cond_9
    :goto_4
    iget-object v0, v5, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    .line 832
    iget-object v0, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 833
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->validateAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    .line 837
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/comp/Check;->setMethod(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 838
    return-void

    .line 796
    :cond_a
    :try_start_2
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v8, 0x200

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_b

    .line 797
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v6, "intf.meth.cant.have.body"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 798
    :cond_b
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v8, 0x400

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_c

    .line 799
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v6, "abstract.meth.cant.have.body"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 800
    :cond_c
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v8, 0x100

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_d

    .line 801
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v6, "native.meth.cant.have.body"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 806
    :cond_d
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_f

    iget-object v0, v6, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    if-eq v0, v1, :cond_f

    .line 807
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 808
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 809
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isSelfCall(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 810
    :cond_e
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v8, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->pos:I

    .line 811
    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v7

    .line 812
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 813
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    .line 811
    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/tools/javac/comp/MemberEnter;->SuperCall(Lcom/sun/tools/javac/tree/TreeMaker;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    .line 829
    :cond_f
    :goto_5
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0, v5}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_4

    .line 815
    :cond_10
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x4000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v6, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v8, 0x1000000000L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 817
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isSuperCall(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 822
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v6, "call.to.super.not.allowed.in.enum.ctor"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v9, v9, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v9, v9, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    aput-object v9, v7, v8

    invoke-virtual {v1, v0, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 9

    const/4 v6, 0x0

    .line 1941
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 1943
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1945
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 1947
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1948
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v4, v5}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1949
    new-instance v4, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v4, v2, v0}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1947
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    move-object v2, v4

    goto :goto_0

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 1955
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1964
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_2

    .line 1965
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1, v3}, Lcom/sun/tools/javac/comp/Attr;->attribExprs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    .line 1966
    new-instance v2, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v3, v0}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1968
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1969
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v3, "generic.array.creation"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    :cond_3
    const/16 v3, 0xc

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1971
    return-void

    .line 1957
    :cond_4
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_5

    .line 1958
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v3, "illegal.initializer.for.type"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1961
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    goto :goto_1
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 26

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v22

    .line 1584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-virtual {v2}, Lcom/sun/tools/javac/comp/AttrContext;->dup()Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v3

    .line 1588
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-object/from16 v23, v0

    .line 1592
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1594
    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v2

    const/16 v5, 0x27

    if-ne v2, v5, :cond_6

    move-object v2, v4

    .line 1595
    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1598
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_8

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 1610
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    .line 1609
    invoke-virtual {v2, v5, v6}, Lcom/sun/tools/javac/comp/Check;->checkRefType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 1611
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Attr;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v6, v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Attr;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    move-object v2, v7

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v5, v6, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v5

    .line 1613
    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v2

    const/16 v6, 0x27

    if-ne v2, v6, :cond_7

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos:I

    invoke-virtual {v2, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    .line 1615
    invoke-virtual {v2, v5, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeApply(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v4

    move-object v2, v5

    move-object/from16 v21, v4

    .line 1623
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 1624
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sun/tools/javac/comp/Attr;->getSyntheticScopeMapping(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v6

    .line 1625
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v4}, Lcom/sun/tools/javac/comp/Check;->checkDiamond(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v3}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 1627
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v4, :cond_a

    .line 1630
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v5, v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1631
    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/sun/tools/javac/tree/TreeInfo;->setSymbol(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v2, v7

    .line 1632
    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v2, v7, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1633
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1634
    if-eqz v23, :cond_9

    iget-object v2, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v7, "anon.class.impl.intf.no.qual.for.new"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    :cond_0
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 1648
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 1650
    invoke-static/range {p1 .. p1}, Lcom/sun/tools/javac/tree/TreeInfo;->isDiamond(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 1651
    invoke-virtual/range {v2 .. v8}, Lcom/sun/tools/javac/comp/Attr;->attribDiamond(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCNewClass;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Pair;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v12

    .line 1652
    move-object/from16 v0, v21

    iput-object v12, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1653
    :goto_3
    iget v2, v12, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_1d

    .line 1690
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/comp/Attr;->allowEnums:Z

    if-eqz v2, :cond_2

    iget-object v2, v12, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v4, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    const-wide/16 v10, 0x4000

    and-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 1692
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v10, 0x4000

    and-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_2

    .line 1695
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v5, "enum.cant.be.instantiated"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1697
    :cond_2
    if-nez v23, :cond_f

    iget-object v2, v12, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1698
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v10, 0x600

    and-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-eqz v2, :cond_f

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v5, "abstract.cant.be.instantiated"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    aput-object v10, v6, v9

    invoke-virtual {v2, v4, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_4
    move-object v9, v8

    move-object v2, v7

    .line 1740
    :goto_5
    if-eqz v23, :cond_1e

    .line 1773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-static {v4}, Lcom/sun/tools/javac/comp/Resolve;->isStatic(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v6, v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v10, 0x8

    or-long/2addr v6, v10

    iput-wide v6, v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 1775
    :cond_4
    iget-object v4, v12, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1776
    invoke-static/range {v21 .. v21}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    .line 1781
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1786
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v4, :cond_18

    iget-object v4, v12, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1787
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/comp/Attr;->makeNullCheck(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    .line 1788
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 1789
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1793
    :goto_7
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v7, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1794
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lcom/sun/tools/javac/code/Type;

    if-eqz v2, :cond_19

    const/4 v11, 0x1

    .line 1795
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 1796
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    .line 1795
    const/4 v10, 0x1

    move-object v6, v3

    invoke-virtual/range {v4 .. v11}, Lcom/sun/tools/javac/comp/Resolve;->resolveConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 1798
    iget v2, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v5, 0x41

    if-lt v2, v5, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_5
    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1799
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    .line 1800
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x40

    if-le v2, v4, :cond_1b

    .line 1801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lcom/sun/tools/javac/code/Type;

    .line 1740
    :goto_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1c

    move-object v6, v7

    .line 1817
    :goto_b
    const/16 v7, 0xc

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v4, v3}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 1819
    return-void

    :cond_6
    move-object v7, v4

    .line 1596
    goto/16 :goto_0

    :cond_7
    move-object v2, v5

    move-object/from16 v21, v5

    .line 1618
    goto/16 :goto_1

    :cond_8
    move-object v2, v7

    move-object/from16 v21, v4

    .line 1600
    goto/16 :goto_1

    .line 1636
    :cond_9
    iget-object v2, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v7, "qualified.new.of.static.class"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    aput-object v10, v8, v9

    invoke-virtual {v2, v4, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1640
    :cond_a
    iget-object v2, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1641
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v2, v4, v7, v5}, Lcom/sun/tools/javac/comp/Resolve;->resolveImplicitThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_2

    .line 1650
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-nez v2, :cond_c

    .line 1655
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1656
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/comp/Attr;->findDiamonds:Z

    if-eqz v2, :cond_c

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-boolean v9, v2, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v10, v2, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    .line 1660
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v4

    iput-object v4, v2, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 1665
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/sun/tools/javac/comp/Attr;->attribDiamond(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCNewClass;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Pair;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iput-boolean v9, v2, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iput-object v10, v2, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    .line 1675
    if-eqz v4, :cond_c

    .line 1677
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_c

    iget v2, v4, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v6, 0xa

    if-ne v2, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v9, 0x12

    if-ne v2, v9, :cond_d

    move-object v2, v5

    :goto_c
    sget-object v9, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v6, v4, v2, v9}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v5, v4}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1681
    const-string v2, "diamond.redundant.args"

    .line 1683
    :goto_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v9}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-virtual {v6, v9, v2, v10}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    move-object v12, v5

    .line 1653
    goto/16 :goto_3

    .line 1679
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    goto :goto_c

    .line 1682
    :cond_e
    const-string v2, "diamond.redundant.args.1"

    goto :goto_d

    .line 1673
    :catchall_0
    move-exception v2

    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iput-boolean v9, v3, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 1674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iput-object v10, v3, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    .line 1675
    throw v2

    .line 1701
    :cond_f
    if-eqz v23, :cond_12

    iget-object v2, v12, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1704
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v5, "anon.class.impl.intf.no.args"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1707
    :cond_10
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v5, "anon.class.impl.intf.no.typeargs"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1711
    :cond_11
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1712
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    goto/16 :goto_5

    .line 1722
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v11

    .line 1723
    iget-object v2, v11, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    if-eqz v23, :cond_14

    const/4 v4, 0x1

    :goto_f
    iput-boolean v4, v2, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 1724
    iget-object v2, v11, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 1725
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 1726
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    move-object v13, v7

    move-object v14, v8

    .line 1725
    invoke-virtual/range {v9 .. v14}, Lcom/sun/tools/javac/comp/Resolve;->resolveConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    .line 1727
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    .line 1729
    :goto_10
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lcom/sun/tools/javac/code/Type;

    .line 1736
    iget-object v2, v11, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v2, v2, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    if-eqz v2, :cond_3

    .line 1737
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lcom/sun/tools/javac/code/Type;

    if-eqz v2, :cond_16

    :cond_13
    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    goto/16 :goto_4

    .line 1723
    :cond_14
    const/4 v4, 0x0

    goto :goto_f

    .line 1729
    :cond_15
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    move-object/from16 v17, v0

    iget-object v2, v11, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v0, v2, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    move/from16 v20, v0

    move-object/from16 v13, p0

    move-object v14, v12

    move-object/from16 v16, v11

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual/range {v13 .. v20}, Lcom/sun/tools/javac/comp/Attr;->checkMethod(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    goto :goto_10

    .line 1737
    :cond_16
    const/4 v2, 0x0

    goto :goto_11

    .line 1778
    :cond_17
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto/16 :goto_6

    :cond_18
    move-object v8, v2

    .line 1793
    goto/16 :goto_7

    .line 1794
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1798
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1804
    :cond_1b
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    move-object/from16 v16, v0

    move-object/from16 v12, p0

    move-object v13, v7

    move-object v15, v3

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Lcom/sun/tools/javac/comp/Attr;->checkMethod(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v6, v22

    .line 1817
    goto/16 :goto_b

    :cond_1d
    move-object/from16 v6, v22

    .line 1688
    goto/16 :goto_b

    .line 1673
    :catchall_1
    move-exception v2

    goto/16 :goto_e

    :cond_1e
    move-object v7, v12

    goto/16 :goto_a
.end method

.method public visitParens(Lcom/sun/tools/javac/tree/JCTree$JCParens;)V
    .registers 8

    .line 1974
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget v2, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 1975
    iget v3, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1976
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1977
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCParens;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "illegal.start.of.type"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1979
    :cond_0
    return-void
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 6

    const/4 v3, 0x0

    .line 1369
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eq v0, v1, :cond_2

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "ret.outside.meth"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1387
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1388
    return-void

    .line 1376
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1377
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 1378
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "cant.ret.val.from.meth.decl.void"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1381
    :cond_3
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v1, :cond_4

    .line 1382
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "missing.ret.val"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1384
    :cond_4
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    goto :goto_0
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 15

    .line 2226
    const/4 v0, 0x0

    .line 2227
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_3

    .line 2230
    :cond_0
    const/4 v0, 0x2

    .line 2238
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    sget-object v3, Lcom/sun/tools/javac/comp/Infer;->anyPoly:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2239
    iget v2, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    and-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_2

    .line 2240
    invoke-direct {p0, v1}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2243
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    move-object v0, v1

    .line 2245
    :goto_1
    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_6

    .line 2246
    check-cast v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    goto :goto_1

    .line 2232
    :cond_3
    iget v1, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 2233
    :cond_4
    iget v1, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x1

    .line 2234
    :cond_5
    iget v1, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    and-int/lit8 v1, v1, 0x1c

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0xc

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2247
    :cond_6
    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_7

    .line 2248
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "type.var.cant.be.deref"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2249
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2356
    :goto_2
    return-void

    .line 2257
    :cond_7
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 2258
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v11, v0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 2259
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    if-eqz v2, :cond_9

    iget-object v3, v2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 2266
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_16

    .line 2267
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ForAll;

    .line 2268
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    iput-object v3, v1, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    .line 2269
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iput-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 2266
    :goto_4
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 2274
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    iget v6, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Attr;->selectSym(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v9

    .line 2275
    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v9}, Lcom/sun/tools/javac/comp/Attr;->isType(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_8

    .line 2276
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 2277
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    iget v6, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Attr;->selectSym(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v9

    .line 2279
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v12, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 2280
    iput-object v9, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2282
    iget v0, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_15

    invoke-static {v9}, Lcom/sun/tools/javac/comp/Attr;->isType(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, v9, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_15

    .line 2283
    :goto_5
    iget v0, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_a

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    goto :goto_5

    .line 2259
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2284
    :cond_a
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    move-object v10, v3

    .line 2288
    :goto_6
    iget v0, v9, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    move-object v0, v9

    .line 2289
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 2293
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/sun/tools/javac/comp/Attr;->checkInit(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$VarSymbol;Z)V

    .line 2297
    iget v1, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_b

    .line 2298
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/sun/tools/javac/comp/Attr;->checkAssignable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 2301
    :cond_b
    if-eqz v2, :cond_c

    iget v0, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    move-object v0, v2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 2303
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->isResourceVariable()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v9, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    iget-object v0, v9, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->close:Lcom/sun/tools/javac/util/Name;

    .line 2305
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->autoCloseableClose:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    .line 2306
    const/4 v4, 0x1

    invoke-virtual {v9, v0, v1, v3, v4}, Lcom/sun/tools/javac/code/Symbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->TRY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 2307
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2308
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->TRY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v3, "try.explicit.close.call"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2312
    :cond_c
    invoke-static {v9}, Lcom/sun/tools/javac/comp/Attr;->isType(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v2, :cond_d

    iget v0, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_e

    .line 2313
    :cond_d
    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    .line 2314
    if-nez v2, :cond_10

    const/16 v6, 0xc

    :goto_7
    iget-object v8, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    .line 2313
    const/4 v7, 0x3

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    .line 2312
    :cond_e
    invoke-static {v2}, Lcom/sun/tools/javac/comp/Attr;->isType(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2318
    iget-object v0, v9, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_11

    .line 2321
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    if-eqz v0, :cond_f

    iget-object v0, v10, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, v1, :cond_f

    .line 2323
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/sun/tools/javac/comp/Check;->earlyRefError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2341
    :cond_f
    :goto_8
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    if-eqz v0, :cond_14

    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 2344
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/sun/tools/javac/comp/Resolve;->checkNonAbstract(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2346
    invoke-virtual {v10}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2348
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v10, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2349
    if-eqz v2, :cond_14

    .line 2353
    :goto_9
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-boolean v11, v0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 2354
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget v5, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v9

    move v7, v12

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Attr;->checkId(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2355
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    goto/16 :goto_2

    .line 2314
    :cond_10
    iget v6, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    goto/16 :goto_7

    .line 2327
    :cond_11
    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    iget-object v0, v9, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_f

    iget v0, v9, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    iget v0, v9, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    .line 2330
    :cond_12
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$StaticError;

    invoke-direct {v1, v2, v9}, Lcom/sun/tools/javac/comp/Resolve$StaticError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2331
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v4, v9, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 2330
    const/4 v5, 0x1

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;

    goto/16 :goto_8

    .line 2334
    :cond_13
    iget v0, v9, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_f

    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-object v0, v9, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_f

    .line 2337
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    const-string v1, "static.not.qualified.by.type"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v9, Lcom/sun/tools/javac/code/Symbol;->kind:I

    invoke-static {v4}, Lcom/sun/tools/javac/code/Kinds;->kindName(I)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v9, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/comp/Check;->warnStatic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_14
    move-object v2, v10

    goto/16 :goto_9

    :cond_15
    move-object v10, v3

    goto/16 :goto_6

    :cond_16
    move-object v3, v1

    goto/16 :goto_4
.end method

.method public visitSkip(Lcom/sun/tools/javac/tree/JCTree$JCSkip;)V
    .registers 3

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 893
    return-void
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 15

    .line 989
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 991
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 992
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dup()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v8

    .line 994
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Attr;->allowEnums:Z

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 996
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x4000

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v3, v0

    .line 997
    :goto_0
    const/4 v0, 0x0

    .line 998
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, v4}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 999
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Attr;->allowStringsInSwitch:Z

    if-eqz v1, :cond_2

    .line 1000
    const/4 v0, 0x1

    move v7, v0

    .line 1005
    :goto_1
    if-nez v3, :cond_c

    if-nez v7, :cond_c

    .line 1006
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2, v4}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v4, v0

    .line 1010
    :goto_2
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1011
    const/4 v5, 0x0

    .line 1012
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    move-object v6, v0

    :goto_3
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1013
    iget-object v0, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    .line 1014
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v8, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 1015
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Scope;->dup()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v10

    .line 1016
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_9

    .line 1017
    if-eqz v3, :cond_4

    .line 1018
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0, v4}, Lcom/sun/tools/javac/comp/Attr;->enumConstant(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1019
    if-nez v0, :cond_3

    .line 1020
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v11, "enum.label.must.be.unqualified.enum"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v11, v12}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_4
    move v2, v5

    .line 1042
    :goto_5
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v10}, Lcom/sun/tools/javac/comp/Attr;->attribStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 1043
    iget-object v0, v10, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    .line 1044
    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v0, v8, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-static {v1, v0}, Lcom/sun/tools/javac/comp/Attr;->addVars(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Scope;)V

    .line 1012
    iget-object v0, v6, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v5, v2

    move-object v6, v0

    goto :goto_3

    .line 996
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_0

    .line 1002
    :cond_2
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v5, "string.switch.not.supported.in.source"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sun/tools/javac/comp/Attr;->sourceName:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v0

    goto/16 :goto_1

    .line 1021
    :cond_3
    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v11, "duplicate.case.label"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v11, v12}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1025
    :cond_4
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v8, v4}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1026
    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v11, 0x13

    if-eq v2, v11, :cond_5

    .line 1027
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1028
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    .line 1029
    if-eqz v7, :cond_6

    const-string v0, "string.const.req"

    .line 1028
    :goto_6
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v2, v11, v0, v12}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_7
    move v2, v5

    .line 1036
    goto :goto_5

    .line 1029
    :cond_6
    const-string v0, "const.expr.req"

    goto :goto_6

    .line 1030
    :cond_7
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1031
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v11, "duplicate.case.label"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v11, v12}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1033
    :cond_8
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1037
    :cond_9
    if-eqz v5, :cond_a

    .line 1038
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v11, "duplicate.default.label"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v11, v12}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v5

    goto/16 :goto_5

    .line 1040
    :cond_a
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_5

    .line 1047
    :cond_b
    iget-object v0, v8, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1049
    return-void

    :cond_c
    move-object v4, v2

    goto/16 :goto_2

    :cond_d
    move v7, v0

    goto/16 :goto_1
.end method

.method public visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V
    .registers 6

    .line 1082
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->checkRefType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1083
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1084
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1085
    return-void
.end method

.method public visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V
    .registers 5

    .line 1391
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1393
    return-void
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 3064
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 12

    .line 1089
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dup()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v3

    .line 1090
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    .line 1092
    if-eqz v2, :cond_0

    .line 1093
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dup()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    move-object v1, v0

    .line 1096
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1097
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 1098
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1099
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v6, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->autoCloseableType:Lcom/sun/tools/javac/code/Type;

    const-string v8, "try.not.applicable.to.type"

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    .line 1102
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v5, v3, v6}, Lcom/sun/tools/javac/comp/Attr;->checkAutoCloseable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)V

    .line 1104
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbolFor(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1105
    sget-object v5, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->setData(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object v1, v3

    .line 1094
    goto :goto_0

    .line 1107
    :cond_1
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->autoCloseableType:Lcom/sun/tools/javac/code/Type;

    const-string v6, "try.not.applicable.to.type"

    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    goto :goto_1

    .line 1111
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1112
    if-eqz v2, :cond_3

    .line 1113
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    .line 1116
    :cond_3
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    move-object v4, v0

    :goto_2
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1117
    iget-object v0, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    .line 1118
    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 1119
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dup()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 1120
    iget-object v1, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1121
    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->isMultiCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1123
    iget-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-wide v6, v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    const-wide v8, 0x8000000010L

    or-long/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    .line 1125
    :cond_4
    iget-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget v5, v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->kind:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 1126
    iget-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    sget-object v6, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->setData(Ljava/lang/Object;)V

    .line 1128
    :cond_5
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v6, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v6}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v8, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v8, v8, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1129
    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/sun/tools/javac/comp/Check;->checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    .line 1128
    invoke-virtual {v5, v6, v1, v7}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 1131
    iget-object v1, v2, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1132
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    .line 1116
    iget-object v0, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v0

    goto :goto_2

    .line 1136
    :cond_6
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 1138
    :cond_7
    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    .line 1139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 1140
    return-void
.end method

.method public visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 2873
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2876
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v3, v4}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sun/tools/javac/comp/Check;->checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 2879
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2881
    iget v0, v5, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_3

    .line 2882
    iget-object v0, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2883
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v0

    .line 2886
    :goto_0
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v3

    if-ne v1, v3, :cond_6

    move-object v3, v2

    move-object v4, v0

    .line 2888
    :goto_1
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2890
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Type;->withTypeVar(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 2891
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 2892
    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    .line 2895
    :cond_0
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2896
    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_8

    .line 2898
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->typeIn(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 2899
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_4

    .line 2900
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2904
    :goto_2
    iget v3, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v3, v6, :cond_8

    if-eq v0, v1, :cond_8

    .line 2905
    iget v3, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v3, v6, :cond_1

    .line 2906
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/code/Types;->asOuterSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2907
    :cond_1
    if-nez v0, :cond_2

    .line 2908
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2912
    :cond_2
    :goto_3
    new-instance v1, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v3, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, v0, v2, v3}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v2, v1

    .line 2923
    :cond_3
    :goto_4
    const/4 v3, 0x2

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2924
    return-void

    .line 2901
    :cond_4
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_5

    .line 2902
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_2

    .line 2903
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2914
    :cond_6
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 2915
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    .line 2916
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2915
    const-string v3, "wrong.number.type.args"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2920
    :goto_5
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    goto :goto_4

    .line 2918
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "type.doesnt.take.params"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public visitTypeArray(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .registers 8

    .line 2863
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2864
    new-instance v2, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v0, v1}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 2865
    const/4 v3, 0x2

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2866
    return-void
.end method

.method public visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V
    .registers 8

    .line 2105
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2106
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Z)V

    .line 2109
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 2110
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    sget-object v3, Lcom/sun/tools/javac/comp/Infer;->anyPoly:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2111
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/sun/tools/javac/comp/Check;->checkCastable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2112
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2113
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/comp/ConstFold;->coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2114
    :cond_0
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Attr;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    const/16 v3, 0xc

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2115
    return-void
.end method

.method public visitTypeIdent(Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .registers 8

    .line 2859
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->typeOfTag:[Lcom/sun/tools/javac/code/Type;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:I

    aget-object v2, v0, v1

    const/4 v3, 0x2

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2860
    return-void
.end method

.method public visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V
    .registers 14

    .line 2970
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    move-object v7, v0

    check-cast v7, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 2971
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2972
    iget-object v0, v7, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3035
    :cond_0
    :goto_0
    return-void

    .line 2974
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 2975
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    .line 2977
    iget-object v1, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    iget-object v2, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Attr;->checkBase(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ZZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2978
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2979
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2980
    iput-object v0, v7, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 3003
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 3006
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 3013
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 3014
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3015
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    iget-object v5, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v0

    .line 3020
    :goto_2
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3021
    const-wide/16 v2, 0x401

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->name:Lcom/sun/tools/javac/util/Name;

    .line 3022
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 3023
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 3020
    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v2

    .line 3025
    invoke-virtual {v7}, Lcom/sun/tools/javac/code/Type$TypeVar;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 3026
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/32 v6, 0x1000000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 3027
    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 3028
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 3031
    iget-wide v4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    iput-wide v4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 3032
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/comp/Enter;->classEnv(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 3033
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2982
    :cond_3
    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 2984
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2985
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v2, "type.var.may.not.be.followed.by.other.bounds"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2987
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    .line 2988
    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iput-object v0, v7, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_1

    .line 2993
    :cond_4
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v0, v8

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2994
    iget-object v8, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 2995
    iget-object v1, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Attr;->checkBase(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ZZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2996
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2997
    iput-object v0, v7, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    :cond_5
    :goto_5
    move-object v0, v8

    .line 3000
    goto :goto_4

    .line 2998
    :cond_6
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    .line 2999
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v10}, Lcom/sun/tools/javac/comp/Check;->checkNotRepeated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Ljava/util/Set;)V

    goto :goto_5

    .line 3017
    :cond_7
    const/4 v4, 0x0

    .line 3018
    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    goto/16 :goto_2

    :cond_8
    move v1, v9

    goto/16 :goto_3
.end method

.method public visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V
    .registers 8

    .line 2118
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2119
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2118
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->checkNullOrRefType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2120
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    .line 2121
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v3, v4}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 2120
    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/comp/Check;->checkReifiableReferenceType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2122
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Z)V

    .line 2123
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/sun/tools/javac/comp/Check;->checkCastable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 2124
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v3, 0xc

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2125
    return-void
.end method

.method public visitTypeUnion(Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;)V
    .registers 16

    const/4 v3, 0x2

    .line 2927
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v7

    .line 2928
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v0, 0x0

    move-object v6, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2930
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2931
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 2932
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/sun/tools/javac/comp/Check;->checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    .line 2931
    invoke-virtual {v2, v4, v1, v8}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2934
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2937
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v7}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sun/tools/javac/comp/Check;->intersects(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2938
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2939
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v2, v1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v9

    .line 2940
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    .line 2941
    if-nez v9, :cond_1

    if-eqz v4, :cond_0

    .line 2943
    :cond_1
    if-eqz v9, :cond_2

    move-object v4, v2

    .line 2944
    :goto_2
    if-eqz v9, :cond_3

    .line 2945
    :goto_3
    iget-object v9, p0, Lcom/sun/tools/javac/comp/Attr;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    const-string v11, "multicatch.types.must.be.disjoint"

    new-array v12, v3, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v4, 0x1

    aput-object v1, v12, v4

    invoke-virtual {v9, v10, v11, v12}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 2943
    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 2944
    goto :goto_3

    .line 2937
    :cond_4
    invoke-virtual {v7, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2950
    if-eqz v6, :cond_7

    .line 2951
    invoke-virtual {v6, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move-object v0, v6

    :goto_4
    move-object v6, v0

    .line 2959
    goto/16 :goto_0

    .line 2953
    :cond_5
    if-nez v6, :cond_6

    .line 2954
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v6

    .line 2955
    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2957
    :cond_6
    invoke-virtual {v6, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    :cond_7
    move-object v0, v6

    goto :goto_4

    .line 2960
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v7}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->lub(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2961
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 2963
    if-nez v6, :cond_9

    move-object v6, v7

    :cond_9
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2964
    new-instance v1, Lcom/sun/tools/javac/code/Type$UnionClassType;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-direct {v1, v0, v2}, Lcom/sun/tools/javac/code/Type$UnionClassType;-><init>(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/util/List;)V

    move-object v0, v1

    .line 2966
    :cond_a
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->type:Lcom/sun/tools/javac/code/Type;

    .line 2967
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 9

    const/16 v6, 0x37

    const/16 v5, 0x34

    .line 2015
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    if-gt v5, v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    if-gt v0, v6, :cond_1

    .line 2016
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v1, v0

    .line 2020
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 2021
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sun/tools/javac/comp/Resolve;->resolveUnaryOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 2023
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2024
    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 2025
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2026
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v2

    if-gt v5, v2, :cond_2

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v2

    if-gt v2, v6, :cond_2

    .line 2027
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 2029
    :goto_1
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    .line 2032
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2033
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    invoke-virtual {v3, v0, v1}, Lcom/sun/tools/javac/comp/ConstFold;->fold1(ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2034
    if-eqz v0, :cond_0

    .line 2035
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/comp/ConstFold;->coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2042
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    .line 2043
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 2048
    :cond_0
    const/16 v3, 0xc

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 2049
    return-void

    .line 2017
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->checkNonVoid(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 2028
    :cond_2
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    goto :goto_1
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 10

    .line 843
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 844
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 851
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    const-wide v4, 0x40000000000L

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    .line 854
    :cond_0
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 855
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/sun/tools/javac/code/Lint;->augment(Lcom/sun/tools/javac/util/List;J)Lcom/sun/tools/javac/code/Lint;

    move-result-object v2

    .line 856
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v3

    .line 859
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, v4, v5}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 860
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/DeferredLintHandler;->flush(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/sun/tools/javac/comp/Check;->checkDeprecatedAnnotation(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 865
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1

    .line 866
    iget-wide v4, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v4, 0x1b

    if-eq v0, v4, :cond_3

    .line 869
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    .line 883
    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 884
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/comp/Check;->validateAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    .line 888
    return-void

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 849
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Annotate;->flush()V

    goto :goto_0

    .line 874
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, p1, v4}, Lcom/sun/tools/javac/comp/MemberEnter;->initEnv(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v4

    .line 875
    iget-object v0, v4, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-object v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 879
    iget-object v0, v4, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    .line 880
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v4, v2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 887
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/comp/Check;->setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;

    .line 888
    throw v0
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 5

    .line 924
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 925
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 927
    return-void
.end method

.method public visitWildcard(Lcom/sun/tools/javac/tree/JCTree$JCWildcard;)V
    .registers 8

    .line 3040
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->kind:Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lcom/sun/tools/javac/code/BoundKind;

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    if-ne v0, v1, :cond_0

    .line 3041
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 3043
    :goto_0
    new-instance v2, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/sun/tools/javac/comp/Check;->checkRefType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->kind:Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v0, v1, v3}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    const/4 v3, 0x2

    iget v4, p0, Lcom/sun/tools/javac/comp/Attr;->pkind:I

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Attr;->pt:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Attr;->check(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;IILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Attr;->result:Lcom/sun/tools/javac/code/Type;

    .line 3047
    return-void

    .line 3042
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0
.end method
