.class public Lcom/sun/tools/javac/comp/Check;
.super Ljava/lang/Object;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Check$1AnnotationValidator;,
        Lcom/sun/tools/javac/comp/Check$1SpecialTreeVisitor;,
        Lcom/sun/tools/javac/comp/Check$ClashFilter;,
        Lcom/sun/tools/javac/comp/Check$ConversionWarner;,
        Lcom/sun/tools/javac/comp/Check$CycleChecker;,
        Lcom/sun/tools/javac/comp/Check$Validator;
    }
.end annotation


# static fields
.field protected static final checkKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/Check;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allowAnnotations:Z

.field allowCovariantReturns:Z

.field allowGenerics:Z

.field allowSimplifiedVarargs:Z

.field public compiled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field complexInference:Z

.field private deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

.field private deprecationHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

.field private final diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field private enableSunApiLintControl:Z

.field private final enter:Lcom/sun/tools/javac/comp/Enter;

.field private final infer:Lcom/sun/tools/javac/comp/Infer;

.field isTypeArgErroneous:Lcom/sun/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lint:Lcom/sun/tools/javac/code/Lint;

.field private final log:Lcom/sun/tools/javac/util/Log;

.field private method:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field private final names:Lcom/sun/tools/javac/util/Names;

.field overrideWarner:Lcom/sun/tools/javac/util/Warner;

.field private final skipAnnotations:Z

.field private sunApiHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

.field private suppressAbortOnBadClassFile:Z

.field private final syms:Lcom/sun/tools/javac/code/Symtab;

.field syntheticNameChar:C

.field private final treeinfo:Lcom/sun/tools/javac/tree/TreeInfo;

.field private final types:Lcom/sun/tools/javac/code/Types;

.field private uncheckedHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

