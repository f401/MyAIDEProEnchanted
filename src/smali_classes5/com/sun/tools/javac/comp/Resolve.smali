.class public Lcom/sun/tools/javac/comp/Resolve;
.super Ljava/lang/Object;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Resolve$AccessError;,
        Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;,
        Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;,
        Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;,
        Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;,
        Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;,
        Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;,
        Lcom/sun/tools/javac/comp/Resolve$ResolveError;,
        Lcom/sun/tools/javac/comp/Resolve$StaticError;,
        Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;
    }
.end annotation


# static fields
.field protected static final resolveKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/Resolve;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allowMethodHandles:Z

.field public final boxingEnabled:Z

.field chk:Lcom/sun/tools/javac/comp/Check;

.field private currentStep:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

.field private final debugResolve:Z

.field diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field private final inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

.field infer:Lcom/sun/tools/javac/comp/Infer;

.field log:Lcom/sun/tools/javac/util/Log;

.field final methodNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

.field private methodResolutionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final methodResolutionSteps:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ">;"
        }
    .end annotation
.end field

.field names:Lcom/sun/tools/javac/util/Names;

.field private final noArgs:Lcom/sun/tools/javac/api/Formattable$LocalizedString;

.field noteWarner:Lcom/sun/tools/javac/util/Warner;

.field polymorphicSignatureScope:Lcom/sun/tools/javac/code/Scope;

.field reader:Lcom/sun/tools/javac/jvm/ClassReader;

.field syms:Lcom/sun/tools/javac/code/Symtab;

.field treeinfo:Lcom/sun/tools/javac/tree/TreeInfo;

.field final typeNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

.field types:Lcom/sun/tools/javac/code/Types;

.field final varNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

.field public final varargsEnabled:Z

.field final wrongMethod:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;

.field final wrongMethods:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/Resolve;->resolveKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    new-instance v0, Lcom/sun/tools/javac/util/Warner;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Warner;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->noteWarner:Lcom/sun/tools/javac/util/Warner;

    .line 1831
    new-instance v0, Lcom/sun/tools/javac/api/Formattable$LocalizedString;

    const-string v1, "compiler.misc.no.args"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/api/Formattable$LocalizedString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->noArgs:Lcom/sun/tools/javac/api/Formattable$LocalizedString;

    .line 2378
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->values()[Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionCache:Ljava/util/Map;

    .line 2381
    sget-object v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->BASIC:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    sget-object v1, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->BOX:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    sget-object v2, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->VARARITY:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionSteps:Lcom/sun/tools/javac/util/List;

    .line 2383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->currentStep:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 87
    sget-object v0, Lcom/sun/tools/javac/comp/Resolve;->resolveKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 88
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 90
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    const/16 v1, 0x44

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lcom/sun/tools/javac/comp/Resolve;I)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->varNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 92
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->wrongMethod:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;

    .line 94
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->wrongMethods:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    .line 96
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    const/16 v1, 0x47

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lcom/sun/tools/javac/comp/Resolve;I)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 98
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    const/16 v1, 0x48

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lcom/sun/tools/javac/comp/Resolve;I)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->typeNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 101
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    .line 102
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    .line 103
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 104
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Infer;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Infer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->infer:Lcom/sun/tools/javac/comp/Infer;

    .line 105
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassReader;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 106
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->treeinfo:Lcom/sun/tools/javac/tree/TreeInfo;

    .line 107
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 108
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 109
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowBoxing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/Resolve;->boxingEnabled:Z

    .line 111
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowVarargs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve;->varargsEnabled:Z

    .line 112
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    .line 113
    const-string v1, "debugresolve"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve;->debugResolve:Z

    .line 114
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Target;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->hasMethodHandles()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve;->allowMethodHandles:Z

    .line 116
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->polymorphicSignatureScope:Lcom/sun/tools/javac/code/Scope;

    .line 118
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/comp/Resolve;)Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve;->debugResolve:Z

    return v0
.end method

.method private adjustVarargs(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/code/Symbol;
    .registers 12

    const-wide v6, 0x400000000L

    const-wide/16 v4, 0x0

    .line 826
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 827
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 828
    if-eqz p3, :cond_98

    .line 829
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-eqz v0, :cond_98

    .line 830
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-eqz v0, :cond_98

    .line 831
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 832
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 833
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v5

    .line 834
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v4

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v6

    if-ge v4, v6, :cond_64

    move-object v4, v2

    .line 839
    :goto_42
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v2, v0, :cond_71

    .line 840
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v2, v1, :cond_5c

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    :goto_50
    invoke-virtual {v5, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 841
    iget-object v4, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 842
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v2, v1, :cond_61

    move-object v2, v3

    :goto_5a
    move-object v3, v2

    .line 844
    goto :goto_42

    .line 840
    :cond_5c
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    goto :goto_50

    .line 844
    :cond_61
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_5a

    .line 849
    :cond_64
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 852
    :cond_71
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 853
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->createMethodTypeWithParameters(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 854
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide v2, -0x400000001L

    iget-wide v6, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v2, v6

    iget-object v4, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v6, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 856
    :goto_97
    return-object v1

    :cond_98
    move-object v1, p1

    goto :goto_97
.end method

.method private findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;ZLcom/sun/tools/javac/code/Symbol;ZZZLjava/util/Set;)Lcom/sun/tools/javac/code/Symbol;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Z",
            "Lcom/sun/tools/javac/code/Symbol;",
            "ZZZ",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 936
    :goto_0
    move-object/from16 v0, p6

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_112

    move-object/from16 v0, p6

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2c

    move-object/from16 v15, p6

    .line 937
    :goto_12
    iget v2, v15, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1f

    .line 938
    invoke-virtual {v15}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object p6

    move-object/from16 v15, p6

    goto :goto_12

    .line 939
    :cond_1f
    iget-object v2, v15, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v12, v2

    check-cast v12, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 940
    move-object/from16 v0, p12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 957
    :cond_2c
    :goto_2c
    return-object p8

    .line 941
    :cond_2d
    invoke-virtual {v12}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x4600

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3c

    .line 942
    const/16 p7, 0x0

    .line 941
    :cond_3c
    invoke-virtual {v12}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    move-object v13, v2

    move-object/from16 v8, p8

    .line 944
    :goto_49
    iget-object v2, v13, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_7e

    .line 947
    iget-object v2, v13, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_78

    iget-object v2, v13, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v2, v2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_78

    .line 949
    iget-object v7, v13, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/sun/tools/javac/comp/Resolve;->selectBest(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;ZZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v8

    .line 945
    :cond_78
    invoke-virtual {v13}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    move-object v13, v2

    goto :goto_49

    .line 956
    :cond_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_8b

    move-object/from16 p8, v8

    goto :goto_2c

    .line 959
    :cond_8b
    if-eqz p7, :cond_10f

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->methodNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    move-object/from16 v16, v0

    .line 961
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a2

    move-object/from16 v16, v8

    :cond_a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, v12, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v17, v2

    move-object v10, v8

    .line 964
    :goto_af
    invoke-virtual/range {v17 .. v17}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 966
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lcom/sun/tools/javac/code/Type;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v14}, Lcom/sun/tools/javac/comp/Resolve;->findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;ZLcom/sun/tools/javac/code/Symbol;ZZZLjava/util/Set;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v10

    .line 965
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object/from16 v17, v2

    goto :goto_af

    .line 964
    :cond_dc
    move-object/from16 v0, v16

    if-eq v0, v10, :cond_10d

    move-object/from16 v0, v16

    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_10d

    iget v2, v10, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_10d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v10, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 973
    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_10d

    move-object v2, v15

    move-object/from16 v10, v16

    .line 959
    :goto_101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p6

    move-object/from16 p8, v10

    goto/16 :goto_0

    :cond_10d
    move-object v2, v15

    .line 936
    goto :goto_101

    :cond_10f
    move-object v2, v15

    move-object v10, v8

    goto :goto_101

    :cond_112
    move-object/from16 v15, p6

    goto/16 :goto_12
.end method

.method private firstErroneousResolutionPhase()Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;
    .registers 7

    .line 2386
    sget-object v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->BASIC:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 2387
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->methodNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 2388
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionSteps:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    .line 2389
    :goto_7
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-boolean v4, p0, Lcom/sun/tools/javac/comp/Resolve;->boxingEnabled:Z

    iget-boolean v5, p0, Lcom/sun/tools/javac/comp/Resolve;->varargsEnabled:Z

    .line 2390
    invoke-virtual {v0, v4, v5}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isApplicable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x45

    if-lt v0, v1, :cond_34

    .line 2392
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionCache:Ljava/util/Map;

    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    .line 2393
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 2394
    iget-object v3, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_7

    .line 2396
    :cond_34
    return-object v2
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;
    .registers 2

    .line 80
    sget-object v0, Lcom/sun/tools/javac/comp/Resolve;->resolveKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve;

    .line 81
    if-nez v0, :cond_f

    .line 82
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Resolve;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 83
    :cond_f
    return-object v0
.end method

.method static isInitializer(Lcom/sun/tools/javac/comp/Env;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v6, 0x0

    .line 144
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 145
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3b

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2e

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3b

    .line 148
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3b

    .line 149
    :cond_2e
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-nez v0, :cond_3b

    :cond_39
    const/4 v0, 0x1

    .line 145
    :goto_3a
    return v0

    .line 149
    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method private isInnerSubClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 4

    .line 205
    :goto_0
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, p2, v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 206
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    goto :goto_0

    .line 208
    :cond_11
    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private isProtectedAccessible(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)Z
    .registers 10

    const-wide/16 v4, 0x0

    .line 297
    :goto_2
    if-eqz p2, :cond_3a

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 298
    invoke-virtual {p2, v0, v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 299
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_33

    .line 303
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_3a

    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    iget-object v0, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2, v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 304
    :cond_33
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    goto :goto_2

    .line 305
    :cond_3a
    if-eqz p2, :cond_3e

    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method static isStatic(Lcom/sun/tools/javac/comp/Env;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    if-le v1, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private logResolveError(Lcom/sun/tools/javac/comp/Resolve$ResolveError;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Resolve$ResolveError;",
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
            ">;)V"
        }
    .end annotation

    .line 1823
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve$ResolveError;->getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 1825
    if-eqz v0, :cond_19

    .line 1826
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RESOLVE_ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/JCDiagnostic;->setFlag(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;)V

    .line 1827
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Log;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 1829
    :cond_19
    return-void
.end method

.method private notOverriddenIn(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 7

    const/4 v1, 0x1

    .line 279
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_13

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    move v0, v1

    .line 283
    :goto_14
    return v0

    :cond_15
    move-object v0, p2

    .line 282
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_46

    if-eq v0, p2, :cond_46

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v2, v3, :cond_46

    .line 284
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->isPolymorphicSignatureGeneric()Z

    move-result v2

    if-nez v2, :cond_46

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 285
    invoke-virtual {v2, p1, v0}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, p1, p2}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_44

    move v0, v1

    goto :goto_14

    :cond_44
    const/4 v0, 0x0

    goto :goto_14

    :cond_46
    move v0, v1

    goto :goto_14
.end method

.method private signatureMoreSpecific(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;ZZ)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "ZZ)Z"
        }
    .end annotation

    const/4 v7, 0x0

    .line 816
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->noteWarner:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Warner;->clear()V

    .line 817
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0, p3, p4, p6}, Lcom/sun/tools/javac/comp/Resolve;->adjustVarargs(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 818
    invoke-direct {p0, p4, p3, p6}, Lcom/sun/tools/javac/comp/Resolve;->adjustVarargs(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 819
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->lowerBoundArgtypes(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Resolve;->noteWarner:Lcom/sun/tools/javac/util/Warner;

    .line 818
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->instantiate(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->noteWarner:Lcom/sun/tools/javac/util/Warner;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 822
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Warner;->hasLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v7, 0x1

    .line 821
    :cond_32
    return v7
.end method

.method private startResolution()Lcom/sun/tools/javac/code/Symbol;
    .registers 2

    .line 1435
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->wrongMethod:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->clear()V

    .line 1436
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->wrongMethods:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->clear()V

    .line 1437
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    return-object v0
.end method


# virtual methods
.method access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;
    .registers 16

    .line 1321
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x41

    if-lt v0, v1, :cond_16

    .line 1322
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p1

    .line 1324
    :cond_16
    return-object p1
.end method

.method access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Z",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1290
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x41

    if-lt v0, v1, :cond_30

    move-object v1, p1

    .line 1291
    check-cast v1, Lcom/sun/tools/javac/comp/Resolve$ResolveError;

    .line 1292
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1293
    invoke-static {p7}, Lcom/sun/tools/javac/code/Type;->isErroneous(Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz p8, :cond_1d

    .line 1294
    invoke-static/range {p8 .. p8}, Lcom/sun/tools/javac/code/Type;->isErroneous(Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_1d
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    move-object/from16 v7, p8

    .line 1295
    invoke-direct/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve;->logResolveError(Lcom/sun/tools/javac/comp/Resolve$ResolveError;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    .line 1296
    :cond_28
    if-eqz p6, :cond_31

    iget-object v0, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    :goto_2c
    invoke-virtual {v1, p5, v0}, Lcom/sun/tools/javac/comp/Resolve$ResolveError;->access(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p1

    .line 1290
    :cond_30
    return-object p1

    .line 1296
    :cond_31
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_2c
.end method

.method access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;
    .registers 13

    .line 1334
    iget-object v3, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Z",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1310
    iget-object v3, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method ambiguityError(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;
    .registers 11

    const-wide v6, 0x80000000000L

    const-wide/16 v4, 0x0

    .line 883
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    or-long/2addr v0, v2

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-eqz v0, :cond_21

    .line 884
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_1f

    .line 886
    :goto_1e
    return-object p1

    :cond_1f
    move-object p1, p2

    .line 884
    goto :goto_1e

    .line 886
    :cond_21
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    move-object p1, v0

    goto :goto_1e
.end method

.method argumentsAcceptable(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Z
    .registers 8
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
            ")Z"
        }
    .end annotation

    .line 427
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/sun/tools/javac/comp/Resolve;->checkRawArgumentsAcceptable(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)V
    :try_end_3
    .catch Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_0 .. :try_end_3} :catch_5

    .line 428
    const/4 v0, 0x1

    .line 430
    :goto_4
    return v0

    .line 429
    :catch_5
    move-exception v0

    .line 430
    const/4 v0, 0x0

    goto :goto_4
.end method

.method checkNonAbstract(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 9

    .line 1340
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    .line 1341
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    .line 1342
    invoke-static {p2}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 1341
    const-string v3, "abstract.cant.be.accessed.directly"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p2, v4, v1

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-virtual {v0, p1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    :cond_28
    return-void
.end method

.method checkRawArgumentsAcceptable(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)V
    .registers 16
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

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 439
    if-eqz p5, :cond_39

    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    move-object v2, v0

    .line 440
    :goto_c
    if-nez v2, :cond_18

    .line 441
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v0

    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 445
    :cond_18
    :goto_18
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v0, v2, :cond_67

    .line 446
    if-eqz p4, :cond_45

    .line 447
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v0, v1, p6}, Lcom/sun/tools/javac/code/Types;->isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    .line 449
    :goto_32
    if-eqz v0, :cond_54

    .line 453
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 454
    iget-object p3, p3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_18

    .line 439
    :cond_39
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_c

    .line 442
    :cond_3c
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    const-string v1, "arg.length.mismatch"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0

    .line 448
    :cond_45
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v0, v1, p6}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_32

    .line 450
    :cond_54
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    const-string v1, "no.conforming.assignment.exists"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    aput-object v3, v2, v6

    iget-object v3, p3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0

    .line 457
    :cond_67
    iget-object v0, p3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v0, v2, :cond_ba

    .line 460
    if-eqz p5, :cond_9f

    .line 461
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 462
    :goto_73
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 463
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v0, v1, p6}, Lcom/sun/tools/javac/code/Types;->isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 467
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_73

    .line 464
    :cond_88
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    const-string v2, "varargs.argument.mismatch"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0

    .line 470
    :cond_99
    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 478
    :cond_9f
    return-void

    .line 471
    :cond_a0
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 472
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    .line 474
    invoke-static {v0}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v3

    .line 472
    const-string v4, "inaccessible.varargs.type"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v3, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v2, v4, v5}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0

    .line 458
    :cond_ba
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    const-string v1, "arg.length.mismatch"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0
.end method

.method findField(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    const/16 v7, 0xe

    const/16 v6, 0x41

    .line 538
    :goto_4
    iget-object v0, p4, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v7, :cond_13

    .line 539
    iget-object v0, p4, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object p4, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_4

    .line 540
    :cond_13
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->varNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 542
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 543
    :goto_1d
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_4e

    .line 544
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_49

    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v2, v2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_49

    .line 545
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 546
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 565
    :goto_3f
    return-object v0

    .line 546
    :cond_40
    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v1

    goto :goto_3f

    .line 548
    :cond_49
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_1d

    .line 550
    :cond_4e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p4, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_ae

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_62

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v7, :cond_ae

    .line 552
    :cond_62
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->findField(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 553
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v3, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v2, v3, :cond_ae

    .line 555
    :goto_6e
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p4, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object v1, v0

    .line 556
    :goto_77
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v0, v6, :cond_aa

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 558
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->findField(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 559
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v0, v6, :cond_a2

    iget v0, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v0, v6, :cond_a2

    iget-object v0, v3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, v4, :cond_a2

    .line 561
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {v0, p0, v1, v3}, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    .line 557
    :goto_9e
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_77

    .line 562
    :cond_a2
    iget v0, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v4, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v0, v4, :cond_ac

    move-object v0, v3

    .line 563
    goto :goto_9e

    :cond_aa
    move-object v0, v1

    .line 565
    goto :goto_3f

    :cond_ac
    move-object v0, v1

    goto :goto_9e

    :cond_ae
    move-object v0, v1

    goto :goto_6e
.end method

.method findFun(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZ)Lcom/sun/tools/javac/code/Symbol;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;ZZ)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 991
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 993
    const/4 v2, 0x0

    move-object v1, p1

    move-object v9, v0

    .line 995
    :goto_5
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v0, :cond_6a

    .line 996
    invoke-static {v1}, Lcom/sun/tools/javac/comp/Resolve;->isStatic(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const/4 v2, 0x1

    move v10, v2

    .line 997
    :goto_11
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1001
    if-eqz v10, :cond_4c

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4c

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    .line 1004
    const-wide/16 v2, 0x8

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_4c

    new-instance v6, Lcom/sun/tools/javac/comp/Resolve$StaticError;

    invoke-direct {v6, p0, v0}, Lcom/sun/tools/javac/comp/Resolve$StaticError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1051
    :cond_4b
    :goto_4b
    return-object v6

    :cond_4c
    move-object v6, v0

    .line 1005
    goto :goto_4b

    .line 1006
    :cond_4e
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v3, v9, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v2, v3, :cond_12c

    .line 1009
    :goto_54
    const-wide/16 v2, 0x8

    iget-object v4, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_129

    const/4 v2, 0x1

    .line 1010
    :goto_66
    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    move-object v9, v0

    goto :goto_5

    .line 1013
    :cond_6a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v6

    .line 1015
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1018
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Scope$ImportScope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v10, v0

    move-object v6, v9

    .line 1019
    :goto_8e
    iget-object v0, v10, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_d2

    .line 1020
    iget-object v0, v10, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1021
    invoke-virtual {v10}, Lcom/sun/tools/javac/code/Scope$Entry;->getOrigin()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1022
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_cc

    .line 1023
    iget-object v1, v10, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v1, v2, :cond_b4

    .line 1024
    invoke-virtual {v10}, Lcom/sun/tools/javac/code/Scope$Entry;->getOrigin()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1025
    :cond_b4
    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_127

    .line 1026
    new-instance v5, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    invoke-direct {v5, p0, p1, v2, v0}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1025
    :goto_bf
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/sun/tools/javac/comp/Resolve;->selectBest(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;ZZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v6

    .line 1022
    :cond_cc
    invoke-virtual {v10}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v10, v0

    goto :goto_8e

    .line 1033
    :cond_d2
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1036
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Scope$StarImportScope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v10, v0

    .line 1037
    :goto_e1
    iget-object v0, v10, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_4b

    .line 1038
    iget-object v0, v10, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1039
    invoke-virtual {v10}, Lcom/sun/tools/javac/code/Scope$Entry;->getOrigin()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1040
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_11f

    .line 1041
    iget-object v1, v10, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v1, v2, :cond_107

    .line 1042
    invoke-virtual {v10}, Lcom/sun/tools/javac/code/Scope$Entry;->getOrigin()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1043
    :cond_107
    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_125

    .line 1044
    new-instance v5, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    invoke-direct {v5, p0, p1, v2, v0}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1043
    :goto_112
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/sun/tools/javac/comp/Resolve;->selectBest(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;ZZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v6

    .line 1040
    :cond_11f
    invoke-virtual {v10}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v10, v0

    goto :goto_e1

    :cond_125
    move-object v5, v0

    goto :goto_112

    :cond_127
    move-object v5, v0

    goto :goto_bf

    :cond_129
    move v2, v10

    goto/16 :goto_66

    :cond_12c
    move-object v0, v9

    goto/16 :goto_54

    :cond_12f
    move v10, v2

    goto/16 :goto_11
.end method

.method findGlobalType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Scope;",
            "Lcom/sun/tools/javac/util/Name;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    const/4 v5, 0x2

    .line 1118
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->typeNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 1119
    invoke-virtual {p2, p3}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    :goto_7
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_25

    .line 1120
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sun/tools/javac/comp/Resolve;->loadClass(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 1121
    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v3, v5, :cond_26

    iget v3, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v3, v5, :cond_26

    if-eq v0, v2, :cond_26

    .line 1123
    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {v1, p0, v0, v2}, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v1

    .line 1127
    :cond_25
    return-object v0

    .line 1124
    :cond_26
    iget v3, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v4, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v3, v4, :cond_2d

    move-object v0, v2

    .line 1119
    :cond_2d
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    goto :goto_7
.end method

.method findIdent(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/Name;",
            "I)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1191
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->typeNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 1194
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_18

    .line 1195
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve;->findVar(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1207
    :cond_10
    :goto_10
    return-object v0

    .line 1197
    :cond_11
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v3, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v2, v3, :cond_18

    move-object v1, v0

    .line 1200
    :cond_18
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_37

    .line 1201
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve;->findType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1202
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1203
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v3, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v2, v3, :cond_37

    .line 1206
    :goto_2c
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/ClassReader;->enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    goto :goto_10

    :cond_37
    move-object v0, v1

    goto :goto_2c
.end method

.method findIdentInPackage(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/util/Name;",
            "I)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1218
    invoke-static {p3, p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->formFullName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 1219
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->typeNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 1220
    const/4 v0, 0x0

    .line 1221
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18

    .line 1222
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1233
    :cond_17
    :goto_17
    return-object v0

    .line 1225
    :cond_18
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_36

    .line 1226
    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/comp/Resolve;->loadClass(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1227
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1229
    iget-object v3, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne p3, v3, :cond_36

    move-object v0, v1

    goto :goto_17

    .line 1231
    :cond_2c
    iget v3, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v4, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v3, v4, :cond_36

    .line 1233
    :goto_32
    if-nez v0, :cond_17

    move-object v0, v1

    goto :goto_17

    :cond_36
    move-object v1, v2

    goto :goto_32
.end method

.method findIdentInType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "I)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1245
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->typeNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 1247
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1a

    .line 1248
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->findField(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1249
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1258
    :cond_12
    :goto_12
    return-object v0

    .line 1250
    :cond_13
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v3, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v2, v3, :cond_1a

    move-object v1, v0

    .line 1253
    :cond_1a
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_30

    .line 1254
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->findMemberType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1255
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1256
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v3, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-lt v2, v3, :cond_12

    :cond_30
    move-object v0, v1

    goto :goto_12
.end method

.method findMemberType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;
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
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    const/16 v5, 0x41

    .line 1083
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->typeNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 1085
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 1086
    :goto_c
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_30

    .line 1087
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 1088
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1089
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1109
    :goto_21
    return-object v0

    .line 1090
    :cond_22
    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v1

    goto :goto_21

    .line 1092
    :cond_2b
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_c

    .line 1094
    :cond_30
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p4, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_8e

    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8e

    .line 1096
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->findMemberType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1097
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v3, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v2, v3, :cond_8e

    .line 1099
    :goto_4c
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p4, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v3, v1

    move-object v2, v0

    .line 1100
    :goto_56
    iget v0, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v0, v5, :cond_8a

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1102
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->findMemberType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1103
    iget v0, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v0, v5, :cond_82

    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v0, v5, :cond_82

    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, v2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, v4, :cond_82

    .line 1105
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {v0, p0, v2, v1}, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1101
    :goto_7d
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v1

    move-object v2, v0

    goto :goto_56

    .line 1106
    :cond_82
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v4, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v0, v4, :cond_8c

    move-object v0, v1

    .line 1107
    goto :goto_7d

    :cond_8a
    move-object v0, v2

    .line 1109
    goto :goto_21

    :cond_8c
    move-object v0, v2

    goto :goto_7d

    :cond_8e
    move-object v0, v1

    goto :goto_4c
.end method

.method findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZZ)Lcom/sun/tools/javac/code/Symbol;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;ZZZ)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 909
    iget-object v8, p0, Lcom/sun/tools/javac/comp/Resolve;->methodNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 910
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v7, 0x1

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v12}, Lcom/sun/tools/javac/comp/Resolve;->findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;ZLcom/sun/tools/javac/code/Symbol;ZZZLjava/util/Set;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method findPolymorphicSignatureInstance(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    .registers 16
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
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1507
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->infer:Lcom/sun/tools/javac/comp/Infer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Infer;->instantiatePolymorphicSignatureInstance(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1509
    if-eqz p4, :cond_5b

    .line 1511
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    .line 1512
    :goto_14
    const-wide v2, 0x12000000400L

    or-long/2addr v2, v0

    .line 1513
    const/4 v4, 0x0

    .line 1514
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->polymorphicSignatureScope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 1515
    :goto_21
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_63

    .line 1517
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1518
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v7, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v6, v5, v7}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1519
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x8

    and-long/2addr v8, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_5e

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v7, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1520
    invoke-virtual {v6, v7, p2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1525
    :goto_4b
    if-nez v1, :cond_5a

    .line 1527
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v6, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1528
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->polymorphicSignatureScope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1530
    :cond_5a
    return-object v1

    .line 1512
    :cond_5b
    const-wide/16 v0, 0x9

    goto :goto_14

    .line 1516
    :cond_5e
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_21

    :cond_63
    move-object v1, v4

    goto :goto_4b
.end method

.method findType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/Name;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    const/16 v11, 0xa

    const/4 v1, 0x1

    const/4 v10, 0x2

    .line 1135
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->typeNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 1137
    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, v0

    move v5, v2

    .line 1138
    :goto_a
    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v0, :cond_bf

    .line 1139
    invoke-static {v3}, Lcom/sun/tools/javac/comp/Resolve;->isStatic(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v0

    if-eqz v0, :cond_10d

    move v2, v1

    .line 1140
    :goto_15
    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 1141
    :goto_1f
    iget-object v5, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v5, :cond_4e

    .line 1143
    iget-object v5, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v5, v5, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v5, v10, :cond_49

    .line 1144
    if-eqz v2, :cond_46

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_46

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v1, v10, :cond_46

    .line 1146
    new-instance v4, Lcom/sun/tools/javac/comp/Resolve$StaticError;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {v4, p0, v0}, Lcom/sun/tools/javac/comp/Resolve$StaticError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v4

    .line 1181
    :cond_45
    :goto_45
    return-object v0

    .line 1147
    :cond_46
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_45

    .line 1142
    :cond_49
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_1f

    .line 1151
    :cond_4e
    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, v3, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v3, v0, p2, v5}, Lcom/sun/tools/javac/comp/Resolve;->findMemberType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1153
    if-eqz v2, :cond_91

    iget v5, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v5, v10, :cond_91

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v5, v5, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v5, v11, :cond_91

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1155
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget v5, v5, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v5, v11, :cond_91

    iget-object v5, v3, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1156
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v5

    if-eqz v5, :cond_91

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1157
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v5

    if-eqz v5, :cond_91

    .line 1158
    new-instance v4, Lcom/sun/tools/javac/comp/Resolve$StaticError;

    invoke-direct {v4, p0, v0}, Lcom/sun/tools/javac/comp/Resolve$StaticError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v4

    goto :goto_45

    .line 1159
    :cond_91
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v5

    if-nez v5, :cond_45

    .line 1160
    iget v5, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v6, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v5, v6, :cond_9e

    move-object v4, v0

    .line 1162
    :cond_9e
    iget-boolean v0, v3, Lcom/sun/tools/javac/comp/Env;->baseClause:Z

    if-eqz v0, :cond_bc

    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1163
    :goto_a6
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_110

    move v0, v1

    .line 1138
    :goto_b6
    iget-object v2, v3, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    move-object v3, v2

    move v5, v0

    goto/16 :goto_a

    .line 1162
    :cond_bc
    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    goto :goto_a6

    .line 1167
    :cond_bf
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    if-eq v0, v10, :cond_10a

    .line 1168
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/comp/Resolve;->findGlobalType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1169
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v1

    if-nez v1, :cond_45

    .line 1170
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v2, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v1, v2, :cond_dc

    move-object v4, v0

    .line 1172
    :cond_dc
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/comp/Resolve;->findGlobalType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v1

    if-nez v1, :cond_45

    .line 1174
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v2, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v1, v2, :cond_f5

    move-object v4, v0

    .line 1176
    :cond_f5
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/comp/Resolve;->findGlobalType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v1

    if-nez v1, :cond_45

    .line 1178
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v2, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v1, v2, :cond_10a

    move-object v4, v0

    :cond_10a
    move-object v0, v4

    .line 1181
    goto/16 :goto_45

    :cond_10d
    move v2, v5

    goto/16 :goto_15

    :cond_110
    move v0, v2

    goto :goto_b6
.end method

.method findVar(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/Name;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->varNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 593
    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, v0

    .line 594
    :goto_5
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v0, :cond_92

    .line 595
    invoke-static {v1}, Lcom/sun/tools/javac/comp/Resolve;->isStatic(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v3, 0x1

    .line 596
    :cond_10
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 597
    :goto_1a
    iget-object v4, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v4, :cond_37

    iget-object v4, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v4, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_32

    iget-object v4, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v4, v4, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v6, 0x1000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_37

    .line 600
    :cond_32
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_1a

    .line 601
    :cond_37
    iget-object v4, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v4, :cond_65

    .line 602
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 605
    :goto_3d
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 606
    if-eqz v3, :cond_64

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_64

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_64

    .line 609
    const-wide/16 v2, 0x8

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_64

    .line 610
    new-instance v2, Lcom/sun/tools/javac/comp/Resolve$StaticError;

    invoke-direct {v2, p0, v0}, Lcom/sun/tools/javac/comp/Resolve$StaticError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v2

    .line 657
    :cond_64
    :goto_64
    return-object v0

    .line 603
    :cond_65
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v1, v0, p2, v4}, Lcom/sun/tools/javac/comp/Resolve;->findField(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_3d

    .line 613
    :cond_74
    iget v4, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v5, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ge v4, v5, :cond_7b

    move-object v2, v0

    .line 617
    :cond_7b
    const-wide/16 v4, 0x8

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8d

    const/4 v3, 0x1

    .line 618
    :cond_8d
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    move-object v1, v0

    .line 619
    goto/16 :goto_5

    .line 621
    :cond_92
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sun/tools/javac/comp/Resolve;->findField(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v1

    if-nez v1, :cond_64

    .line 624
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v0

    if-eqz v0, :cond_ae

    move-object v0, v2

    .line 625
    goto :goto_64

    .line 627
    :cond_ae
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Scope$ImportScope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v1, v0

    .line 628
    :goto_b7
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_f0

    .line 629
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 630
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->getOrigin()Lcom/sun/tools/javac/code/Scope;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 631
    iget v4, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_ea

    .line 632
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v2, v3, :cond_dc

    .line 633
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->getOrigin()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 634
    :cond_dc
    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 635
    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    invoke-direct {v1, p0, p1, v3, v0}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v1

    goto/16 :goto_64

    .line 628
    :cond_ea
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v1, v0

    goto :goto_b7

    .line 639
    :cond_f0
    const/4 v3, 0x0

    .line 640
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Scope$StarImportScope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v1, v2

    move-object v4, v0

    .line 641
    :goto_fb
    iget-object v0, v4, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_13f

    .line 642
    iget-object v0, v4, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 643
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_10f

    move-object v0, v1

    move-object v2, v3

    .line 641
    :cond_108
    :goto_108
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v4

    move-object v1, v0

    move-object v3, v2

    goto :goto_fb

    .line 646
    :cond_10f
    iget v2, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v5, 0x41

    if-ge v2, v5, :cond_123

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v2, v5, :cond_123

    .line 647
    new-instance v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {v2, p0, v1, v0}, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v2

    goto/16 :goto_64

    .line 648
    :cond_123
    iget v2, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x4

    if-lt v2, v5, :cond_155

    .line 649
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Scope$Entry;->getOrigin()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 650
    iget-object v1, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_108

    .line 651
    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    iget-object v3, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v1, p0, p1, v3, v0}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v1

    goto :goto_108

    .line 654
    :cond_13f
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_152

    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v0, v2, :cond_152

    .line 655
    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/code/Symbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    goto/16 :goto_64

    :cond_152
    move-object v0, v1

    .line 657
    goto/16 :goto_64

    :cond_155
    move-object v0, v1

    move-object v2, v3

    goto :goto_108
.end method

.method instantiate(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;ZZ",
            "Lcom/sun/tools/javac/util/Warner;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 411
    :try_start_0
    invoke-virtual/range {p0 .. p8}, Lcom/sun/tools/javac/comp/Resolve;->rawInstantiate(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    :try_end_3
    .catch Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 414
    :goto_4
    return-object v0

    .line 413
    :catch_5
    move-exception v0

    .line 414
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            ")Z"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Z)Z

    move-result v0

    return v0
.end method

.method public isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Z)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Z)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    and-long/2addr v4, v6

    long-to-int v0, v4

    int-to-short v0, v0

    if-eqz v0, :cond_58

    const/4 v3, 0x2

    if-eq v0, v3, :cond_44

    const/4 v3, 0x4

    if-eq v0, v3, :cond_22

    move v0, v2

    .line 179
    :goto_14
    if-eqz p3, :cond_20

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    if-ne v3, v4, :cond_82

    :cond_20
    move v1, v0

    .line 193
    :cond_21
    :goto_21
    return v1

    .line 185
    :cond_22
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, v3, :cond_40

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 188
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    if-eq v0, v3, :cond_40

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 190
    invoke-direct {p0, v0, v3}, Lcom/sun/tools/javac/comp/Resolve;->isInnerSubClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_40
    move v0, v2

    goto :goto_14

    :cond_42
    move v0, v1

    goto :goto_14

    .line 164
    :cond_44
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 165
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 166
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    if-ne v0, v3, :cond_56

    move v0, v2

    goto :goto_14

    :cond_56
    move v0, v1

    goto :goto_14

    .line 169
    :cond_58
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, v3, :cond_7e

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 172
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    if-eq v0, v3, :cond_7e

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    if-eqz v0, :cond_80

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/32 v6, 0x20000000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_80

    :cond_7e
    move v0, v2

    goto :goto_14

    :cond_80
    move v0, v1

    goto :goto_14

    .line 195
    :cond_82
    if-eqz v0, :cond_21

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    move v1, v2

    goto :goto_21
.end method

.method isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")Z"
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    return v0
.end method

.method public isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")Z"
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Z)Z

    move-result v0

    return v0
.end method

.method public isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Z)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Z)Z"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v3, :cond_13

    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v3, :cond_13

    move v1, v2

    .line 268
    :cond_12
    :goto_12
    return v1

    .line 232
    :cond_13
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    and-long/2addr v4, v6

    long-to-int v0, v4

    int-to-short v0, v0

    if-eqz v0, :cond_9c

    if-eq v0, v8, :cond_77

    const/4 v3, 0x4

    if-eq v0, v3, :cond_32

    .line 268
    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/comp/Resolve;->notOverriddenIn(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_c9

    move v0, v1

    :goto_30
    move v1, v0

    goto :goto_12

    .line 253
    :cond_32
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, v3, :cond_69

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 256
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    if-eq v0, v3, :cond_69

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 258
    invoke-direct {p0, p3, v0, p2}, Lcom/sun/tools/javac/comp/Resolve;->isProtectedAccessible(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    if-eqz v0, :cond_75

    .line 262
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_75

    iget v0, p3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v0, v8, :cond_75

    .line 264
    :cond_69
    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 266
    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/comp/Resolve;->notOverriddenIn(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_75
    move v1, v2

    goto :goto_12

    .line 234
    :cond_77
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, v3, :cond_8f

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 237
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v3, p3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 238
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    if-ne v0, v3, :cond_99

    :cond_8f
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 240
    invoke-virtual {p3, v0, v3}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_99
    move v1, v2

    goto/16 :goto_12

    .line 242
    :cond_9c
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, v3, :cond_b0

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 245
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    if-ne v0, v3, :cond_c6

    .line 247
    :cond_b0
    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 249
    invoke-virtual {p3, v0, v3}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 251
    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/comp/Resolve;->notOverriddenIn(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c6
    move v1, v2

    goto/16 :goto_12

    :cond_c9
    move v0, v2

    goto/16 :goto_30
.end method

.method isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Z)Z"
        }
    .end annotation

    .line 216
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_11

    .line 217
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    .line 216
    :goto_10
    return v0

    .line 218
    :cond_11
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Z)Z

    move-result v0

    goto :goto_10
.end method

.method loadClass(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/Name;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/ClassReader;->loadClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 1062
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1066
    :goto_c
    return-object v0

    .line 1062
    :cond_d
    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_12
    .catch Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile; {:try_start_0 .. :try_end_12} :catch_18
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_12} :catch_14

    move-object v0, v1

    goto :goto_c

    .line 1065
    :catch_14
    move-exception v0

    .line 1066
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->typeNotFound:Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    goto :goto_c

    .line 1063
    :catch_18
    move-exception v0

    .line 1064
    throw v0
.end method

.method public logAccessErrorInternal(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 1812
    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1813
    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve;->logResolveError(Lcom/sun/tools/javac/comp/Resolve$ResolveError;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    .line 1814
    return-void
.end method

.method public methodArguments(Lcom/sun/tools/javac/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1834
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/sun/tools/javac/comp/Resolve;->noArgs:Lcom/sun/tools/javac/api/Formattable$LocalizedString;

    :cond_8
    return-object p1
.end method

.method mostSpecific(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Symbol;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "ZZ)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 729
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_57

    const/16 v1, 0x41

    if-ne v0, v1, :cond_51

    move-object v7, p2

    .line 799
    check-cast v7, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    .line 800
    iget-object v2, v7, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->mostSpecific(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v8

    .line 801
    iget-object v2, v7, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym2:Lcom/sun/tools/javac/code/Symbol;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->mostSpecific(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 802
    if-ne v8, v1, :cond_2b

    move-object p2, v8

    .line 809
    :cond_2a
    :goto_2a
    return-object p2

    .line 803
    :cond_2b
    iget-object v0, v7, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v8, v0, :cond_33

    iget-object v0, v7, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym2:Lcom/sun/tools/javac/code/Symbol;

    if-eq v1, v0, :cond_2a

    .line 804
    :cond_33
    instance-of v0, v8, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    if-eqz v0, :cond_4c

    instance-of v0, v1, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    if-eqz v0, :cond_4c

    move-object v0, v8

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    move-object v0, v1

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v2, v0, :cond_4c

    .line 807
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve;->ambiguityError(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p2

    goto :goto_2a

    .line 809
    :cond_4c
    invoke-virtual {p0, v8, v1}, Lcom/sun/tools/javac/comp/Resolve;->ambiguityError(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p2

    goto :goto_2a

    .line 811
    :cond_51
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 731
    :cond_57
    if-ne p1, p2, :cond_5b

    move-object p2, p1

    goto :goto_2a

    :cond_5b
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move/from16 v6, p6

    .line 732
    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->signatureMoreSpecific(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;ZZ)Z

    move-result v7

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move v5, p5

    move/from16 v6, p6

    .line 733
    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->signatureMoreSpecific(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;ZZ)Z

    move-result v0

    .line 734
    if-eqz v7, :cond_1ac

    if-eqz v0, :cond_1ac

    .line 735
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p4, p1}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 736
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p4, p2}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 737
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/code/Types;->overrideEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 738
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve;->ambiguityError(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p2

    goto :goto_2a

    .line 743
    :cond_90
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v6, 0x80000000L

    and-long/2addr v0, v6

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide v8, 0x80000000L

    and-long/2addr v6, v8

    cmp-long v0, v0, v6

    if-eqz v0, :cond_bb

    .line 744
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    move-object p2, p1

    goto/16 :goto_2a

    .line 747
    :cond_bb
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 748
    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 749
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v5, v1}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    const/4 v2, 0x0

    if-eqz v5, :cond_f4

    iget-object v5, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v6, v5, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v8, 0x200

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e8

    iget-object v5, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v6, v5, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v8, 0x200

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f4

    :cond_e8
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 752
    const/4 v6, 0x0

    invoke-virtual {p1, p2, v0, v5, v6}, Lcom/sun/tools/javac/code/Symbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v5

    if-eqz v5, :cond_f4

    move-object p2, p1

    .line 753
    goto/16 :goto_2a

    .line 749
    :cond_f4
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v6, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v5, v6, v0}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_121

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v6, v0, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v8, 0x200

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_118

    const-wide/16 v6, 0x200

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-wide v8, v0, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_121

    :cond_118
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 757
    const/4 v5, 0x0

    invoke-virtual {p2, p1, v1, v0, v5}, Lcom/sun/tools/javac/code/Symbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 759
    :cond_121
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v6, 0x400

    and-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_148

    const/4 v0, 0x1

    .line 760
    :goto_12f
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1b9

    const/4 v1, 0x1

    .line 761
    :goto_13d
    if-eqz v0, :cond_141

    if-eqz v1, :cond_2a

    .line 762
    :cond_141
    if-eqz v1, :cond_14a

    if-nez v0, :cond_14a

    move-object p2, p1

    goto/16 :goto_2a

    .line 759
    :cond_148
    const/4 v0, 0x0

    goto :goto_12f

    .line 764
    :cond_14a
    if-nez v0, :cond_154

    if-nez v1, :cond_154

    .line 765
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve;->ambiguityError(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p2

    goto/16 :goto_2a

    .line 767
    :cond_154
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 768
    invoke-virtual {p2, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 767
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSameTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_174

    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve;->ambiguityError(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p2

    goto/16 :goto_2a

    .line 771
    :cond_174
    invoke-virtual {p0, v3, v4}, Lcom/sun/tools/javac/comp/Resolve;->mostSpecificReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 772
    if-nez v0, :cond_180

    .line 775
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve;->ambiguityError(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p2

    goto/16 :goto_2a

    .line 777
    :cond_180
    if-ne v0, v3, :cond_1aa

    .line 778
    :goto_182
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/code/Types;->createMethodTypeWithThrown(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 780
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$1;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    iget-object v4, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v6, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve$1;-><init>(Lcom/sun/tools/javac/comp/Resolve;JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V

    move-object p2, v0

    .line 793
    goto/16 :goto_2a

    :cond_1aa
    move-object p1, p2

    .line 777
    goto :goto_182

    .line 734
    :cond_1ac
    if-eqz v7, :cond_1b1

    move-object p2, p1

    goto/16 :goto_2a

    .line 796
    :cond_1b1
    if-nez v0, :cond_2a

    .line 797
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve;->ambiguityError(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p2

    goto/16 :goto_2a

    :cond_1b9
    move v1, v2

    goto :goto_13d
.end method

.method mostSpecificReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    const/16 v3, 0x10

    .line 861
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 862
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 864
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_20

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_20

    .line 866
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 869
    :cond_20
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 878
    :cond_28
    :goto_28
    return-object p1

    .line 871
    :cond_29
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object p1, p2

    .line 872
    goto :goto_28

    .line 873
    :cond_33
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->returnTypeSubstitutable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 875
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2, p1}, Lcom/sun/tools/javac/code/Types;->returnTypeSubstitutable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_45

    move-object p1, p2

    .line 876
    goto :goto_28

    .line 878
    :cond_45
    const/4 p1, 0x0

    goto :goto_28
.end method

.method public printscopes(Lcom/sun/tools/javac/code/Scope;)V
    .registers 8

    .line 1353
    :goto_0
    if-eqz p1, :cond_5b

    .line 1354
    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v0, :cond_1e

    .line 1355
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1356
    :cond_1e
    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    :goto_20
    if-eqz v0, :cond_53

    .line 1357
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_38

    .line 1358
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "abstract "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1359
    :cond_38
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1356
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_20

    .line 1361
    :cond_53
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1362
    iget-object p1, p1, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    goto :goto_0

    .line 1364
    :cond_5b
    return-void
.end method

.method public printscopes(Lcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 1375
    :goto_0
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_16

    .line 1376
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Resolve;->printscopes(Lcom/sun/tools/javac/code/Scope;)V

    .line 1377
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    .line 1379
    :cond_16
    return-void
.end method

.method printscopes(Lcom/sun/tools/javac/comp/Env;)V
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

    .line 1367
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v0, :cond_17

    .line 1368
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Resolve;->printscopes(Lcom/sun/tools/javac/code/Scope;)V

    .line 1370
    iget-object p1, p1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    goto :goto_0

    .line 1372
    :cond_17
    return-void
.end method

.method rawInstantiate(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
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

    .line 334
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol;->isPolymorphicSignatureGeneric()Z

    move-result v2

    if-eqz v2, :cond_77

    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Resolve;->allowMethodHandles:Z

    if-eqz v2, :cond_77

    const/4 v2, 0x1

    move v10, v2

    .line 335
    :goto_c
    if-eqz p7, :cond_1e

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x400000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7a

    .line 337
    :cond_1e
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p2, p3}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 341
    const/4 v8, 0x0

    .line 342
    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    if-eqz v2, :cond_169

    .line 343
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/code/Types;->newInstances(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 344
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v4, v3, v2, v8}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 346
    :goto_45
    if-nez p5, :cond_4b

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object p5

    .line 347
    :cond_4b
    iget v3, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_81

    invoke-virtual/range {p5 .. p5}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_81

    :cond_57
    move-object v9, v2

    move-object v4, v8

    .line 375
    :goto_59
    const/4 v2, 0x1

    iget-object v3, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v3, :cond_60

    if-eqz v10, :cond_12e

    :cond_60
    :goto_60
    move-object v3, p4

    move v5, v2

    .line 378
    :goto_62
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v2, :cond_131

    if-nez v5, :cond_131

    .line 380
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v6, 0x10

    if-ne v2, v6, :cond_73

    const/4 v5, 0x1

    .line 379
    :cond_73
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v2

    goto :goto_62

    .line 334
    :cond_77
    const/4 v2, 0x0

    move v10, v2

    goto :goto_c

    .line 336
    :cond_7a
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    invoke-virtual {v2}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage()Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v2

    throw v2

    .line 350
    :cond_81
    iget v3, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_10e

    invoke-virtual/range {p5 .. p5}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 351
    check-cast v2, Lcom/sun/tools/javac/code/Type$ForAll;

    .line 352
    invoke-virtual/range {p5 .. p5}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v3

    iget-object v4, v2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v4

    if-ne v3, v4, :cond_105

    .line 355
    iget-object v3, v2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    move-object v5, v3

    move-object/from16 v6, p5

    .line 357
    :goto_a0
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 358
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iget-object v7, v2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    move-object/from16 v0, p5

    invoke-virtual {v4, v3, v7, v0}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    move-object v7, v3

    .line 360
    :goto_bf
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 361
    iget-object v9, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    iget-object v4, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p8

    invoke-virtual {v9, v3, v4, v0}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 360
    iget-object v3, v7, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v7, v3

    goto :goto_bf

    .line 362
    :cond_db
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    const-string v3, "explicit.param.do.not.conform.to.bounds"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v2

    throw v2

    .line 363
    :cond_ef
    iget-object v3, v5, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 364
    iget-object v4, v6, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v5, v3

    move-object v6, v4

    .line 365
    goto :goto_a0

    .line 357
    :cond_f6
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, v2, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v2, v0}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v9

    move-object v4, v8

    .line 367
    goto/16 :goto_59

    .line 353
    :cond_105
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->inapplicableMethodException:Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    const-string v3, "arg.length.mismatch"

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v2

    throw v2

    .line 350
    :cond_10e
    iget v3, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_57

    .line 368
    check-cast v2, Lcom/sun/tools/javac/code/Type$ForAll;

    .line 369
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, v2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->newInstances(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 370
    invoke-virtual {v8, v3}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 371
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v6, v2, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v5, v6, v2, v3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v9

    goto/16 :goto_59

    .line 375
    :cond_12e
    const/4 v2, 0x0

    goto/16 :goto_60

    .line 383
    :cond_131
    if-eqz v5, :cond_157

    .line 384
    if-eqz v10, :cond_144

    .line 385
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->infer:Lcom/sun/tools/javac/comp/Infer;

    iget-object v5, p3, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    move-object v6, p3

    check-cast v6, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sun/tools/javac/comp/Infer;->instantiatePolymorphicSignatureInstance(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 397
    :goto_143
    return-object v2

    .line 386
    :cond_144
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->infer:Lcom/sun/tools/javac/comp/Infer;

    move-object v5, v9

    check-cast v5, Lcom/sun/tools/javac/code/Type$MethodType;

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/sun/tools/javac/comp/Infer;->instantiateMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    goto :goto_143

    .line 395
    :cond_157
    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->checkRawArgumentsAcceptable(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)V

    move-object v2, v9

    .line 397
    goto :goto_143

    :cond_169
    move-object v2, v3

    goto/16 :goto_45
.end method

.method resolveBinaryOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "I",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1722
    invoke-static {p4, p5}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->resolveOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method resolveConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1569
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve;->startResolution()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1570
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionSteps:Lcom/sun/tools/javac/util/List;

    move-object v8, v0

    .line 1571
    :goto_7
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Resolve;->boxingEnabled:Z

    iget-boolean v3, p0, Lcom/sun/tools/javac/comp/Resolve;->varargsEnabled:Z

    .line 1572
    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isApplicable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_52

    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x40

    if-lt v0, v2, :cond_52

    .line 1574
    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->currentStep:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1575
    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1576
    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v6

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1577
    invoke-virtual {v1}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v7

    iput-boolean v7, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1575
    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve;->resolveConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1578
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionCache:Ljava/util/Map;

    iget-object v2, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v8, v0

    goto :goto_7

    .line 1581
    :cond_52
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x41

    if-lt v0, v2, :cond_7c

    .line 1582
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve;->firstErroneousResolutionPhase()Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-result-object v8

    .line 1583
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionCache:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1585
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-virtual {v8}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 1587
    :cond_7c
    return-object v1
.end method

.method resolveConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZ)Lcom/sun/tools/javac/code/Symbol;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;ZZ)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1655
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1659
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sun/tools/javac/comp/Check;->checkDeprecated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1660
    return-object v1
.end method

.method resolveDiamond(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    const/16 v9, 0x46

    .line 1605
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve;->startResolution()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1606
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionSteps:Lcom/sun/tools/javac/util/List;

    move-object v8, v0

    .line 1607
    :goto_9
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Resolve;->boxingEnabled:Z

    iget-boolean v3, p0, Lcom/sun/tools/javac/comp/Resolve;->varargsEnabled:Z

    .line 1608
    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isApplicable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_54

    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x40

    if-lt v0, v2, :cond_54

    .line 1610
    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->currentStep:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1611
    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1612
    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v6

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1613
    invoke-virtual {v1}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v7

    iput-boolean v7, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1611
    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve;->resolveConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1614
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionCache:Ljava/util/Map;

    iget-object v2, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v8, v0

    goto :goto_9

    .line 1617
    :cond_54
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x41

    if-lt v0, v2, :cond_86

    .line 1618
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v0, v9, :cond_87

    move-object v0, v1

    .line 1619
    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->explanation:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 1621
    :goto_63
    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$2;

    const-string v2, "diamond error"

    invoke-direct {v1, p0, v9, v2, v0}, Lcom/sun/tools/javac/comp/Resolve$2;-><init>(Lcom/sun/tools/javac/comp/Resolve;ILjava/lang/String;Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 1632
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve;->firstErroneousResolutionPhase()Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-result-object v8

    .line 1633
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1634
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-virtual {v8}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 1636
    :cond_86
    return-object v1

    .line 1620
    :cond_87
    const/4 v0, 0x0

    goto :goto_63
.end method

.method resolveIdent(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/Name;",
            "I)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1395
    invoke-virtual {p0, p2, p3, p4}, Lcom/sun/tools/javac/comp/Resolve;->findIdent(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method resolveImplicitThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 1794
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->resolveImplicitThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method resolveImplicitThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Z)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 1798
    iget-object v0, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_3a

    .line 1799
    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/tools/javac/comp/Resolve;->resolveSelf(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1800
    :goto_18
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1801
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, v2, :cond_39

    .line 1802
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "cant.ref.before.ctor.called"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "this"

    aput-object v5, v3, v4

    invoke-virtual {v0, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    :cond_39
    return-object v1

    .line 1800
    :cond_3a
    iget-object v0, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sun/tools/javac/comp/Resolve;->resolveSelfContaining(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_18
.end method

.method public resolveInternalConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    .line 1674
    invoke-virtual/range {p0 .. p5}, Lcom/sun/tools/javac/comp/Resolve;->resolveConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1676
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_d

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    return-object v0

    .line 1677
    :cond_d
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 1678
    new-instance v1, Lcom/sun/tools/javac/util/FatalError;

    const-string v2, "fatal.err.cant.locate.ctor"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/FatalError;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    throw v1
.end method

.method public resolveInternalField(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;"
        }
    .end annotation

    .line 577
    iget-object v0, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/sun/tools/javac/comp/Resolve;->findField(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 578
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    return-object v0

    .line 579
    :cond_e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 580
    new-instance v1, Lcom/sun/tools/javac/util/FatalError;

    const-string v2, "fatal.err.cant.locate.field"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/FatalError;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    throw v1
.end method

.method public resolveInternalMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
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
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    .line 1547
    iget-object v3, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1549
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_16

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    return-object v0

    .line 1550
    :cond_16
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 1551
    new-instance v1, Lcom/sun/tools/javac/util/FatalError;

    const-string v2, "fatal.err.cant.locate.meth"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/FatalError;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    throw v1
.end method

.method resolveMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1412
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve;->startResolution()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1413
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionSteps:Lcom/sun/tools/javac/util/List;

    move-object v7, v0

    .line 1414
    :goto_7
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Resolve;->boxingEnabled:Z

    iget-boolean v3, p0, Lcom/sun/tools/javac/comp/Resolve;->varargsEnabled:Z

    .line 1415
    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isApplicable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x40

    if-lt v0, v2, :cond_4d

    .line 1417
    iget-object v0, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->currentStep:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1418
    iget-object v0, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-boolean v5, v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired:Z

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-boolean v6, v1, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired:Z

    iput-boolean v6, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->findFun(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1421
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionCache:Ljava/util/Map;

    iget-object v2, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    iget-object v0, v7, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v7, v0

    goto :goto_7

    .line 1424
    :cond_4d
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x41

    if-lt v0, v2, :cond_77

    .line 1425
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve;->firstErroneousResolutionPhase()Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-result-object v8

    .line 1427
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionCache:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1429
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v2, v8, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired:Z

    iput-boolean v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 1431
    :cond_77
    return-object v1
.end method

.method resolveOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "I",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1689
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve;->startResolution()Lcom/sun/tools/javac/code/Symbol;

    .line 1690
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->treeinfo:Lcom/sun/tools/javac/tree/TreeInfo;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeInfo;->operatorName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    .line 1691
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v5

    .line 1693
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve;->boxingEnabled:Z

    if-eqz v0, :cond_37

    iget v0, v5, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x45

    if-lt v0, v1, :cond_37

    .line 1694
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v5

    .line 1696
    :cond_37
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v7, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object v8, v3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method resolveQualifiedMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
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
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1457
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve;->startResolution()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 1458
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionSteps:Lcom/sun/tools/javac/util/List;

    move-object v9, v0

    .line 1459
    :goto_7
    invoke-virtual {v9}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, v9, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Resolve;->boxingEnabled:Z

    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Resolve;->varargsEnabled:Z

    .line 1460
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isApplicable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_55

    iget v0, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_55

    .line 1462
    iget-object v0, v9, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->currentStep:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1463
    iget-object v0, v9, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1464
    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v6

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v9, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 1465
    invoke-virtual {v1}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v7

    iput-boolean v7, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 1463
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->findMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 1466
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionCache:Ljava/util/Map;

    iget-object v1, v9, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    iget-object v0, v9, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v9, v0

    goto :goto_7

    .line 1469
    :cond_55
    iget v0, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x41

    if-lt v0, v1, :cond_99

    .line 1470
    iget-object v0, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isPolymorphicSignatureGeneric()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1472
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 1473
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->findPolymorphicSignatureInstance(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 1490
    :cond_75
    :goto_75
    return-object v4

    .line 1478
    :cond_76
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Resolve;->firstErroneousResolutionPhase()Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-result-object v9

    .line 1480
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->methodResolutionCache:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 1482
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-boolean v1, v9, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired:Z

    iput-boolean v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    goto :goto_75

    .line 1484
    :cond_99
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve;->allowMethodHandles:Z

    if-eqz v0, :cond_75

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->isPolymorphicSignatureGeneric()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1486
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 1487
    check-cast v4, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->findPolymorphicSignatureInstance(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    goto :goto_75
.end method

.method resolveQualifiedMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
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
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1452
    iget-object v3, p3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method resolveSelf(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/util/Name;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1736
    move-object v1, p2

    move v2, v3

    .line 1738
    :goto_4
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v0, :cond_4e

    .line 1739
    invoke-static {v1}, Lcom/sun/tools/javac/comp/Resolve;->isStatic(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v2, v5

    .line 1740
    :cond_f
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, p3, :cond_38

    .line 1741
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, p4}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1742
    if-eqz v0, :cond_38

    .line 1743
    if-eqz v2, :cond_5e

    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$StaticError;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/comp/Resolve$StaticError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1744
    :goto_2a
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1752
    :goto_37
    return-object v0

    .line 1748
    :cond_38
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4a

    move v2, v5

    .line 1749
    :cond_4a
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    move-object v1, v0

    goto :goto_4

    .line 1751
    :cond_4e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "not.encl.class"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1752
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_37

    :cond_5e
    move-object v1, v0

    goto :goto_2a
.end method

.method resolveSelfContaining(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/code/Symbol;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Z)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1766
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    .line 1767
    if-eqz p4, :cond_4b

    iget-object v1, p2, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    .line 1769
    :goto_a
    if-eqz v1, :cond_63

    move-object v2, v1

    move v0, v3

    .line 1770
    :goto_e
    if-eqz v2, :cond_63

    iget-object v1, v2, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v1, :cond_63

    .line 1771
    invoke-static {v2}, Lcom/sun/tools/javac/comp/Resolve;->isStatic(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v1

    if-eqz v1, :cond_75

    move v1, v5

    .line 1772
    :goto_1b
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, p3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v6, v7}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1773
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1774
    if-eqz v0, :cond_4d

    .line 1775
    if-eqz v1, :cond_73

    new-instance v1, Lcom/sun/tools/javac/comp/Resolve$StaticError;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/comp/Resolve$StaticError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1776
    :goto_3e
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1786
    :goto_4a
    return-object v0

    :cond_4b
    move-object v1, p2

    .line 1767
    goto :goto_a

    .line 1780
    :cond_4d
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_5f

    move v1, v5

    :cond_5f
    iget-object v2, v2, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    move v0, v1

    goto :goto_e

    .line 1785
    :cond_63
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "encl.class.required"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1786
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_4a

    :cond_73
    move-object v1, v0

    goto :goto_3e

    :cond_75
    move v1, v0

    goto :goto_1b
.end method

.method resolveUnaryOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "I",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1707
    invoke-static {p4}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/comp/Resolve;->resolveOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method selectBest(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;ZZZ)Lcom/sun/tools/javac/code/Symbol;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "ZZZ)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 683
    iget v0, p5, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_7

    .line 707
    :cond_6
    :goto_6
    return-object p6

    .line 684
    :cond_7
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p5, v0, v1}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 685
    iget v0, p5, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x41

    if-ge v0, v1, :cond_3c

    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 687
    :try_start_1b
    sget-object v8, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/comp/Resolve;->rawInstantiate(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
    :try_end_2a
    .catch Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_1b .. :try_end_2a} :catch_59

    .line 701
    invoke-virtual {p0, p1, p2, p5}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 703
    iget v0, p6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x47

    if-ne v0, v1, :cond_6

    .line 704
    new-instance p6, Lcom/sun/tools/javac/comp/Resolve$AccessError;

    invoke-direct {p6, p0, p1, p2, p5}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    goto :goto_6

    .line 685
    :cond_3c
    const/4 v0, 0x0

    goto :goto_18

    .line 707
    :cond_3e
    iget v0, p6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x41

    if-le v0, v1, :cond_46

    :goto_44
    move-object p6, p5

    goto :goto_6

    .line 709
    :cond_46
    if-eqz p7, :cond_57

    if-eqz p9, :cond_57

    const/4 v5, 0x1

    :goto_4b
    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->mostSpecific(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p5

    goto :goto_44

    :cond_57
    const/4 v5, 0x0

    goto :goto_4b

    .line 689
    :catch_59
    move-exception v0

    .line 690
    iget v1, p6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    packed-switch v1, :pswitch_data_8a

    goto :goto_6

    .line 697
    :goto_60
    :pswitch_60  #0x45
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->wrongMethods:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->currentStep:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->getDiagnostic()Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {v1, v2, p5, v0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->addCandidate(Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p6

    goto :goto_6

    .line 692
    :pswitch_6d  #0x47
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->wrongMethod:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->getDiagnostic()Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {v1, p5, v0}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->setWrongSym(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;

    move-result-object p6

    goto :goto_6

    .line 694
    :pswitch_78  #0x46
    if-nez p9, :cond_6

    .line 695
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve;->wrongMethods:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve;->currentStep:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve;->wrongMethod:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;

    iget-object v3, v3, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Resolve;->wrongMethod:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolError;->explanation:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->addCandidate(Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/code/Symbol;

    goto :goto_60

    .line 690
    :pswitch_data_8a
    .packed-switch 0x45
        :pswitch_60  #00000045
        :pswitch_78  #00000046
        :pswitch_6d  #00000047
    .end packed-switch
.end method