.field private warnOnSyntheticConflicts:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/Check;->checkKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 10

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    .line 836
    new-instance v0, Lcom/sun/tools/javac/comp/Check$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Check$1;-><init>(Lcom/sun/tools/javac/comp/Check;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->isTypeArgErroneous:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    .line 1525
    new-instance v0, Lcom/sun/tools/javac/util/Warner;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Warner;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->overrideWarner:Lcom/sun/tools/javac/util/Warner;

    .line 91
    sget-object v0, Lcom/sun/tools/javac/comp/Check;->checkKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 93
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    .line 94
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    .line 95
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 96
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Enter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->enter:Lcom/sun/tools/javac/comp/Enter;

    .line 97
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Infer;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Infer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->infer:Lcom/sun/tools/javac/comp/Infer;

    .line 98
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 99
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 100
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    .line 101
    invoke-static {p1}, Lcom/sun/tools/javac/code/Lint;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 102
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Check;->treeinfo:Lcom/sun/tools/javac/tree/TreeInfo;

    .line 104
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Source;->allowGenerics()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Check;->allowGenerics:Z

    .line 106
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Source;->allowAnnotations()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Check;->allowAnnotations:Z

    .line 107
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Source;->allowCovariantReturns()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Check;->allowCovariantReturns:Z

    .line 108
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Source;->allowSimplifiedVarargs()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Check;->allowSimplifiedVarargs:Z

    .line 109
    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->COMPLEXINFERENCE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Check;->complexInference:Z

    .line 110
    const-string v2, "skipAnnotations"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Check;->skipAnnotations:Z

    .line 111
    const-string v2, "warnOnSyntheticConflicts"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Check;->warnOnSyntheticConflicts:Z

    .line 112
    const-string v2, "suppressAbortOnBadClassFile"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/Check;->suppressAbortOnBadClassFile:Z

    .line 113
    const-string v2, "enableSunApiLintControl"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->enableSunApiLintControl:Z

    .line 115
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Target;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v0

    iput-char v0, p0, Lcom/sun/tools/javac/comp/Check;->syntheticNameChar:C

    .line 118
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v2

    .line 119
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v6

    .line 120
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->SUNAPI:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v7

    .line 121
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Source;->enforceMandatoryWarnings()Z

    move-result v3

    .line 123
    new-instance v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v4, "deprecated"

    sget-object v5, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;-><init>(Lcom/sun/tools/javac/util/Log;ZZLjava/lang/String;Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->deprecationHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    .line 125
    new-instance v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v4, "unchecked"

    sget-object v5, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;-><init>(Lcom/sun/tools/javac/util/Log;ZZLjava/lang/String;Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->uncheckedHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    .line 127
    new-instance v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v4, "sunapi"

    const/4 v5, 0x0

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;-><init>(Lcom/sun/tools/javac/util/Log;ZZLjava/lang/String;Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->sunApiHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    .line 130
    sget-object v0, Lcom/sun/tools/javac/code/DeferredLintHandler;->immediateHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 57
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Check;->firstIncompatibleTypeArg(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Symtab;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 3

    .line 57
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Check;->isTrustMeAllowedOnMethod(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Names;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Lint;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/comp/Enter;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->enter:Lcom/sun/tools/javac/comp/Enter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->noteCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Types;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/tools/javac/comp/Check;)Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->enableSunApiLintControl:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->method:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    return-object v0
.end method

.method private checkCyclicConstructor(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)V"
        }
    .end annotation

    const-wide/32 v6, 0x40000000

    const-wide/32 v4, 0x8000000

    const-wide/16 v2, 0x0

    .line 2581
    if-eqz p2, :cond_2b

    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 2582
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    .line 2583
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "recursive.ctor.invocation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2590
    :goto_26
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v0, v6

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 2592
    :cond_2b
    return-void

    .line 2586
    :cond_2c
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v0, v4

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 2587
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, p1, v0, p3}, Lcom/sun/tools/javac/comp/Check;->checkCyclicConstructor(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol;Ljava/util/Map;)V

    .line 2588
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, -0x8000001

    and-long/2addr v0, v2

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    goto :goto_26
.end method

.method private checkExtends(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 6

    const/4 v0, 0x1

    .line 526
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isUnbound()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 536
    :cond_7
    :goto_7
    return v0

    .line 528
    :cond_8
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1b

    .line 529
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    goto :goto_7

    .line 531
    :cond_1b
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 532
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v0, p2, v1, v2}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_7

    .line 533
    :cond_2e
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 534
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->notSoftSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private checkNameClash(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 7

    .line 1761
    new-instance v0, Lcom/sun/tools/javac/comp/Check$ClashFilter;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/comp/Check$ClashFilter;-><init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/code/Type;)V

    .line 1762
    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/comp/Check$ClashFilter;->accepts(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1763
    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/comp/Check$ClashFilter;->accepts(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1764
    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p3, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    .line 1762
    :goto_26
    return v0

    .line 1764
    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private checkNonCyclic1(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0xe

    .line 1952
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v4, :cond_17

    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 1964
    :cond_16
    :goto_16
    return-void

    .line 1954
    :cond_17
    invoke-virtual {p3, p2}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move-object v0, p2

    .line 1955
    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 1956
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 1957
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "cyclic.inheritance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 1958
    :cond_36
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v4, :cond_16

    .line 1959
    check-cast p2, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 1960
    invoke-virtual {p3, p2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1961
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1962
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclic1(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    goto :goto_4a
.end method

.method private checkNonCyclicInternal(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Z
    .registers 13

    .line 1974
    const/4 v3, 0x1

    const/4 v0, 0x1

    const/4 v4, 0x1

    const/4 v2, 0x1

    .line 1976
    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1977
    iget-wide v6, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const/4 v5, 0x1

    const-wide/32 v8, 0x40000000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_15

    const/4 v0, 0x1

    .line 2004
    :cond_14
    :goto_14
    return v0

    .line 1979
    :cond_15
    iget-wide v6, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v8, 0x8000000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_46

    move-object v0, v1

    .line 1980
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->noteCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    move v0, v4

    .line 2001
    :goto_28
    if-eqz v0, :cond_3b

    .line 2002
    iget-wide v2, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v6, 0x10000000

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_b3

    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-nez v0, :cond_b3

    move v0, v5

    .line 2003
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_14

    iget-wide v2, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v4, 0x40000000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    goto :goto_14

    .line 1981
    :cond_46
    iget-object v6, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v6

    if-nez v6, :cond_b7

    .line 1983
    const-wide/32 v6, 0x8000000

    :try_start_51
    iget-wide v8, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v6, v8

    iput-wide v6, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 1984
    iget-object v4, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v4, v4, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v6, 0xa

    if-ne v4, v6, :cond_b5

    .line 1985
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 1986
    iget-object v4, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    if-eqz v4, :cond_7c

    .line 1987
    iget-object v4, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    move v3, v2

    :goto_69
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1988
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, p1, v2}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclicInternal(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    and-int/2addr v2, v3

    .line 1987
    iget-object v4, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v3, v2

    goto :goto_69

    .line 1989
    :cond_7c
    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    if-eqz v2, :cond_8f

    .line 1990
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 1991
    if-eqz v0, :cond_8f

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_8f

    .line 1992
    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclicInternal(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    and-int/2addr v3, v0

    .line 1994
    :cond_8f
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9f

    .line 1995
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclicInternal(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Z
    :try_end_9d
    .catchall {:try_start_51 .. :try_end_9d} :catchall_a9

    move-result v0

    and-int/2addr v3, v0

    .line 1998
    :cond_9f
    :goto_9f
    const-wide/32 v6, -0x8000001

    iget-wide v8, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v6, v8

    iput-wide v6, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    move v0, v3

    .line 1999
    goto :goto_28

    .line 1998
    :catchall_a9
    move-exception v0

    const-wide/32 v2, -0x8000001

    iget-wide v4, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 1999
    throw v0

    .line 2002
    :cond_b3
    const/4 v0, 0x0

    goto :goto_3b

    :cond_b5
    move v3, v0

    goto :goto_9f

    :cond_b7
    move v0, v4

    goto/16 :goto_28
.end method

.method private checkUniqueImport(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Z)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2717
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p3, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    :goto_8
    iget-object v3, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v3, :cond_6b

    .line 2719
    iget-object v3, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-ne v3, p3, :cond_48

    move v3, v2

    .line 2720
    :goto_11
    if-nez v3, :cond_17

    iget-object v4, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eq p2, v4, :cond_66

    :cond_17
    iget v4, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget-object v5, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v5, v5, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v4, v5, :cond_66

    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    if-eq v4, v5, :cond_66

    .line 2723
    iget-object v4, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v4

    if-nez v4, :cond_46

    .line 2724
    iget-object v4, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2725
    if-nez v3, :cond_56

    .line 2726
    if-eqz p4, :cond_4a

    .line 2727
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "already.defined.static.single.import"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {v0, p1, v3, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    :goto_46
    move v0, v1

    .line 2737
    :goto_47
    return v0

    :cond_48
    move v3, v1

    .line 2719
    goto :goto_11

    .line 2729
    :cond_4a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "already.defined.single.import"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {v0, p1, v3, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    .line 2731
    :cond_56
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eq p2, v0, :cond_46

    .line 2732
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "already.defined.this.unit"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {v0, p1, v3, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    .line 2717
    :cond_66
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_8

    :cond_6b
    move v0, v2

    .line 2737
    goto :goto_47
.end method

.method private closure(Lcom/sun/tools/javac/code/Type;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 1628
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    .line 1634
    :cond_6
    return-void

    .line 1629
    :cond_7
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1630
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/comp/Check;->closure(Lcom/sun/tools/javac/code/Type;Ljava/util/Map;)V

    .line 1631
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1632
    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/comp/Check;->closure(Lcom/sun/tools/javac/code/Type;Ljava/util/Map;)V

    goto :goto_22
.end method

.method private closure(Lcom/sun/tools/javac/code/Type;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 1638
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    .line 1645
    :cond_6
    return-void

    .line 1639
    :cond_7
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1640
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1641
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->closure(Lcom/sun/tools/javac/code/Type;Ljava/util/Map;Ljava/util/Map;)V

    .line 1642
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1643
    invoke-direct {p0, v0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->closure(Lcom/sun/tools/javac/code/Type;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2a
.end method

.method private firstDirectIncompatibility(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;
    .registers 15

    .line 1649
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v5, v0

    :goto_9
    if-eqz v5, :cond_135

    .line 1650
    iget-object v1, v5, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1651
    const/4 v4, 0x0

    .line 1652
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1e

    iget-object v0, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1649
    :cond_1e
    iget-object v0, v5, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v5, v0

    goto :goto_9

    :cond_22
    move-object v0, v1

    .line 1653
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 1654
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v6, 0x400

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1e

    .line 1655
    :cond_3d
    iget-object v0, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    move-object v3, v2

    move-object v0, v4

    :goto_4b
    iget-object v2, v3, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_1e

    .line 1656
    iget-object v4, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1657
    if-ne v1, v4, :cond_59

    .line 1658
    :cond_53
    :goto_53
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    move-object v3, v2

    goto :goto_4b

    :cond_59
    iget v2, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v6, 0x10

    if-ne v2, v6, :cond_53

    iget-object v2, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v2, v6}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1659
    if-nez v0, :cond_137

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2, v1}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 1660
    :goto_71
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3, v4}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1661
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v6, v2, v0}, Lcom/sun/tools/javac/code/Types;->overrideEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v6

    if-eqz v6, :cond_102

    .line 1662
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 1663
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 1664
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v8

    .line 1665
    iget-object v9, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v9, v0, v7, v6}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1666
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1667
    invoke-virtual {v6, v8, v0}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v6

    if-nez v6, :cond_c3

    iget v6, v8, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_bd

    iget v6, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_bd

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    sget-object v7, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    .line 1669
    invoke-virtual {v6, v8, v0, v7}, Lcom/sun/tools/javac/code/Types;->covariantReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v6

    if-nez v6, :cond_c3

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    sget-object v7, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    .line 1670
    invoke-virtual {v6, v0, v8, v7}, Lcom/sun/tools/javac/code/Types;->covariantReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 1671
    :cond_bd
    invoke-virtual {p0, v1, v4, p4}, Lcom/sun/tools/javac/comp/Check;->checkCommonOverriderIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1667
    :cond_c3
    const/4 v0, 0x1

    .line 1672
    :goto_c4
    if-nez v0, :cond_132

    .line 1673
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1675
    invoke-virtual {v2, p3, v4}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1673
    const-string v2, "types.incompatible.diff.ret"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    const/4 v5, 0x1

    aput-object p3, v3, v5

    const/4 v5, 0x2

    aput-object v1, v3, v5

    invoke-virtual {v0, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    .line 1688
    :goto_ff
    return-object v0

    .line 1671
    :cond_100
    const/4 v0, 0x0

    goto :goto_c4

    .line 1672
    :cond_102
    iget-object v0, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v0, v1, v4}, Lcom/sun/tools/javac/comp/Check;->checkNameClash(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 1679
    invoke-virtual {p0, v1, v4, p4}, Lcom/sun/tools/javac/comp/Check;->checkCommonOverriderIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_132

    .line 1680
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    .line 1682
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 1683
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 1680
    const-string v5, "name.clash.same.erasure.no.override"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v3, v6, v1

    invoke-virtual {v0, p1, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    .line 1684
    goto :goto_ff

    :cond_132
    move-object v0, v2

    .line 1678
    goto/16 :goto_53

    .line 1688
    :cond_135
    const/4 v0, 0x0

    goto :goto_ff

    :cond_137
    move-object v2, v0

    goto/16 :goto_71
.end method

.method private firstIncompatibility(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;
    .registers 10

    .line 1609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1610
    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/comp/Check;->closure(Lcom/sun/tools/javac/code/Type;Ljava/util/Map;)V

    .line 1612
    if-ne p2, p3, :cond_3b

    move-object v2, v0

    .line 1617
    :goto_b
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1618
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 1619
    invoke-direct {p0, p1, v0, v1, p4}, Lcom/sun/tools/javac/comp/Check;->firstDirectIncompatibility(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1620
    if-eqz v1, :cond_27

    move-object v0, v1

    .line 1623
    :goto_3a
    return-object v0

    .line 1615
    :cond_3b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, v0, v1}, Lcom/sun/tools/javac/comp/Check;->closure(Lcom/sun/tools/javac/code/Type;Ljava/util/Map;Ljava/util/Map;)V

    move-object v2, v1

    goto :goto_b

    .line 1623
    :cond_45
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method private firstIncompatibleTypeArg(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 9

    .line 772
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 773
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 774
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 775
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 776
    new-instance v5, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    move-object v1, v0

    .line 780
    :goto_1e
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 785
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v6, v0, v3, v4}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 786
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 787
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1e

    .line 790
    :cond_41
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 793
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 791
    invoke-virtual {v1, v3, v3, v2}, Lcom/sun/tools/javac/code/Types;->substBounds(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    .line 794
    :goto_55
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 796
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Type;->withTypeVar(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 797
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 798
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    move-object v3, v1

    goto :goto_55

    .line 801
    :cond_73
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 802
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    .line 804
    :goto_7d
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 805
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 806
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Check;->isTypeArgErroneous(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 807
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 808
    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/comp/Check;->checkExtends(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 809
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 829
    :goto_ac
    return-object v0

    .line 811
    :cond_ad
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 812
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    move-object v3, v1

    .line 813
    goto :goto_7d

    .line 815
    :cond_b4
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 816
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 818
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 819
    iget v4, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_100

    .line 820
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 821
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_100

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 822
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check;->isTypeArgErroneous(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 823
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    goto :goto_ac

    .line 825
    :cond_100
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 826
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 827
    goto :goto_cb

    .line 829
    :cond_106
    const/4 v0, 0x0

    goto :goto_ac
.end method

.method private firstUndef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 11

    const/4 v0, 0x0

    .line 1798
    .line 1801
    if-eq p2, p1, :cond_10

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x600

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7f

    .line 1802
    :cond_10
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    .line 1803
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    .line 1804
    :goto_17
    if-nez v1, :cond_46

    if-eqz v2, :cond_46

    .line 1806
    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_80

    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1807
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/32 v6, 0x200400

    and-long/2addr v4, v6

    const-wide/16 v6, 0x400

    cmp-long v0, v4, v6

    if-nez v0, :cond_80

    .line 1808
    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1809
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v3, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v3

    .line 1810
    if-eqz v3, :cond_42

    if-ne v3, v0, :cond_80

    .line 1805
    :cond_42
    :goto_42
    iget-object v2, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    goto :goto_17

    .line 1814
    :cond_46
    if-nez v1, :cond_5e

    .line 1815
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1816
    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5e

    .line 1817
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->firstUndef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    .line 1819
    :cond_5e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object v0, v1

    .line 1820
    :goto_67
    if-nez v0, :cond_7f

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1822
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->firstUndef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 1821
    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v1

    goto :goto_67

    .line 1825
    :cond_7f
    return-object v0

    :cond_80
    move-object v0, v1

    goto :goto_42
.end method

.method private implicitEnumFinalFlag(Lcom/sun/tools/javac/tree/JCTree;)J
    .registers 7

    const-wide/16 v2, 0x0

    .line 986
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    move-wide v0, v2

    .line 1013
    :goto_a
    return-wide v0

    .line 1007
    :cond_b
    new-instance v1, Lcom/sun/tools/javac/comp/Check$1SpecialTreeVisitor;

    invoke-direct {v1, p0}, Lcom/sun/tools/javac/comp/Check$1SpecialTreeVisitor;-><init>(Lcom/sun/tools/javac/comp/Check;)V

    .line 1008
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1009
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1010
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 1011
    iget-boolean v0, v1, Lcom/sun/tools/javac/comp/Check$1SpecialTreeVisitor;->specialized:Z

    if-eqz v0, :cond_18

    move-wide v0, v2

    goto :goto_a

    .line 1013
    :cond_2d
    const-wide/16 v0, 0x10

    goto :goto_a
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;
    .registers 2

    .line 84
    sget-object v0, Lcom/sun/tools/javac/comp/Check;->checkKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Check;

    .line 85
    if-nez v0, :cond_f

    .line 86
    new-instance v0, Lcom/sun/tools/javac/comp/Check;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Check;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 87
    :cond_f
    return-object v0
.end method

.method private isCanonical(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 5

    .line 2749
    move-object v0, p1

    :goto_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1c

    .line 2750
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 2751
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_19

    .line 2752
    const/4 v0, 0x0

    .line 2755
    :goto_18
    return v0

    .line 2753
    :cond_19
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    .line 2755
    :cond_1c
    const/4 v0, 0x1

    goto :goto_18
.end method

.method private isDeprecatedOverrideIgnorable(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1509
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    .line 1510
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1511
    iget v4, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_15

    .line 1520
    :cond_14
    :goto_14
    return v2

    .line 1513
    :cond_15
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v0, v4, v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 1515
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x200

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_45

    .line 1516
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 1517
    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    :cond_3e
    move v0, v1

    :goto_3f
    move v2, v0

    goto :goto_14

    :cond_41
    if-eqz v0, :cond_3e

    move v0, v2

    goto :goto_3f

    .line 1520
    :cond_45
    if-ne v0, p1, :cond_14

    move v2, v1

    goto :goto_14
.end method

.method private isTrustMeAllowedOnMethod(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 8

    const-wide/16 v4, 0x0

    .line 738
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x400000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_23

    .line 739
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_21

    .line 740
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    .line 738
    :goto_22
    return v0

    .line 740
    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private noteCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 7

    .line 2009
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "cyclic.inheritance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2010
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_16
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2011
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    sget-object v3, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 2010
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_16

    .line 2012
    :cond_32
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2013
    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_52

    .line 2014
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    sget-object v3, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {v2, v1, v3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 2015
    :cond_52
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p2, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2016
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 2017
    return-void
.end method

.method static protection(J)I
    .registers 6

    const/4 v0, 0x2

    .line 1304
    const-wide/16 v2, 0x7

    and-long/2addr v2, p0

    long-to-int v1, v2

    int-to-short v1, v1

    if-eqz v1, :cond_e

    if-eq v1, v0, :cond_11

    const/4 v0, 0x4

    if-eq v1, v0, :cond_f

    .line 1308
    const/4 v0, 0x0

    .line 1309
    :cond_e
    :goto_e
    return v0

    .line 1306
    :cond_f
    const/4 v0, 0x1

    goto :goto_e

    .line 1305
    :cond_11
    const/4 v0, 0x3

    goto :goto_e
.end method

.method private syntheticError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 8

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2183
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2184
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->warnOnSyntheticConflicts:Z

    if-eqz v0, :cond_21

    .line 2185
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "synthetic.name.conflict"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2191
    :cond_20
    :goto_20
    return-void

    .line 2188
    :cond_21
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "synthetic.name.conflict"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20
.end method


# virtual methods
.method annotationApplicable(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 11

    .line 2344
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->annotationTargetType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2345
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->attribute(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    .line 2346
    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 2388
    :goto_13
    return v0

    .line 2347
    :cond_14
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->value:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Attribute$Compound;->member(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v0

    .line 2348
    instance-of v1, v0, Lcom/sun/tools/javac/code/Attribute$Array;

    if-nez v1, :cond_22

    const/4 v0, 0x1

    goto :goto_13

    .line 2349
    :cond_22
    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Array;

    .line 2350
    iget-object v2, v0, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_29
    if-ge v1, v3, :cond_14c

    aget-object v0, v2, v1

    .line 2351
    instance-of v4, v0, Lcom/sun/tools/javac/code/Attribute$Enum;

    if-nez v4, :cond_33

    const/4 v0, 0x1

    goto :goto_13

    .line 2352
    :cond_33
    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Enum;

    .line 2353
    iget-object v4, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->TYPE:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_46

    .line 2354
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_144

    const/4 v0, 0x1

    goto :goto_13

    .line 2355
    :cond_46
    iget-object v4, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->FIELD:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_5f

    .line 2356
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_144

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-eq v0, v4, :cond_144

    const/4 v0, 0x1

    goto :goto_13

    .line 2357
    :cond_5f
    iget-object v4, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->METHOD:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_77

    .line 2358
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_144

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_144

    const/4 v0, 0x1

    goto :goto_13

    .line 2359
    :cond_77
    iget-object v4, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->PARAMETER:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_a1

    .line 2360
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_144

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_144

    .line 2362
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide v6, 0x200000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_144

    .line 2363
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 2365
    :cond_a1
    iget-object v4, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->CONSTRUCTOR:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_ba

    .line 2366
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_144

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_144

    const/4 v0, 0x1

    goto/16 :goto_13

    .line 2367
    :cond_ba
    iget-object v4, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->LOCAL_VARIABLE:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_e4

    .line 2368
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_144

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_144

    .line 2369
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide v6, 0x200000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_144

    .line 2370
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 2372
    :cond_e4
    iget-object v4, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->ANNOTATION_TYPE:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_103

    .line 2373
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_144

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x2000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_144

    .line 2374
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 2376
    :cond_103
    iget-object v4, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->PACKAGE:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_115

    .line 2377
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_144

    const/4 v0, 0x1

    goto/16 :goto_13

    .line 2378
    :cond_115
    iget-object v0, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->TYPE_USE:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v4, :cond_149

    .line 2379
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_141

    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_141

    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_144

    .line 2381
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_144

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2382
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0x9

    if-eq v0, v4, :cond_144

    .line 2383
    :cond_141
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 2350
    :cond_144
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_29

    .line 2386
    :cond_149
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 2388
    :cond_14c
    const/4 v0, 0x0

    goto/16 :goto_13
.end method

.method cannotOverride(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;
    .registers 9

    const-wide/16 v4, 0x200

    const-wide/16 v2, 0x0

    .line 1320
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 1321
    const-string v0, "cant.override"

    .line 1326
    :goto_11
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0

    .line 1322
    :cond_2f
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3d

    .line 1323
    const-string v0, "cant.implement"

    goto :goto_11

    .line 1325
    :cond_3d
    const-string v0, "clashes.with"

    goto :goto_11
.end method

.method public castWarner(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Warner;
    .registers 10

    .line 2793
    new-instance v0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;

    const-string v3, "unchecked.cast.to.type"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Check$ConversionWarner;-><init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    return-object v0
.end method

.method checkAllDefined(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 11

    const-wide/16 v6, 0x0

    .line 1774
    :try_start_2
    invoke-direct {p0, p2, p2}, Lcom/sun/tools/javac/comp/Check;->firstUndef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 1775
    if-eqz v0, :cond_35

    .line 1776
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1777
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v2, :cond_36

    .line 1778
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-nez v1, :cond_36

    .line 1780
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 1792
    :cond_35
    :goto_35
    return-void

    .line 1782
    :cond_36
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1783
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v2

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v6, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1784
    invoke-virtual {v5, v6, v0}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1785
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    .line 1786
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 1785
    const-string v3, "does.not.override.abstract"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-virtual {v0, p1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_62
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_2 .. :try_end_62} :catch_63

    goto :goto_35

    .line 1789
    :catch_63
    move-exception v0

    .line 1790
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;

    goto :goto_35
.end method

.method checkAnnotationResType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V
    .registers 7

    .line 2533
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_15

    const/16 v1, 0xb

    if-eq v0, v1, :cond_b

    .line 2544
    :cond_a
    :goto_a
    return-void

    .line 2539
    :cond_b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->checkAnnotationResType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_a

    .line 2535
    :cond_15
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 2536
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclicElementsInternal(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto :goto_a
.end method

.method public checkCanonical(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 8

    .line 2743
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Check;->isCanonical(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2744
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    .line 2745
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 2744
    const-string v3, "import.requires.canonical"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2746
    :cond_1b
    return-void
.end method

.method checkCastable(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 498
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_11

    move-object v0, p2

    .line 499
    check-cast v0, Lcom/sun/tools/javac/code/Type$ForAll;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Check;->castWarner(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Warner;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/sun/tools/javac/comp/Check;->instantiatePoly(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;

    .line 504
    :cond_10
    :goto_10
    return-object p3

    .line 501
    :cond_11
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Check;->castWarner(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Warner;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 504
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 505
    const-string v1, "inconvertible.types"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 504
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->typeError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p3

    goto :goto_10
.end method

.method checkClassBounds(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 2199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/comp/Check;->checkClassBounds(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/util/Map;Lcom/sun/tools/javac/code/Type;)V

    .line 2200
    return-void
.end method

.method checkClassBounds(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/util/Map;Lcom/sun/tools/javac/code/Type;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    .line 2209
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2225
    :cond_6
    :goto_6
    return-void

    .line 2210
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    :goto_e
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2211
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2212
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2213
    if-eqz v1, :cond_4f

    .line 2214
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2215
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2216
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v1, v3}, Lcom/sun/tools/javac/code/Types;->containsTypeEquivalent(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 2217
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2218
    invoke-static {v1}, Lcom/sun/tools/javac/code/Type;->toString(Lcom/sun/tools/javac/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 2219
    invoke-static {v3}, Lcom/sun/tools/javac/code/Type;->toString(Lcom/sun/tools/javac/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 2217
    const-string v6, "cant.inherit.diff.arg"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v1, v7, v5

    const/4 v1, 0x2

    aput-object v3, v7, v1

    invoke-virtual {v4, p1, v6, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2221
    :cond_4f
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Check;->checkClassBounds(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/util/Map;Lcom/sun/tools/javac/code/Type;)V

    .line 2210
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_e

    .line 2223
    :cond_56
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2224
    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Check;->checkClassBounds(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/util/Map;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_6
.end method

.method checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    const/4 v4, 0x0

    .line 557
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2e

    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2e

    .line 558
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 559
    const-string v1, "type.req.class"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 560
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2a

    .line 561
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const-string v2, "type.parameter"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object p2

    .line 562
    :cond_2a
    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/comp/Check;->typeTagError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 564
    :cond_2e
    return-object p2
.end method

.method checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;
    .registers 8

    .line 573
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 574
    if-eqz p3, :cond_37

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 575
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 576
    :goto_11
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 577
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xf

    if-ne v0, v3, :cond_33

    .line 578
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 579
    const-string v2, "type.req.exact"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 578
    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/Check;->typeTagError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 584
    :goto_32
    return-object v0

    .line 581
    :cond_33
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_11

    :cond_37
    move-object v0, v2

    .line 584
    goto :goto_32
.end method

.method checkCommonOverriderIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)Z
    .registers 16

    .line 1692
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1693
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p3, p1}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 1694
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p3, p2}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1695
    invoke-direct {p0, p3, v0}, Lcom/sun/tools/javac/comp/Check;->closure(Lcom/sun/tools/javac/code/Type;Ljava/util/Map;)V

    .line 1696
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1697
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    :goto_34
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_1c

    .line 1698
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1699
    if-eq v1, p1, :cond_54

    if-eq v1, p2, :cond_54

    iget v5, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_54

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide v8, 0x80001000L  # 1.060999919E-314

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_59

    :cond_54
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_34

    .line 1700
    :cond_59
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5, p3, v1}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1701
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v6, v5, v2}, Lcom/sun/tools/javac/code/Types;->overrideEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v6

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v6, v5, v3}, Lcom/sun/tools/javac/code/Types;->overrideEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 1702
    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v6, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v6, :cond_77

    .line 1703
    const/4 v0, 0x1

    .line 1721
    :goto_76
    return v0

    .line 1705
    :cond_77
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1706
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 1707
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 1708
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v8

    .line 1709
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v9

    .line 1710
    iget-object v10, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v11

    invoke-virtual {v10, v11, v7, v1}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1711
    iget-object v10, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v10, v5, v7, v6}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1712
    iget v6, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_c4

    iget v6, v5, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_c4

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    sget-object v7, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    .line 1714
    invoke-virtual {v6, v1, v8, v7}, Lcom/sun/tools/javac/code/Types;->covariantReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v1

    if-eqz v1, :cond_c4

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    sget-object v6, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    .line 1715
    invoke-virtual {v1, v5, v9, v6}, Lcom/sun/tools/javac/code/Types;->covariantReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v1

    if-eqz v1, :cond_c4

    const/4 v1, 0x1

    .line 1716
    :goto_c0
    if-eqz v1, :cond_54

    .line 1717
    const/4 v0, 0x1

    goto :goto_76

    .line 1715
    :cond_c4
    const/4 v1, 0x0

    goto :goto_c0

    .line 1721
    :cond_c6
    const/4 v0, 0x0

    goto :goto_76
.end method

.method public checkCompatibleAbstracts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 5

    .line 1589
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1590
    invoke-virtual {v0, p2, p3}, Lcom/sun/tools/javac/code/Types;->makeCompoundType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1589
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Check;->checkCompatibleAbstracts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method

.method public checkCompatibleAbstracts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 6

    .line 1597
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/comp/Check;->firstIncompatibility(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public checkCompatibleConcretes(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V
    .registers 19

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    .line 1534
    iget v2, v6, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_11

    .line 1537
    :cond_10
    return-void

    :cond_11
    move-object v5, v6

    :goto_12
    iget-object v2, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1539
    iget-object v2, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v9, v2

    .line 1540
    :goto_25
    if-eqz v9, :cond_116

    .line 1542
    iget-object v3, v9, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1543
    iget v2, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5f

    .line 1544
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v10

    const-wide v12, 0x80001008L  # 1.060999923E-314

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-nez v2, :cond_5f

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1545
    invoke-virtual {v3, v2, v4}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v2

    if-eqz v2, :cond_5f

    move-object v2, v3

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1546
    const/4 v8, 0x1

    invoke-virtual {v2, v4, v7, v8}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    if-eq v2, v3, :cond_63

    .line 1543
    :cond_5f
    iget-object v2, v9, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v9, v2

    goto :goto_25

    .line 1550
    :cond_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v5, v3}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v10

    .line 1551
    invoke-virtual {v10}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v11

    .line 1552
    iget-object v2, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v10, v2, :cond_5f

    move-object v8, v6

    .line 1555
    :goto_78
    iget v2, v8, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_5f

    .line 1557
    iget-object v2, v8, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    iget-object v4, v3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    move-object v7, v2

    .line 1558
    :goto_8b
    iget-object v2, v7, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_10b

    .line 1560
    iget-object v4, v7, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1561
    if-eq v4, v3, :cond_d5

    iget v2, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v12, 0x10

    if-ne v2, v12, :cond_d5

    .line 1563
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v12

    const-wide v14, 0x80001008L  # 1.060999923E-314

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_d5

    iget-object v2, v4, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1564
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v2

    if-ne v2, v11, :cond_d5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1565
    invoke-virtual {v4, v2, v12}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v2

    if-eqz v2, :cond_d5

    move-object v2, v4

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1566
    const/4 v14, 0x1

    invoke-virtual {v2, v12, v13, v14}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    if-eq v2, v4, :cond_db

    .line 1559
    :cond_d5
    :goto_d5
    invoke-virtual {v7}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    move-object v7, v2

    goto :goto_8b

    .line 1570
    :cond_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v8, v4}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 1571
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v12, v10, v2}, Lcom/sun/tools/javac/code/Types;->overrideEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v12, "concrete.inheritance.conflict"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    aput-object v4, v13, v14

    const/4 v4, 0x3

    aput-object v8, v13, v4

    const/4 v4, 0x4

    aput-object v6, v13, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12, v13}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d5

    .line 1558
    :cond_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v8}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_78

    .line 1540
    :cond_116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_12
.end method

.method checkCompatibleSupertypes(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V
    .registers 9

    .line 2063
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2064
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2065
    iget v2, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6b

    iget-object v2, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2066
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6b

    .line 2067
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    :goto_26
    move-object v3, v2

    .line 2068
    :goto_27
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2069
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->allowGenerics:Z

    if-eqz v0, :cond_4e

    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2070
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sun/tools/javac/comp/Check;->checkCompatibleAbstracts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 2077
    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    move-object v4, v2

    .line 2072
    :goto_4f
    if-eq v4, v3, :cond_63

    .line 2073
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sun/tools/javac/comp/Check;->checkCompatibleAbstracts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2072
    iget-object v0, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v0

    goto :goto_4f

    .line 2068
    :cond_63
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v0

    goto :goto_27

    .line 2076
    :cond_67
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->checkCompatibleConcretes(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_4d

    :cond_6b
    move-object v2, v0

    goto :goto_26
.end method

.method checkConflicts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 12

    .line 2080
    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    :goto_2
    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_a8

    .line 2081
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    :goto_12
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v3

    if-ne v2, v3, :cond_af

    .line 2083
    iget v2, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget-object v3, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v3, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v2, v3, :cond_a9

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2084
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_a9

    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eq p2, v2, :cond_a9

    .line 2086
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    iget-object v4, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x1000

    and-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a9

    .line 2087
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a9

    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a9

    .line 2088
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x80000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a9

    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x80000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a9

    .line 2089
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_a5

    iget-object p2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    :cond_a5
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->syntheticError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2094
    :cond_a8
    return-void

    .line 2081
    :cond_a9
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    goto/16 :goto_12

    .line 2080
    :cond_af
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_2
.end method

.method checkCyclicConstructors(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 10

    const/4 v2, 0x0

    .line 2554
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2557
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_9
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2558
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->firstConstructorCall(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v4

    .line 2559
    if-nez v4, :cond_1d

    .line 2557
    :goto_19
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_9

    .line 2560
    :cond_1d
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 2561
    iget-object v5, v4, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v5}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v6, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-ne v5, v6, :cond_39

    .line 2562
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v4}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 2564
    :cond_39
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-wide v4, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    const-wide/32 v6, 0x40000000

    or-long/2addr v4, v6

    iput-wide v4, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    goto :goto_19

    .line 2570
    :cond_44
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lcom/sun/tools/javac/code/Symbol;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Symbol;

    .line 2571
    array-length v4, v0

    move v1, v2

    :goto_52
    if-ge v1, v4, :cond_5c

    aget-object v2, v0, v1

    .line 2572
    invoke-direct {p0, p1, v2, v3}, Lcom/sun/tools/javac/comp/Check;->checkCyclicConstructor(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol;Ljava/util/Map;)V

    .line 2571
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 2574
    :cond_5c
    return-void
.end method

.method checkDeprecated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 10

    const-wide/32 v4, 0x20000

    const-wide/16 v2, 0x0

    .line 2464
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    .line 2465
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 2466
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    if-eq v0, v1, :cond_2b

    .line 2467
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    new-instance v1, Lcom/sun/tools/javac/comp/Check$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/sun/tools/javac/comp/Check$3;-><init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/DeferredLintHandler;->report(Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;)V

    .line 2474
    :cond_2b
    return-void
.end method

.method checkDeprecatedAnnotation(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 7

    .line 2453
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->allowAnnotations:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEP_ANN:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 2454
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2455
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->deprecatedType:Lcom/sun/tools/javac/code/Type;

    .line 2456
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->deprecatedType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2457
    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Symbol;->attribute(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 2458
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEP_ANN:Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v2, "missing.deprecated.annotation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2461
    :cond_3e
    return-void
.end method

.method checkDiamond(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 680
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->isDiamond(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 681
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 682
    :cond_f
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v5}, Lcom/sun/tools/javac/comp/Check;->checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 700
    :cond_19
    :goto_19
    return-object p2

    .line 683
    :cond_1a
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_44

    .line 684
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 686
    const-string v3, "diamond.and.anon.class"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v2

    .line 684
    const-string v3, "cant.apply.diamond.1"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_19

    .line 688
    :cond_44
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 689
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 691
    const-string v3, "diamond.non.generic"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v2

    .line 689
    const-string v3, "cant.apply.diamond.1"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_19

    .line 693
    :cond_78
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    .line 694
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 695
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 697
    const-string v3, "diamond.and.explicit.params"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v2

    .line 695
    const-string v3, "cant.apply.diamond.1"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_19
.end method

.method checkDisjoint(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z
    .registers 16

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 666
    and-long v2, p2, p4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    and-long v2, p2, p6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    .line 667
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    .line 669
    and-long v4, p2, p4

    invoke-static {v4, v5}, Lcom/sun/tools/javac/tree/TreeInfo;->firstFlag(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sun/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v3

    .line 670
    and-long v4, p2, p6

    invoke-static {v4, v5}, Lcom/sun/tools/javac/tree/TreeInfo;->firstFlag(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sun/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v4

    .line 667
    const-string v5, "illegal.combination.of.modifiers"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v0

    aput-object v4, v6, v1

    invoke-virtual {v2, p1, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    :goto_32
    return v0

    :cond_33
    move v0, v1

    goto :goto_32
.end method

.method checkDivZero(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V
    .registers 8

    .line 2629
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->DIVZERO:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 2630
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_45

    .line 2632
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_45

    .line 2633
    check-cast p2, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    iget v0, p2, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    .line 2634
    const/16 v1, 0x6c

    if-eq v0, v1, :cond_39

    const/16 v1, 0x70

    if-eq v0, v1, :cond_39

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_39

    const/16 v1, 0x71

    if-ne v0, v1, :cond_45

    .line 2636
    :cond_39
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->DIVZERO:Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v2, "div.zero"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2639
    :cond_45
    return-void
.end method

.method checkEmptyIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 7

    .line 2645
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_29

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->EMPTY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2646
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->EMPTY:Lcom/sun/tools/javac/code/Lint$LintCategory;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "empty.if"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2647
    :cond_29
    return-void
.end method

.method checkFlags(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JLcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)J
    .registers 20

    .line 866
    const-wide/16 v2, 0x0

    .line 867
    move-object/from16 v0, p4

    iget v4, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_bd

    const/4 v5, 0x4

    if-eq v4, v5, :cond_90

    const/16 v5, 0x10

    if-ne v4, v5, :cond_8a

    .line 877
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_71

    .line 878
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v4, v4, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v6, 0x4000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6e

    .line 882
    const-wide/16 v2, 0x2

    .line 883
    const-wide/16 v10, 0x2

    .line 892
    :goto_2d
    const-wide/16 v4, 0x400

    or-long v6, p2, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_88

    .line 893
    const-wide/16 v4, 0x800

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v6, v6, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v12, v2

    .line 934
    :goto_43
    const-wide/16 v2, 0xfff

    and-long v2, v2, p2

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v10

    and-long/2addr v2, v4

    .line 935
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_18e

    .line 936
    const-wide/16 v4, 0x200

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_17a

    .line 937
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "intf.not.allowed.here"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    const-wide/16 v2, 0x200

    or-long/2addr v2, v10

    .line 974
    :goto_67
    const-wide/16 v4, -0x1000

    or-long/2addr v2, v4

    and-long v2, v2, p2

    or-long/2addr v2, v12

    return-wide v2

    .line 885
    :cond_6e
    const-wide/16 v10, 0x7

    goto :goto_2d

    .line 886
    :cond_71
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v4, v4, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v6, 0x200

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_85

    .line 887
    const-wide/16 v10, 0x401

    const-wide/16 v2, 0x401

    goto :goto_2d

    .line 889
    :cond_85
    const-wide/16 v10, 0xd3f

    goto :goto_2d

    :cond_88
    move-wide v12, v2

    .line 892
    goto :goto_43

    .line 932
    :cond_8a
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 869
    :cond_90
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a2

    .line 870
    const-wide/16 v2, 0x0

    const-wide v10, 0x200000010L

    move-wide v12, v2

    goto :goto_43

    .line 871
    :cond_a2
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v2, v2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b7

    .line 872
    const-wide/16 v2, 0x19

    const-wide/16 v10, 0x19

    move-wide v12, v2

    goto :goto_43

    .line 874
    :cond_b7
    const-wide/16 v2, 0x0

    const-wide/16 v10, 0x40df

    move-wide v12, v2

    goto :goto_43

    .line 896
    :cond_bd
    invoke-virtual/range {p4 .. p4}, Lcom/sun/tools/javac/code/Symbol;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 897
    const-wide/16 v4, 0x5c10

    .line 898
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v6}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 901
    const-wide/16 v2, 0x5c10

    const-wide/16 v4, 0x8

    or-long/2addr v4, v2

    .line 903
    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x10

    or-long/2addr v2, v6

    .line 905
    :cond_d9
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v6, v6, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_fc

    const-wide/16 v6, 0x4000

    and-long v6, v6, p2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_fc

    .line 907
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v7, "enums.must.be.static"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    :cond_fc
    :goto_fc
    const-wide/16 v6, 0x200

    and-long v6, v6, p2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_109

    const-wide/16 v6, 0x400

    or-long/2addr v2, v6

    .line 923
    :cond_109
    const-wide/16 v6, 0x4000

    and-long v6, v6, p2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_11d

    .line 925
    const-wide/16 v6, -0x411

    and-long/2addr v4, v6

    .line 926
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Check;->implicitEnumFinalFlag(Lcom/sun/tools/javac/tree/JCTree;)J

    move-result-wide v6

    or-long/2addr v2, v6

    .line 923
    :cond_11d
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v6, v6, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 930
    const-wide/16 v8, 0x800

    and-long/2addr v6, v8

    or-long/2addr v2, v6

    move-wide v12, v2

    move-wide v10, v4

    goto/16 :goto_43

    .line 908
    :cond_12b
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v4, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_177

    .line 909
    const-wide/16 v4, 0x5e17

    .line 910
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v6, v6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_150

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v6, v6, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_162

    .line 912
    :cond_150
    const-wide/16 v4, 0x5e17

    const-wide/16 v6, 0x8

    or-long/2addr v4, v6

    .line 916
    :cond_155
    :goto_155
    const-wide/16 v6, 0x4200

    and-long v6, v6, p2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_fc

    const-wide/16 v2, 0x8

    goto :goto_fc

    .line 913
    :cond_162
    const-wide/16 v6, 0x4000

    and-long v6, v6, p2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_155

    .line 914
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v7, "enums.must.be.static"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_155

    .line 918
    :cond_177
    const-wide/16 v4, 0x7e11

    goto :goto_fc

    .line 941
    :cond_17a
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    .line 942
    invoke-static {v2, v3}, Lcom/sun/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v2

    .line 941
    const-string v3, "mod.not.allowed.here"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, p1, v3, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v2, v10

    goto/16 :goto_67

    .line 945
    :cond_18e
    move-object/from16 v0, p4

    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a3

    .line 948
    const-wide/16 v6, 0x400

    const-wide/16 v8, 0xa

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sun/tools/javac/comp/Check;->checkDisjoint(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v2

    if-eqz v2, :cond_1f0

    .line 945
    :cond_1a3
    const-wide/16 v6, 0x600

    const-wide/16 v8, 0x130

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sun/tools/javac/comp/Check;->checkDisjoint(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v2

    if-eqz v2, :cond_1f0

    .line 956
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x6

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sun/tools/javac/comp/Check;->checkDisjoint(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v2

    if-eqz v2, :cond_1f0

    .line 960
    const-wide/16 v6, 0x2

    const-wide/16 v8, 0x5

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sun/tools/javac/comp/Check;->checkDisjoint(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v2

    if-eqz v2, :cond_1f0

    .line 964
    const-wide/16 v6, 0x10

    const-wide/16 v8, 0x40

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sun/tools/javac/comp/Check;->checkDisjoint(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v2

    if-eqz v2, :cond_1f0

    move-object/from16 v0, p4

    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f0

    .line 969
    const-wide/16 v6, 0x500

    const-wide/16 v8, 0x800

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sun/tools/javac/comp/Check;->checkDisjoint(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-wide v2, v10

    goto/16 :goto_67

    :cond_1f0
    move-wide v2, v10

    goto/16 :goto_67
.end method

.method checkHideClashes(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2141
    new-instance v0, Lcom/sun/tools/javac/comp/Check$ClashFilter;

    invoke-direct {v0, p0, p2}, Lcom/sun/tools/javac/comp/Check$ClashFilter;-><init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/code/Type;)V

    .line 2143
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2, v7}, Lcom/sun/tools/javac/code/Types;->membersClosure(Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Scope$CompoundScope;

    move-result-object v1

    iget-object v2, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/code/Scope$CompoundScope;->getElementsByName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 2146
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, p2, v0}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 2147
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p3, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2148
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    .line 2150
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 2151
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 2148
    const-string v4, "name.clash.same.erasure.no.hide"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v6

    aput-object v2, v5, v7

    const/4 v2, 0x2

    aput-object v0, v5, v2

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v1, p1, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2155
    :cond_61
    return-void
.end method

.method checkImplementations(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 3

    .line 2024
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->checkImplementations(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 2025
    return-void
.end method

.method checkImplementations(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 15

    .line 2031
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2032
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_b
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2033
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2034
    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Check;->allowGenerics:Z

    if-nez v2, :cond_1f

    if-eq v3, v0, :cond_76

    :cond_1f
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_76

    .line 2035
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v2, v0

    :goto_33
    if-eqz v2, :cond_76

    .line 2036
    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_72

    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2037
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x408

    and-long/2addr v4, v6

    const-wide/16 v6, 0x400

    cmp-long v0, v4, v6

    if-nez v0, :cond_72

    .line 2038
    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2039
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v4

    .line 2040
    if-eqz v4, :cond_72

    if-eq v4, v0, :cond_72

    iget-object v5, v4, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 2041
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    .line 2042
    const-wide/16 v8, 0x200

    and-long/2addr v6, v8

    const-wide/16 v8, 0x200

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v10

    and-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-nez v5, :cond_72

    .line 2049
    invoke-virtual {p0, p1, v4, v0, v3}, Lcom/sun/tools/javac/comp/Check;->checkOverride(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 2035
    :cond_72
    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v2, v0

    goto :goto_33

    .line 2032
    :cond_76
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_b

    .line 2055
    :cond_7a
    return-void
.end method

.method checkNonCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type$TypeVar;)V
    .registers 4

    .line 1947
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclic1(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    .line 1948
    return-void
.end method

.method checkNonCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 1942
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclicInternal(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Z

    .line 1943
    return-void
.end method

.method checkNonCyclicDecl(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 8

    .line 1829
    new-instance v0, Lcom/sun/tools/javac/comp/Check$CycleChecker;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Check$CycleChecker;-><init>(Lcom/sun/tools/javac/comp/Check;)V

    .line 1830
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1831
    iget-boolean v1, v0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->errorFound:Z

    if-nez v1, :cond_1a

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->partialCheck:Z

    if-nez v0, :cond_1a

    .line 1832
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v4, 0x40000000

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 1834
    :cond_1a
    return-void
.end method

.method checkNonCyclicElements(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 14

    const-wide v10, 0x800000000L

    const-wide/32 v8, 0x8000000

    const-wide/16 v6, 0x0

    const-wide/32 v4, -0x8000001

    .line 2496
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-nez v0, :cond_19

    .line 2508
    :goto_18
    return-void

    .line 2497
    :cond_19
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v6

    if-nez v0, :cond_64

    const/4 v0, 0x1

    :goto_23
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 2499
    :try_start_26
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    or-long/2addr v2, v8

    iput-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 2500
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 2501
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 2502
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 2503
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/comp/Check;->checkAnnotationResType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V
    :try_end_53
    .catchall {:try_start_26 .. :try_end_53} :catchall_54

    goto :goto_33

    .line 2506
    :catchall_54
    move-exception v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 2507
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    or-long/2addr v2, v10

    iput-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 2508
    throw v0

    .line 2497
    :cond_64
    const/4 v0, 0x0

    goto :goto_23

    .line 2506
    :cond_66
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    and-long/2addr v2, v4

    iput-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 2507
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    or-long/2addr v2, v10

    iput-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    goto :goto_18
.end method

.method checkNonCyclicElementsInternal(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 13

    const-wide/32 v8, 0x8000000

    const-wide/16 v2, 0x0

    const-wide/32 v6, -0x8000001

    const-wide v4, 0x800000000L

    .line 2512
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 2529
    :goto_14
    return-void

    .line 2514
    :cond_15
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 2515
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "cyclic.annotation.element"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 2519
    :cond_27
    :try_start_27
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    or-long/2addr v0, v8

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    .line 2520
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    :goto_33
    if-eqz v1, :cond_59

    .line 2521
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2522
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_41

    .line 2520
    :goto_3d
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    goto :goto_33

    .line 2524
    :cond_41
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->checkAnnotationResType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_4d

    goto :goto_3d

    .line 2527
    :catchall_4d
    move-exception v0

    iget-wide v2, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    and-long/2addr v2, v6

    iput-wide v2, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    .line 2528
    iget-wide v2, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    or-long/2addr v2, v4

    iput-wide v2, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    .line 2529
    throw v0

    .line 2527
    :cond_59
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    and-long/2addr v0, v6

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    .line 2528
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    or-long/2addr v0, v4

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    goto :goto_14
.end method

.method checkNonVoid(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 544
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_16

    .line 545
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "void.not.allowed.here"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 548
    :cond_16
    return-object p2
.end method

.method checkNotRepeated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Type;",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2231
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2232
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "repeated.interface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2236
    :goto_10
    return-void

    .line 2234
    :cond_11
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method checkNullOrRefType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 643
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_29

    const/16 v1, 0xb

    if-eq v0, v1, :cond_29

    const/16 v1, 0xe

    if-eq v0, v1, :cond_29

    const/16 v1, 0xf

    if-eq v0, v1, :cond_29

    const/16 v1, 0x11

    if-eq v0, v1, :cond_29

    const/16 v1, 0x13

    if-eq v0, v1, :cond_29

    .line 652
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 653
    const-string v1, "type.req.ref"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 652
    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/comp/Check;->typeTagError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    :cond_29
    return-object p2
.end method

.method checkOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;ILcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)I
    .registers 11

    .line 2612
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v1, 0x115

    if-ne v0, v1, :cond_1f

    .line 2613
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->treeinfo:Lcom/sun/tools/javac/tree/TreeInfo;

    .line 2615
    invoke-virtual {v1, p3}, Lcom/sun/tools/javac/tree/TreeInfo;->operatorName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 2613
    const-string v2, "operator.cant.be.applied.1"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p4, v3, v1

    const/4 v1, 0x2

    aput-object p5, v3, v1

    invoke-virtual {v0, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2618
    :cond_1f
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    return v0
.end method

.method checkOverride(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 10

    const/4 v6, 0x0

    .line 1730
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1731
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->finalize:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1732
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->enumFinalFinalize:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2, v1, v0, v2, v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1733
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "enum.no.finalize"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1745
    :cond_37
    return-void

    .line 1736
    :cond_38
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v2, v1

    :goto_3b
    iget v1, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_37

    .line 1738
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v2, v1, :cond_48

    .line 1739
    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/sun/tools/javac/comp/Check;->checkOverride(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 1741
    :cond_48
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 1742
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sun/tools/javac/comp/Check;->checkOverride(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    goto :goto_52

    .line 1737
    :cond_62
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    move-object v2, v1

    goto :goto_3b
.end method

.method checkOverride(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 16

    .line 1387
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x80001000L  # 1.060999919E-314

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 1499
    :cond_1d
    :goto_1d
    return-void

    .line 1392
    :cond_1e
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4e

    .line 1393
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4e

    .line 1394
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    .line 1395
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->cannotOverride(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v2

    .line 1394
    const-string v3, "override.static"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 1401
    :cond_4e
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_75

    .line 1402
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_99

    .line 1403
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_99

    .line 1404
    :cond_75
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    .line 1405
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->cannotOverride(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v2

    .line 1406
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x18

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/sun/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v3

    .line 1404
    const-string v4, "override.meth"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v0, v1, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 1410
    :cond_99
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 1416
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f9

    .line 1417
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/tools/javac/comp/Check;->protection(J)I

    move-result v0

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/tools/javac/comp/Check;->protection(J)I

    move-result v1

    if-le v0, v1, :cond_f9

    .line 1418
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    .line 1419
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->cannotOverride(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v3

    .line 1420
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_ed

    .line 1421
    sget-object v0, Lcom/sun/tools/javac/code/Flags$Flag;->PACKAGE:Lcom/sun/tools/javac/code/Flags$Flag;

    .line 1418
    :goto_dd
    const-string v4, "override.weaker.access"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 1422
    :cond_ed
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/sun/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_dd

    .line 1426
    :cond_f9
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1427
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, p3}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1432
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1433
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1434
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 1435
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v2}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1437
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->overrideWarner:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v6}, Lcom/sun/tools/javac/util/Warner;->clear()V

    .line 1438
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Check;->overrideWarner:Lcom/sun/tools/javac/util/Warner;

    .line 1439
    invoke-virtual {v6, v0, v1, v5, v7}, Lcom/sun/tools/javac/code/Types;->returnTypeSubstitutable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v6

    .line 1440
    if-nez v6, :cond_1a1

    .line 1441
    iget-boolean v6, p0, Lcom/sun/tools/javac/comp/Check;->allowCovariantReturns:Z

    if-nez v6, :cond_184

    iget-object v6, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v6, p4, :cond_184

    iget-object v6, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v7, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1443
    invoke-virtual {v6, v7, v8}, Lcom/sun/tools/javac/code/Symbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v6

    if-eqz v6, :cond_184

    .line 1461
    :cond_142
    :goto_142
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v4, v1, v3, v2}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1462
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Check;->unhandled(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1463
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Check;->unhandled(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1464
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c6

    .line 1465
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    .line 1467
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->cannotOverride(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 1465
    const-string v4, "override.meth.doesnt.throw"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 1446
    :cond_184
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    .line 1448
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->cannotOverride(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v2

    .line 1446
    const-string v3, "override.incompatible.ret"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v4, v6, v2

    const/4 v2, 0x2

    aput-object v5, v6, v2

    invoke-virtual {v0, v1, v3, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 1452
    :cond_1a1
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->overrideWarner:Lcom/sun/tools/javac/util/Warner;

    sget-object v7, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/util/Warner;->hasNonSilentLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v6

    if-eqz v6, :cond_142

    .line 1453
    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    .line 1455
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->uncheckedOverrides(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v7

    .line 1453
    const-string v8, "override.unchecked.ret"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v4, v9, v7

    const/4 v4, 0x2

    aput-object v5, v9, v4

    invoke-virtual {p0, v6, v8, v9}, Lcom/sun/tools/javac/comp/Check;->warnUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_142

    .line 1471
    :cond_1c6
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e6

    .line 1472
    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    .line 1474
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->cannotOverride(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 1472
    const-string v3, "override.unchecked.thrown"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {p0, v1, v3, v4}, Lcom/sun/tools/javac/comp/Check;->warnUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 1480
    :cond_1e6
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v2

    xor-long/2addr v0, v2

    const-wide v2, 0x400000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22a

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->OVERRIDES:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 1481
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_22a

    .line 1482
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    .line 1483
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide v6, 0x400000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_25e

    .line 1484
    const-string v0, "override.varargs.missing"

    .line 1486
    :goto_21d
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->varargsOverrides(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v3

    .line 1482
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v0, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1480
    :cond_22a
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24f

    .line 1491
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    .line 1492
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->uncheckedOverrides(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v2

    .line 1491
    const-string v3, "override.bridge"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1496
    :cond_24f
    invoke-direct {p0, p3, p4}, Lcom/sun/tools/javac/comp/Check;->isDeprecatedOverrideIgnorable(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1497
    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->checkDeprecated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    goto/16 :goto_1d

    .line 1485
    :cond_25e
    const-string v0, "override.varargs.extra"

    goto :goto_21d
.end method

.method checkOverride(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 11

    .line 1748
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1749
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p4, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v1, v0

    .line 1750
    :goto_d
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_38

    .line 1751
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    const/4 v3, 0x0

    invoke-virtual {p4, v0, p3, v2, v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1752
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_32

    .line 1753
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0, p1, p4, v0, p3}, Lcom/sun/tools/javac/comp/Check;->checkOverride(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 1756
    :cond_32
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    .line 1758
    :cond_38
    return-void
.end method

.method checkOverrideClashes(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 13

    const/4 v8, 0x0

    .line 2104
    new-instance v2, Lcom/sun/tools/javac/comp/Check$ClashFilter;

    invoke-direct {v2, p0, p2}, Lcom/sun/tools/javac/comp/Check$ClashFilter;-><init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/code/Type;)V

    .line 2107
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2, v8}, Lcom/sun/tools/javac/code/Types;->membersClosure(Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Scope$CompoundScope;

    move-result-object v0

    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Scope$CompoundScope;->getElementsByName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 2108
    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p3, v0, v1, v4, v8}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2110
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2, v8}, Lcom/sun/tools/javac/code/Types;->membersClosure(Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Scope$CompoundScope;

    move-result-object v1

    iget-object v4, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v4, v2}, Lcom/sun/tools/javac/code/Scope$CompoundScope;->getElementsByName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    .line 2111
    if-eq v1, v0, :cond_3c

    .line 2114
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v6, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v7, p2, v1}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v5

    if-nez v5, :cond_3c

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 2115
    invoke-virtual {v1, v5}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 2116
    iget-wide v2, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    const-wide v4, 0x80000000000L

    or-long/2addr v2, v4

    iput-wide v2, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    .line 2117
    if-ne v0, p3, :cond_a0

    .line 2118
    const-string v2, "name.clash.same.erasure.no.override"

    .line 2120
    :goto_7a
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    .line 2122
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 2123
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v5

    .line 2124
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v6

    .line 2120
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v4, 0x2

    aput-object v1, v7, v4

    const/4 v1, 0x3

    aput-object v5, v7, v1

    const/4 v1, 0x4

    aput-object v0, v7, v1

    const/4 v0, 0x5

    aput-object v6, v7, v0

    invoke-virtual {v3, p1, v2, v7}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2129
    :cond_9f
    return-void

    .line 2119
    :cond_a0
    const-string v2, "name.clash.same.erasure.no.override.1"

    goto :goto_7a
.end method

.method checkRefType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 610
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_25

    const/16 v1, 0xb

    if-eq v0, v1, :cond_25

    const/16 v1, 0xe

    if-eq v0, v1, :cond_25

    const/16 v1, 0xf

    if-eq v0, v1, :cond_25

    const/16 v1, 0x13

    if-eq v0, v1, :cond_25

    .line 618
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 619
    const-string v1, "type.req.ref"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 618
    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/comp/Check;->typeTagError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    :cond_25
    return-object p2
.end method

.method checkRefTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
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

    .line 630
    move-object v1, p2

    .line 631
    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 632
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/comp/Check;->checkRefType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 633
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 631
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 635
    :cond_1f
    return-object p2
.end method

.method checkReifiableReferenceType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    const/4 v2, 0x0

    .line 592
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_22

    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_22

    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_22

    .line 593
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 594
    const-string v1, "type.req.class.array"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 593
    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/comp/Check;->typeTagError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 600
    :cond_21
    :goto_21
    return-object p2

    .line 596
    :cond_22
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 597
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "illegal.generic.type.for.instof"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_21
.end method

.method checkSunAPI(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 7

    .line 2477
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x4000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 2478
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    new-instance v1, Lcom/sun/tools/javac/comp/Check$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sun/tools/javac/comp/Check$4;-><init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/DeferredLintHandler;->report(Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;)V

    .line 2487
    :cond_1a
    return-void
.end method

.method checkTransparentClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 7

    .line 362
    iget-object v0, p3, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_40

    .line 363
    iget-object v0, p3, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 364
    :goto_c
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_40

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v1, v2, :cond_40

    .line 366
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_41

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_41

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_41

    .line 369
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->duplicateError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 374
    :cond_40
    return-void

    .line 365
    :cond_41
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_c
.end method

.method checkTransparentVar(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 7

    .line 341
    iget-object v0, p3, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_36

    .line 342
    iget-object v0, p3, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 343
    :goto_c
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v1, v2, :cond_36

    .line 345
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_37

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_37

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_37

    .line 348
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->duplicateError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 353
    :cond_36
    return-void

    .line 344
    :cond_37
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_c
.end method

.method checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 430
    const-string v0, "incompatible.types"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;
    .registers 10

    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 434
    iget v0, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_b

    move-object p2, p3

    .line 452
    :cond_a
    :goto_a
    return-object p2

    .line 436
    :cond_b
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1d

    move-object v0, p2

    .line 437
    check-cast v0, Lcom/sun/tools/javac/code/Type$ForAll;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Check;->convertWarner(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Warner;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/sun/tools/javac/comp/Check;->instantiatePoly(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_a

    .line 438
    :cond_1d
    iget v0, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a

    .line 440
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Check;->convertWarner(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Warner;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 442
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v0, v4, :cond_46

    iget v0, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v0, v4, :cond_46

    .line 443
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "possible.loss.of.precision"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->typeError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_a

    .line 444
    :cond_46
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isSuperBound()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 445
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "assignment.from.super-bound"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_a

    .line 448
    :cond_5e
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 449
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "assignment.to.extends-bound"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_a

    .line 452
    :cond_76
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p4, v1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->typeError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_a
.end method

.method checkUnique(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)Z
    .registers 12

    .line 2655
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2656
    const/4 v0, 0x1

    .line 2677
    :goto_9
    return v0

    .line 2657
    :cond_a
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->any:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_16

    const/4 v0, 0x0

    goto :goto_9

    .line 2658
    :cond_16
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p3, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    :goto_1c
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-ne v1, p3, :cond_ba

    .line 2659
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eq p2, v1, :cond_b4

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2660
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x80000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_b4

    iget v1, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v1, v2, :cond_b4

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_b4

    iget v1, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_64

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2663
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 2664
    :cond_64
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x400000000L

    and-long/2addr v2, v4

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide v6, 0x400000000L

    and-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-eqz v1, :cond_85

    .line 2665
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Check;->varargsDuplicateError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2666
    const/4 v0, 0x1

    goto :goto_9

    .line 2667
    :cond_85
    iget v1, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_ac

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 2668
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Check;->duplicateErasureError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2669
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide v2, 0x80000000000L

    or-long/2addr v0, v2

    iput-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 2670
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 2672
    :cond_ac
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->duplicateError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2673
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 2658
    :cond_b4
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto/16 :goto_1c

    .line 2677
    :cond_ba
    const/4 v0, 0x1

    goto/16 :goto_9
.end method

.method checkUniqueClassName(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Z
    .registers 9

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 384
    invoke-virtual {p3, p2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    :goto_6
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-ne v2, p3, :cond_26

    .line 385
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v2, v4, :cond_21

    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    if-eq v2, v3, :cond_21

    .line 386
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->duplicateError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 387
    const/4 v0, 0x0

    .line 396
    :goto_20
    return v0

    .line 384
    :cond_21
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_6

    .line 390
    :cond_26
    iget-object v0, p3, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    :goto_28
    if-eqz v0, :cond_42

    .line 391
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v2, v4, :cond_3f

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v2, p2, :cond_3f

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    if-eq v2, v3, :cond_3f

    .line 392
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->duplicateError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    move v0, v1

    .line 393
    goto :goto_20

    .line 390
    :cond_3f
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_28

    :cond_42
    move v0, v1

    .line 396
    goto :goto_20
.end method

.method checkUniqueImport(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)Z
    .registers 5

    .line 2695
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Check;->checkUniqueImport(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Z)Z

    move-result v0

    return v0
.end method

.method checkUniqueStaticImport(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)Z
    .registers 5

    .line 2706
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Check;->checkUniqueImport(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Z)Z

    move-result v0

    return v0
.end method

.method public checkValidGenericType(Lcom/sun/tools/javac/code/Type;)Z
    .registers 3

    .line 768
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Check;->firstIncompatibleTypeArg(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method checkVararg(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    .line 749
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 750
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Check;->allowSimplifiedVarargs:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->trustMeType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 752
    invoke-virtual {p3, v1}, Lcom/sun/tools/javac/code/Symbol;->attribute(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 753
    invoke-direct {p0, p3}, Lcom/sun/tools/javac/comp/Check;->isTrustMeAllowedOnMethod(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 754
    :cond_24
    const-string v1, "unchecked.generic.array.creation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/sun/tools/javac/comp/Check;->warnUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    :cond_2f
    return-void
.end method

.method checkVarargsMethodDecl(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 705
    iget-object v5, p2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 706
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->allowSimplifiedVarargs:Z

    if-nez v0, :cond_a

    .line 735
    :cond_9
    :goto_9
    return-void

    .line 707
    :cond_a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->trustMeType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->attribute(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_59

    move v1, v2

    .line 708
    :goto_17
    const/4 v0, 0x0

    .line 709
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isVarArgs()Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 710
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v4, v0

    .line 712
    :goto_2f
    if-eqz v1, :cond_7b

    invoke-direct {p0, v5}, Lcom/sun/tools/javac/comp/Check;->isTrustMeAllowedOnMethod(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 713
    if-eqz v4, :cond_5b

    .line 714
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->trustMeType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 717
    const-string v6, "varargs.trustme.on.virtual.varargs"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {v4, v6, v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v4

    .line 714
    const-string v5, "varargs.invalid.trustme.anno"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v4, v6, v2

    invoke-virtual {v0, p2, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_59
    move v1, v3

    .line 707
    goto :goto_17

    .line 719
    :cond_5b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->trustMeType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 722
    const-string v6, "varargs.trustme.on.non.varargs.meth"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {v4, v6, v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v4

    .line 719
    const-string v5, "varargs.invalid.trustme.anno"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v4, v6, v2

    invoke-virtual {v0, p2, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 724
    :cond_7b
    if-eqz v1, :cond_a6

    if-eqz v4, :cond_a6

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 725
    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 726
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->trustMeType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 729
    const-string v5, "varargs.trustme.on.reifiable.varargs"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-virtual {v1, v5, v6}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    .line 726
    const-string v4, "varargs.redundant.trustme.anno"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v1, v5, v2

    invoke-virtual {p0, p2, v4, v5}, Lcom/sun/tools/javac/comp/Check;->warnUnsafeVararg(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 731
    :cond_a6
    if-nez v1, :cond_9

    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 732
    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 733
    iget-object v0, p2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v1, "unchecked.varargs.non.reifiable.type"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->warnUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_c7
    move-object v4, v0

    goto/16 :goto_2f
.end method

.method public completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    .line 256
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "cant.access"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->sym:Lcom/sun/tools/javac/code/Symbol;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    instance-of v0, p2, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->suppressAbortOnBadClassFile:Z

    if-eqz v0, :cond_23

    .line 259
    :cond_1e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    return-object v0

    .line 258
    :cond_23
    new-instance v0, Lcom/sun/tools/javac/util/Abort;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Abort;-><init>()V

    throw v0
.end method

.method public convertWarner(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Warner;
    .registers 10

    .line 2797
    new-instance v0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;

    const-string v3, "unchecked.assign"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Check$ConversionWarner;-><init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    return-object v0
.end method

.method diff(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
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

    .line 1233
    :goto_0
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1235
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/comp/Check;->excl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    .line 1234
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1236
    :cond_11
    return-object p1
.end method

.method duplicateErasureError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 8

    .line 2683
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2684
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "name.clash.same.erasure"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2686
    :cond_20
    return-void
.end method

.method duplicateError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 15

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 308
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_53

    .line 309
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 310
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_54

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 311
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isStaticOrInstanceInit()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 312
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v1

    .line 313
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v3

    .line 314
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    .line 312
    const-string v5, "already.defined.in.clinit"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object p2, v6, v8

    aput-object v2, v6, v9

    aput-object v3, v6, v10

    aput-object v4, v6, v11

    invoke-virtual {v0, p1, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    :cond_53
    :goto_53
    return-void

    .line 316
    :cond_54
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p2}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v1

    .line 317
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 316
    const-string v4, "already.defined"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object p2, v5, v8

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    invoke-virtual {v0, p1, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_53
.end method

.method earlyRefError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 7

    .line 302
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "cant.ref.before.ctor.called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method excl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
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

    .line 1211
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1217
    :cond_6
    :goto_6
    return-object p2

    .line 1214
    :cond_7
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->excl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1215
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v0, p1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object p2, v1

    goto :goto_6

    .line 1216
    :cond_1b
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eq v1, v0, :cond_6

    .line 1217
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p2

    goto :goto_6
.end method

.method incl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
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

    .line 1205
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->subset(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->excl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p2

    goto :goto_6
.end method

.method instantiatePoly(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$NoInstanceException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 460
    sget-object v0, Lcom/sun/tools/javac/comp/Infer;->anyPoly:Lcom/sun/tools/javac/code/Type;

    if-ne p3, v0, :cond_c

    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->complexInference:Z

    if-eqz v0, :cond_c

    .line 486
    :goto_b
    return-object p2

    .line 462
    :cond_c
    sget-object v0, Lcom/sun/tools/javac/comp/Infer;->anyPoly:Lcom/sun/tools/javac/code/Type;

    if-eq p3, v0, :cond_16

    iget v0, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_25

    .line 463
    :cond_16
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_ad

    iget-object v0, p2, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    .line 464
    :goto_20
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sun/tools/javac/comp/Check;->instantiatePoly(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_b

    .line 465
    :cond_25
    iget v0, p3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2d

    move-object p2, p3

    .line 466
    goto :goto_b

    .line 469
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->infer:Lcom/sun/tools/javac/comp/Infer;

    invoke-virtual {v0, p2, p3, p4}, Lcom/sun/tools/javac/comp/Infer;->instantiateExpr(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    :try_end_32
    .catch Lcom/sun/tools/javac/comp/Infer$NoInstanceException; {:try_start_2d .. :try_end_32} :catch_4f
    .catch Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException; {:try_start_2d .. :try_end_32} :catch_34

    move-result-object p2

    goto :goto_b

    .line 483
    :catch_34
    move-exception v0

    .line 484
    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;->getDiagnostic()Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "invalid.inferred.types"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v1, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_b

    .line 470
    :catch_4f
    move-exception v0

    move-object v1, v0

    .line 471
    iget-boolean v2, v1, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->isAmbiguous:Z

    const-string v0, ".1"

    if-eqz v2, :cond_83

    .line 472
    invoke-virtual {v1}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->getDiagnostic()Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    .line 473
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undetermined.type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    if-eqz v1, :cond_80

    :goto_69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, p1, v0, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto :goto_b

    .line 474
    :cond_80
    const-string v0, ""

    goto :goto_69

    .line 478
    :cond_83
    invoke-virtual {v1}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->getDiagnostic()Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    .line 479
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incompatible.types"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    if-eqz v1, :cond_aa

    :goto_95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 479
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/tools/javac/comp/Check;->typeError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_b

    .line 480
    :cond_aa
    const-string v0, ""

    goto :goto_95

    .line 463
    :cond_ad
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_20
.end method

.method public intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
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
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1242
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, p1

    move-object v2, v0

    .line 1243
    :goto_6
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1244
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Check;->subset(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Check;->incl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1243
    :cond_1e
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_6

    .line 1245
    :cond_22
    :goto_22
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1246
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/comp/Check;->subset(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Check;->incl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1245
    :cond_3a
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_22

    .line 1247
    :cond_3d
    return-object v2
.end method

.method intersects(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z
    .registers 5
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

    .line 1196
    :goto_0
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1197
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0, p1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    .line 1198
    :goto_1f
    return v0

    .line 1196
    :cond_20
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1198
    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method isHandled(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z
    .registers 4
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

    .line 1282
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Check;->isUnchecked(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->subset(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isOverrider(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2326
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move v0, v3

    .line 2339
    :goto_f
    return v0

    .line 2328
    :cond_10
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2329
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2330
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2331
    iget-object v5, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v1, v5, :cond_22

    .line 2333
    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    .line 2334
    iget-object v5, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v5}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    :goto_3e
    iget-object v5, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v5, :cond_22

    .line 2335
    iget-object v5, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol;->isStatic()Z

    move-result v5

    if-nez v5, :cond_56

    iget-object v5, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v5, v0, v6, v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v5

    if-eqz v5, :cond_56

    move v0, v2

    .line 2336
    goto :goto_f

    .line 2334
    :cond_56
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    goto :goto_3e

    :cond_5b
    move v0, v3

    .line 2339
    goto :goto_f
.end method

.method isTypeArgErroneous(Lcom/sun/tools/javac/code/Type;)Z
    .registers 3

    .line 833
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->isTypeArgErroneous:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isTypeVar(Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 514
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_18

    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check;->isTypeVar(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method isUnchecked(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z
    .registers 4

    .line 1253
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->kind:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errorType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1255
    invoke-virtual {p1, v0, v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->runtimeExceptionType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    .line 1256
    invoke-virtual {p1, v0, v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    .line 1253
    :goto_23
    return v0

    .line 1256
    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method isUnchecked(Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 1263
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check;->isUnchecked(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    .line 1262
    :goto_10
    return v0

    .line 1264
    :cond_11
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_20

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check;->isUnchecked(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v0

    goto :goto_10

    .line 1265
    :cond_20
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_28

    const/4 v0, 0x1

    goto :goto_10

    :cond_28
    const/4 v0, 0x0

    goto :goto_10
.end method

.method isUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 1272
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/comp/Check;->isUnchecked(Lcom/sun/tools/javac/code/Type;)Z
    :try_end_3
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 1275
    :goto_4
    return v0

    .line 1273
    :catch_5
    move-exception v0

    .line 1274
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;

    .line 1275
    const/4 v0, 0x1

    goto :goto_4
.end method

.method localClassName(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/Name;
    .registers 6

    .line 410
    const/4 v0, 0x1

    .line 411
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 412
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-char v3, p0, Lcom/sun/tools/javac/comp/Check;->syntheticNameChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 415
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_36

    return-object v1

    .line 410
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public reportDeferredDiagnostics()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->deprecationHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->reportDeferredDiagnostic()V

    .line 246
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->uncheckedHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->reportDeferredDiagnostic()V

    .line 247
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->sunApiHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->reportDeferredDiagnostic()V

    .line 248
    return-void
.end method

.method setDeferredLintHandler(Lcom/sun/tools/javac/code/DeferredLintHandler;)Lcom/sun/tools/javac/code/DeferredLintHandler;
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 190
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 191
    return-object v0
.end method

.method setLint(Lcom/sun/tools/javac/code/Lint;)Lcom/sun/tools/javac/code/Lint;
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 184
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 185
    return-object v0
.end method

.method setMethod(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->method:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 196
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check;->method:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 197
    return-object v0
.end method

.method subset(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z
    .registers 5
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

    .line 1187
    :goto_0
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1188
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 1189
    :goto_13
    return v0

    .line 1187
    :cond_14
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1189
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method typeError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 9

    .line 269
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "prob.found.req"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method typeError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    .registers 10

    .line 275
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "prob.found.req.1"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method typeTagError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    const/4 v3, 0x0

    .line 288
    instance-of v0, p3, Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_1c

    move-object v0, p3

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    .line 289
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "illegal.start.of.type"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    .line 293
    :goto_1b
    return-object v0

    .line 292
    :cond_1c
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "type.found.req"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    instance-of v1, p3, Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_38

    check-cast p3, Lcom/sun/tools/javac/code/Type;

    :goto_33
    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_1b

    :cond_38
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object p3, v1, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    goto :goto_33
.end method

.method uncheckedOverrides(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;
    .registers 9

    const-wide/16 v4, 0x200

    const-wide/16 v2, 0x0

    .line 1336
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 1337
    const-string v0, "unchecked.override"

    .line 1342
    :goto_11
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0

    .line 1338
    :cond_2f
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3d

    .line 1339
    const-string v0, "unchecked.implement"

    goto :goto_11

    .line 1341
    :cond_3d
    const-string v0, "unchecked.clash.with"

    goto :goto_11
.end method

.method unhandled(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 5
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

    .line 1290
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1291
    :goto_5
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1292
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Check;->isHandled(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1291
    :goto_1b
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_5

    .line 1293
    :cond_1f
    return-object v1

    :cond_20
    move-object v0, v1

    goto :goto_1b
.end method

.method union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
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

    .line 1224
    :goto_0
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1226
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/comp/Check;->incl(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    .line 1225
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1227
    :cond_11
    return-object p1
.end method

.method validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 1035
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Z)V

    .line 1036
    return-void
.end method

.method validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;Z)V"
        }
    .end annotation

    .line 1038
    new-instance v0, Lcom/sun/tools/javac/comp/Check$Validator;

    invoke-direct {v0, p0, p2}, Lcom/sun/tools/javac/comp/Check$Validator;-><init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/comp/Env;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p3, v1}, Lcom/sun/tools/javac/comp/Check$Validator;->validateTree(Lcom/sun/tools/javac/tree/JCTree;ZZ)V

    .line 1039
    return-void
.end method

.method validate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 1044
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1045
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Check;->validate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 1044
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1046
    :cond_10
    return-void
.end method

.method public validateAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
    .registers 13

    const/16 v10, 0x1e

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2395
    new-instance v2, Ljava/util/TreeSet;

    new-instance v0, Lcom/sun/tools/javac/comp/Check$2;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Check$2;-><init>(Lcom/sun/tools/javac/comp/Check;)V

    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 2400
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    .line 2401
    :goto_1c
    if-eqz v1, :cond_31

    .line 2403
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_2d

    .line 2404
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2402
    :cond_2d
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    goto :goto_1c

    .line 2407
    :cond_31
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 2408
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v3

    if-ne v3, v10, :cond_37

    .line 2409
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    .line 2410
    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v3}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 2411
    if-eqz v3, :cond_37

    iget-object v4, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v4

    if-nez v4, :cond_37

    .line 2412
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 2413
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v5, "duplicate.annotation.member.value"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    aput-object v3, v6, v7

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    aput-object v3, v6, v8

    invoke-virtual {v4, v0, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_37

    .line 2418
    :cond_79
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 2419
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_81
    :goto_81
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2420
    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lcom/sun/tools/javac/code/Attribute;

    if-nez v3, :cond_81

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-nez v3, :cond_81

    .line 2421
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_81

    .line 2424
    :cond_9f
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2425
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->size()I

    move-result v0

    if-le v0, v8, :cond_d3

    .line 2426
    const-string v0, "annotation.missing.default.value.1"

    .line 2428
    :goto_ad
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2433
    :cond_be
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->annotationTargetType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_d2

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_d6

    .line 2450
    :cond_d2
    return-void

    .line 2427
    :cond_d3
    const-string v0, "annotation.missing.default.value"

    goto :goto_ad

    .line 2437
    :cond_d6
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    if-ne v0, v10, :cond_d2

    .line 2438
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    .line 2439
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 2440
    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->value:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_d2

    .line 2441
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2442
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_d2

    .line 2443
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    .line 2444
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2445
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10d
    :goto_10d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 2446
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10d

    .line 2447
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v4, "repeated.annotation.target"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10d
.end method

.method public validateAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 8

    const/4 v4, 0x0

    .line 2313
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Check;->validateAnnotationTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 2315
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->annotationApplicable(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2316
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "annotation.type.not.applicable"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2318
    :cond_17
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->overrideType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_38

    .line 2319
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/comp/Check;->isOverrider(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2320
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "method.does.not.override.superclass"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2322
    :cond_38
    return-void
.end method

.method validateAnnotationMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 10

    .line 2291
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->annotationType:Lcom/sun/tools/javac/code/Type;

    :goto_4
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5d

    .line 2292
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    .line 2293
    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    :goto_16
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_56

    .line 2294
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_51

    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2295
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2296
    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/code/Types;->overrideEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2297
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "intf.annotation.member.clash"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, p1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2293
    :cond_51
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    goto :goto_16

    .line 2291
    :cond_56
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_4

    .line 2300
    :cond_5d
    return-void
.end method

.method validateAnnotationTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 2255
    new-instance v0, Lcom/sun/tools/javac/comp/Check$1AnnotationValidator;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Check$1AnnotationValidator;-><init>(Lcom/sun/tools/javac/comp/Check;)V

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 2256
    return-void
.end method

.method validateAnnotationType(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 4

    .line 2264
    if-eqz p1, :cond_b

    .line 2265
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Check;->validateAnnotationType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 2267
    :cond_b
    return-void
.end method

.method validateAnnotationType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V
    .registers 9

    const-wide/16 v4, 0x0

    .line 2270
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2280
    :cond_8
    :goto_8
    return-void

    .line 2271
    :cond_9
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p2, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2272
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    .line 2273
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    .line 2274
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v1, :cond_8

    .line 2275
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->isArray(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->isArray(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 2276
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check;->validateAnnotationType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_8

    .line 2279
    :cond_5d
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "invalid.annotation.member.type"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public validateAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    .line 2305
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->skipAnnotations:Z

    if-eqz v0, :cond_5

    .line 2308
    :cond_4
    return-void

    .line 2306
    :cond_5
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    .line 2307
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Check;->validateAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;Lcom/sun/tools/javac/code/Symbol;)V

    goto :goto_9
.end method

.method varargsDuplicateError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 9

    .line 325
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_27

    .line 326
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "array.and.varargs"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :cond_27
    return-void
.end method

.method varargsOverrides(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;
    .registers 9

    const-wide/16 v4, 0x200

    const-wide/16 v2, 0x0

    .line 1352
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 1353
    const-string v0, "varargs.override"

    .line 1358
    :goto_11
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0

    .line 1354
    :cond_2f
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3d

    .line 1355
    const-string v0, "varargs.implement"

    goto :goto_11

    .line 1357
    :cond_3d
    const-string v0, "varargs.clash.with"

    goto :goto_11
.end method

.method warnDeprecated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 8

    .line 205
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isSuppressed(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 206
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->deprecationHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    const-string v1, "has.been.deprecated"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->report(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_1e
    return-void
.end method

.method public varargs warnStatic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 237
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->STATIC:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 238
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->STATIC:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_11
    return-void
.end method

.method public varargs warnSunApi(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->SUNAPI:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isSuppressed(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 233
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->sunApiHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->report(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_f
    return-void
.end method

.method public varargs warnUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 214
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isSuppressed(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 215
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->uncheckedHandler:Lcom/sun/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->report(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_f
    return-void
.end method

.method varargs warnUnsafeVararg(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->VARARGS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check;->allowSimplifiedVarargs:Z

    if-eqz v0, :cond_15

    .line 224
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->VARARGS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_15
    return-void
.end method
