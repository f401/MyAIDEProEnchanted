.class public Lcom/sun/tools/javac/jvm/Gen;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "Gen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;,
        Lcom/sun/tools/javac/jvm/Gen$CodeSizeOverflow;,
        Lcom/sun/tools/javac/jvm/Gen$GenContext;,
        Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;
    }
.end annotation


# static fields
.field protected static final genKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessDollar:Lcom/sun/tools/javac/util/Name;

.field private final allowGenerics:Z

.field private final allowInvokedynamic:Z

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

.field private final chk:Lcom/sun/tools/javac/comp/Check;

.field private code:Lcom/sun/tools/javac/jvm/Code;

.field private final debugCode:Z

.field private endPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field env:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;"
        }
    .end annotation
.end field

.field private final genCrt:Z

.field private final generateIproxies:Z

.field private items:Lcom/sun/tools/javac/jvm/Items;

.field private final jsrlimit:I

.field private final lineDebugInfo:Z

.field private final log:Lcom/sun/tools/javac/util/Log;

.field private final make:Lcom/sun/tools/javac/tree/TreeMaker;

.field private final methodType:Lcom/sun/tools/javac/code/Type;

.field private final names:Lcom/sun/tools/javac/util/Names;

.field private nerrs:I

.field private pool:Lcom/sun/tools/javac/jvm/Pool;

.field pt:Lcom/sun/tools/javac/code/Type;

.field result:Lcom/sun/tools/javac/jvm/Items$Item;

.field private final rs:Lcom/sun/tools/javac/comp/Resolve;

.field private final stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

.field private final stringBufferAppend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private final stringBufferType:Lcom/sun/tools/javac/code/Type;

.field private final syms:Lcom/sun/tools/javac/code/Symtab;

.field private final target:Lcom/sun/tools/javac/jvm/Target;

.field private toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

.field private final types:Lcom/sun/tools/javac/code/Types;

.field private useJsrLocally:Z

.field private final varDebugInfo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/jvm/Gen;->genKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    .line 187
    new-instance v0, Lcom/sun/tools/javac/jvm/Pool;

    invoke-direct {v0}, Lcom/sun/tools/javac/jvm/Pool;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->pool:Lcom/sun/tools/javac/jvm/Pool;

    .line 212
    iput v1, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    .line 104
    sget-object v0, Lcom/sun/tools/javac/jvm/Gen;->genKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 106
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    .line 107
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->log:Lcom/sun/tools/javac/util/Log;

    .line 108
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 109
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 110
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 111
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 112
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Target;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 113
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    .line 114
    new-instance v0, Lcom/sun/tools/javac/code/Type$MethodType;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v4, v4, v4, v3}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->methodType:Lcom/sun/tools/javac/code/Type;

    .line 115
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowGenerics()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->allowGenerics:Z

    .line 116
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->useStringBuilder()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 117
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->stringBuilderType:Lcom/sun/tools/javac/code/Type;

    .line 118
    :goto_65
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->stringBufferType:Lcom/sun/tools/javac/code/Type;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->stringBufferAppend:Ljava/util/Map;

    .line 120
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "access"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 121
    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->accessDollar:Lcom/sun/tools/javac/util/Name;

    .line 123
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v3

    .line 124
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    .line 125
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isUnset(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    .line 126
    const-string v4, "lines"

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_110

    :cond_a3
    move v0, v2

    :goto_a4
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->lineDebugInfo:Z

    .line 127
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isUnset(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 129
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->G:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    .line 130
    :goto_b4
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->varDebugInfo:Z

    .line 131
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XJCOV:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    .line 132
    const-string v0, "debugcode"

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->debugCode:Z

    .line 133
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->hasInvokedynamic()Z

    move-result v0

    if-nez v0, :cond_d6

    const-string v0, "invokedynamic"

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11b

    :cond_d6
    move v0, v2

    :goto_d7
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->allowInvokedynamic:Z

    .line 135
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 136
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->requiresIproxy()Z

    move-result v0

    if-nez v0, :cond_e9

    .line 137
    const-string v0, "miranda"

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11d

    :cond_e9
    :goto_e9
    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/Gen;->generateIproxies:Z

    .line 139
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->generateStackMapTable()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 141
    sget-object v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->JSR202:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    .line 151
    :goto_f7
    const/16 v0, 0x32

    .line 152
    const-string v2, "jsrlimit"

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_105

    .line 155
    :try_start_101
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_104
    .catch Ljava/lang/NumberFormatException; {:try_start_101 .. :try_end_104} :catch_131

    move-result v0

    .line 160
    :cond_105
    :goto_105
    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen;->jsrlimit:I

    .line 161
    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Gen;->useJsrLocally:Z

    .line 162
    return-void

    .line 118
    :cond_10a
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->stringBufferType:Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_65

    :cond_110
    move v0, v1

    .line 126
    goto :goto_a4

    .line 130
    :cond_112
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    const-string v4, "vars"

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b4

    :cond_11b
    move v0, v1

    .line 133
    goto :goto_d7

    :cond_11d
    move v2, v1

    .line 137
    goto :goto_e9

    .line 143
    :cond_11f
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->generateCLDCStackmap()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 144
    sget-object v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->CLDC:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    goto :goto_f7

    .line 146
    :cond_12c
    sget-object v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->NONE:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    goto :goto_f7

    .line 156
    :catch_131
    move-exception v2

    goto :goto_105
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/jvm/Gen;)Lcom/sun/tools/javac/jvm/Code;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/jvm/Gen;)Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->useJsrLocally:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/jvm/Gen;)I
    .registers 2

    .line 60
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->jsrlimit:I

    return v0
.end method

.method private addAbstractMethod(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 11

    .line 697
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x1000

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 701
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 702
    return-void
.end method

.method private adjustAbstractMethod(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 8

    .line 707
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 708
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, p3}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 709
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$MethodType;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sun/tools/javac/comp/Check;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    .line 710
    return-void
.end method

.method private checkDimension(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V
    .registers 6

    .line 344
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_28

    const/16 v1, 0xc

    if-eq v0, v1, :cond_b

    .line 359
    :cond_a
    :goto_a
    return-void

    .line 346
    :cond_b
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Gen;->checkDimension(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 347
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_17
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 348
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Gen;->checkDimension(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 347
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_17

    .line 351
    :cond_28
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->dimensions(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_a

    .line 352
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "limit.dimensions"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    goto :goto_a
.end method

.method private checkStringConstant(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;)V
    .registers 6

    .line 586
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    if-nez v0, :cond_15

    if-eqz p2, :cond_15

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_15

    check-cast p2, Ljava/lang/String;

    .line 589
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-ge v0, v1, :cond_16

    .line 593
    :cond_15
    :goto_15
    return-void

    .line 591
    :cond_16
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "limit.string"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    goto :goto_15
.end method

.method private genLoop(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;Z)V"
        }
    .end annotation

    const/16 v6, 0x11

    const/16 v4, 0x8

    const/16 v5, 0xa7

    .line 1144
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    new-instance v1, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v1}, Lcom/sun/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 1145
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->entryPoint()I

    move-result v2

    .line 1146
    if-eqz p5, :cond_67

    .line 1148
    if-eqz p3, :cond_60

    .line 1149
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v3, p3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1150
    invoke-static {p3}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 1154
    :goto_2a
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpFalse()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v3

    .line 1155
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1156
    invoke-virtual {p0, p2, v1, v6}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    .line 1157
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->cont:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1158
    invoke-virtual {p0, p4, v1}, Lcom/sun/tools/javac/jvm/Gen;->genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 1159
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;I)V

    .line 1160
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1175
    :goto_54
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->exit:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1176
    return-void

    .line 1152
    :cond_60
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    goto :goto_2a

    .line 1162
    :cond_67
    invoke-virtual {p0, p2, v1, v6}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    .line 1163
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->cont:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1164
    invoke-virtual {p0, p4, v1}, Lcom/sun/tools/javac/jvm/Gen;->genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 1166
    if-eqz p3, :cond_9a

    .line 1167
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v3, p3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1168
    invoke-static {p3}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 1172
    :goto_89
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpTrue()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;I)V

    .line 1173
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    goto :goto_54

    .line 1170
    :cond_9a
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    goto :goto_89
.end method

.method private genNullCheck(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .registers 8

    .line 2088
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v0, Lcom/sun/tools/javac/util/Names;->getClass:Lcom/sun/tools/javac/util/Name;

    .line 2089
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 2088
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->callMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Z)V

    .line 2090
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2091
    return-void
.end method

.method private initCode(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;Z)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;Z)I"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 1039
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1042
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/Gen;->lineDebugInfo:Z

    if-eqz v2, :cond_c4

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    :goto_c
    iget-boolean v4, p0, Lcom/sun/tools/javac/jvm/Gen;->varDebugInfo:Z

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Gen;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    iget-boolean v6, p0, Lcom/sun/tools/javac/jvm/Gen;->debugCode:Z

    .line 1048
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v2, :cond_c7

    new-instance v7, Lcom/sun/tools/javac/jvm/CRTable;

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Ljava/util/Map;

    invoke-direct {v7, p1, v0}, Lcom/sun/tools/javac/jvm/CRTable;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Ljava/util/Map;)V

    .line 1049
    :goto_1f
    new-instance v0, Lcom/sun/tools/javac/jvm/Code;

    iget-object v8, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v9, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v10, p0, Lcom/sun/tools/javac/jvm/Gen;->pool:Lcom/sun/tools/javac/jvm/Pool;

    move v2, p3

    invoke-direct/range {v0 .. v10}, Lcom/sun/tools/javac/jvm/Code;-><init>(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;ZLcom/sun/tools/javac/util/Position$LineMap;ZLcom/sun/tools/javac/jvm/Code$StackMapFormat;ZLcom/sun/tools/javac/jvm/CRTable;Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/jvm/Pool;)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1053
    new-instance v0, Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sun/tools/javac/jvm/Items;-><init>(Lcom/sun/tools/javac/jvm/Pool;Lcom/sun/tools/javac/jvm/Code;Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    .line 1054
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_5d

    .line 1055
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for body "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1059
    :cond_5d
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_95

    .line 1060
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1061
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    if-eq v5, v0, :cond_7e

    .line 1062
    invoke-static {v5}, Lcom/sun/tools/javac/jvm/UninitializedType;->uninitializedThis(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/UninitializedType;

    move-result-object v5

    .line 1063
    :cond_7e
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    new-instance v7, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x10

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    iget-object v6, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1064
    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/jvm/Code;->newLocal(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)I

    move-result v1

    .line 1063
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->setDefined(I)V

    .line 1070
    :cond_95
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_98
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1071
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v2, v0}, Lcom/sun/tools/javac/jvm/Gen;->checkDimension(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 1072
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->newLocal(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->setDefined(I)V

    .line 1070
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_98

    :cond_c4
    move-object v3, v0

    .line 1042
    goto/16 :goto_c

    :cond_c7
    move-object v7, v0

    .line 1049
    goto/16 :goto_1f

    .line 1076
    :cond_ca
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v0

    .line 1077
    :goto_d4
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code;->entryPoint()I

    .line 1080
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iput-boolean v11, v1, Lcom/sun/tools/javac/jvm/Code;->pendingStackMap:Z

    .line 1082
    return v0

    :cond_de
    move v0, v11

    .line 1076
    goto :goto_d4
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Gen;
    .registers 2

    .line 97
    sget-object v0, Lcom/sun/tools/javac/jvm/Gen;->genKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen;

    .line 98
    if-nez v0, :cond_f

    .line 99
    new-instance v0, Lcom/sun/tools/javac/jvm/Gen;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/jvm/Gen;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 100
    :cond_f
    return-object v0
.end method

.method private isAccessSuper(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)Z
    .registers 6

    .line 400
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    .line 402
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->isOddAccessName(Lcom/sun/tools/javac/util/Name;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 400
    :goto_16
    return v0

    .line 402
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isOddAccessName(Lcom/sun/tools/javac/util/Name;)Z
    .registers 4

    const/4 v0, 0x1

    .line 409
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->accessDollar:Lcom/sun/tools/javac/util/Name;

    .line 410
    invoke-virtual {p1, v1}, Lcom/sun/tools/javac/util/Name;->startsWith(Lcom/sun/tools/javac/util/Name;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 411
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/sun/tools/javac/util/Name;->getByteAt(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_18

    .line 409
    :goto_17
    return v0

    .line 411
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static one(I)I
    .registers 2

    .line 257
    invoke-static {p0}, Lcom/sun/tools/javac/jvm/Gen;->zero(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static qsort2([I[III)V
    .registers 9

    .line 1334
    .line 1336
    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    aget v2, p0, v0

    move v0, p3

    move v1, p2

    .line 1338
    :cond_8
    :goto_8
    aget v3, p0, v1

    if-ge v3, v2, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1339
    :cond_f
    :goto_f
    aget v3, p0, v0

    if-ge v2, v3, :cond_16

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 1340
    :cond_16
    if-gt v1, v0, :cond_2c

    .line 1341
    aget v3, p0, v1

    .line 1342
    aget v4, p0, v0

    aput v4, p0, v1

    .line 1343
    aput v3, p0, v0

    .line 1344
    aget v3, p1, v1

    .line 1345
    aget v4, p1, v0

    aput v4, p1, v1

    .line 1346
    aput v3, p1, v0

    .line 1347
    add-int/lit8 v1, v1, 0x1

    .line 1348
    add-int/lit8 v0, v0, -0x1

    .line 1350
    :cond_2c
    if-le v1, v0, :cond_8

    .line 1351
    if-ge p2, v0, :cond_33

    invoke-static {p0, p1, p2, v0}, Lcom/sun/tools/javac/jvm/Gen;->qsort2([I[III)V

    .line 1352
    :cond_33
    if-ge v1, p3, :cond_38

    invoke-static {p0, p1, v1, p3}, Lcom/sun/tools/javac/jvm/Gen;->qsort2([I[III)V

    .line 1353
    :cond_38
    return-void
.end method

.method public static zero(I)I
    .registers 3

    const/4 v0, 0x3

    .line 234
    if-eqz p0, :cond_14

    const/4 v1, 0x1

    if-eq p0, v1, :cond_23

    const/4 v1, 0x2

    if-eq p0, v1, :cond_20

    if-eq p0, v0, :cond_1d

    const/4 v1, 0x5

    if-eq p0, v1, :cond_14

    const/4 v1, 0x6

    if-eq p0, v1, :cond_14

    const/4 v1, 0x7

    if-ne p0, v1, :cond_15

    .line 245
    :cond_14
    :goto_14
    return v0

    .line 247
    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "zero"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 245
    :cond_1d
    const/16 v0, 0xe

    goto :goto_14

    .line 243
    :cond_20
    const/16 v0, 0xb

    goto :goto_14

    .line 241
    :cond_23
    const/16 v0, 0x9

    goto :goto_14
.end method


# virtual methods
.method appendString(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 5

    .line 2152
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2153
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_1a

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v1, v2, :cond_1a

    .line 2154
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 2156
    :cond_1a
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Gen;->getStringBufferAppend(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/jvm/Items;->makeMemberItem(Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->invoke()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2157
    return-void
.end method

.method appendStrings(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 6

    .line 2178
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 2179
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v2, 0x47

    if-ne v0, v2, :cond_34

    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_34

    move-object v0, v1

    .line 2180
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    .line 2181
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_34

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v3, 0x100

    if-ne v2, v3, :cond_34

    .line 2183
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/Gen;->appendStrings(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 2184
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->appendStrings(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 2190
    :goto_33
    return-void

    .line 2188
    :cond_34
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2189
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/Gen;->appendString(Lcom/sun/tools/javac/tree/JCTree;)V

    goto :goto_33
.end method

.method binaryQualifier(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;
    .registers 11

    const-wide/16 v6, 0x1008

    const-wide/16 v4, 0x200

    const-wide/16 v2, 0x0

    .line 288
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3f

    .line 289
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-eq p1, v0, :cond_1a

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eq v0, v1, :cond_1b

    .line 325
    :cond_1a
    :goto_1a
    return-object p1

    .line 293
    :cond_1b
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->arrayBinaryCompatibility()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 294
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v2, 0x1

    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 297
    :goto_33
    invoke-virtual {p1, v1}, Lcom/sun/tools/javac/code/Symbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p1

    goto :goto_1a

    .line 296
    :cond_38
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_33

    .line 300
    :cond_3f
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v1, :cond_1a

    .line 301
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1a

    .line 304
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->obeyBinaryCompatibility()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 305
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 307
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p1

    goto :goto_1a

    .line 309
    :cond_6b
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->interfaceFieldsBinaryCompatibility()Z

    move-result v0

    if-nez v0, :cond_83

    .line 310
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_83

    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    .line 316
    :cond_83
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v1, :cond_1a

    .line 319
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->interfaceObjectOverridesBinaryCompatibility()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 320
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 321
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-nez v0, :cond_1a

    .line 325
    :cond_b4
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p1

    goto/16 :goto_1a
.end method

.method bufferToString(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .registers 8

    .line 2196
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->stringBufferType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v0, Lcom/sun/tools/javac/util/Names;->toString:Lcom/sun/tools/javac/util/Name;

    .line 2200
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 2196
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->callMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Z)V

    .line 2202
    return-void
.end method

.method callMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;Z)V"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    .line 389
    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->resolveInternalMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    .line 390
    if-eqz p5, :cond_19

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStaticItem(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->invoke()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 392
    :goto_18
    return-void

    .line 391
    :cond_19
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne p3, v0, :cond_2a

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/jvm/Items;->makeMemberItem(Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->invoke()Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_18

    :cond_2a
    const/4 v0, 0x0

    goto :goto_22
.end method

.method completeBinop(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 9

    const/16 v4, 0xa6

    .line 2213
    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 2214
    iget v2, p3, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    .line 2215
    const/16 v1, 0x9f

    if-lt v2, v1, :cond_3f

    const/16 v1, 0xa4

    if-gt v2, v1, :cond_3f

    iget-object v1, p2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 2216
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_3f

    iget-object v1, p2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 2217
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_3f

    .line 2218
    add-int/lit8 v2, v2, -0x6

    .line 2241
    :cond_2a
    :goto_2a
    const/16 v1, 0x99

    if-lt v2, v1, :cond_30

    if-le v2, v4, :cond_38

    :cond_30
    const/16 v1, 0xc6

    if-eq v2, v1, :cond_38

    const/16 v1, 0xc7

    if-ne v2, v1, :cond_82

    .line 2243
    :cond_38
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 2246
    :goto_3e
    return-object v0

    .line 2219
    :cond_3f
    const/16 v1, 0xa5

    if-lt v2, v1, :cond_4e

    if-gt v2, v4, :cond_4e

    .line 2220
    invoke-static {p2}, Lcom/sun/tools/javac/tree/TreeInfo;->isNull(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2221
    add-int/lit8 v2, v2, 0x21

    goto :goto_2a

    .line 2227
    :cond_4e
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p3, v1}, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2228
    const/16 v3, 0x10e

    if-lt v2, v3, :cond_90

    const/16 v3, 0x113

    if-gt v2, v3, :cond_90

    .line 2229
    add-int/lit16 v1, v2, -0x96

    .line 2230
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v2, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    move v2, v1

    .line 2233
    :goto_6d
    invoke-virtual {p0, p2, v3}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2236
    const/16 v1, 0x200

    if-lt v2, v1, :cond_2a

    .line 2237
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    shr-int/lit8 v3, v2, 0x9

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2238
    and-int/lit16 v2, v2, 0xff

    goto :goto_2a

    .line 2245
    :cond_82
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2246
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    goto :goto_3e

    :cond_90
    move-object v3, v1

    goto :goto_6d
.end method

.method emitMinusOne(I)V
    .registers 8

    .line 266
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 267
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v4, -0x1

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Items;->makeImmediateItem(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 271
    :goto_17
    return-void

    .line 269
    :cond_18
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_17
.end method

.method endFinalizerGap(Lcom/sun/tools/javac/comp/Env;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    .line 454
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 455
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 456
    :cond_2a
    return-void
.end method

.method endFinalizerGaps(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Env;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    .line 466
    const/4 v0, 0x0

    move-object v1, p1

    .line 467
    :goto_2
    if-eq v0, p2, :cond_c

    .line 468
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/Gen;->endFinalizerGap(Lcom/sun/tools/javac/comp/Env;)V

    .line 470
    iget-object p1, v1, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    move-object v0, v1

    move-object v1, p1

    goto :goto_2

    .line 472
    :cond_c
    return-void
.end method

.method estimateCodeComplexity(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 1613
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 1774
    :goto_3
    return v0

    .line 1772
    :cond_4
    new-instance v0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;-><init>(Lcom/sun/tools/javac/jvm/Gen;)V

    .line 1773
    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 1774
    iget v0, v0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    goto :goto_3
.end method

.method public genArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    .registers 5
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
            ">;)V"
        }
    .end annotation

    .line 924
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 925
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 926
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 924
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 929
    :cond_1a
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 930
    return-void
.end method

.method genCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;Lcom/sun/tools/javac/comp/Env;IILcom/sun/tools/javac/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;II",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1544
    if-eq p3, p4, :cond_d1

    .line 1545
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->isMultiCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1546
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lcom/sun/tools/javac/util/List;

    move-object v6, v0

    move v2, p3

    .line 1548
    :goto_12
    invoke-virtual {p5}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1549
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1550
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v5

    .line 1551
    iget-object v0, p5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1552
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1553
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v4

    move-object v0, p0

    .line 1552
    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->registerCatch(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V

    goto :goto_1c

    .line 1547
    :cond_49
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v6, v0

    move v2, p3

    goto :goto_12

    .line 1556
    :cond_54
    iget-object v1, p5, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1557
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 1558
    iget-object p5, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v2, p3

    goto :goto_12

    .line 1560
    :cond_62
    if-ge v2, p4, :cond_8e

    .line 1561
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_68
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1562
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v5

    .line 1563
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1564
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v4

    move-object v0, p0

    move v3, p4

    .line 1563
    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->registerCatch(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V

    goto :goto_68

    .line 1568
    :cond_8e
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1569
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1570
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code;->markStatBegin()V

    .line 1571
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 1572
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->newLocal(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)I

    .line 1573
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Items;->makeLocalItem(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/jvm/Items$LocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->store()V

    .line 1574
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->firstStatPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1575
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, p2, v2}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    .line 1576
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 1577
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1544
    :cond_d1
    return-void
.end method

.method public genClass(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 2398
    :try_start_2
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Gen;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    .line 2399
    iget-object v0, p2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2400
    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 2401
    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Ljava/util/Map;

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->endPositions:Ljava/util/Map;

    .line 2404
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Gen;->generateIproxies:Z

    if-eqz v1, :cond_26

    .line 2405
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x600

    and-long/2addr v4, v6

    const-wide/16 v6, 0x400

    cmp-long v1, v4, v6

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Gen;->allowGenerics:Z

    if-nez v1, :cond_26

    .line 2408
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->implementInterfaceMethods(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 2409
    :cond_26
    iget-object v1, p2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/jvm/Gen;->normalizeDefs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 2410
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    .line 2411
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Pool;->reset()V

    .line 2412
    new-instance v3, Lcom/sun/tools/javac/comp/Env;

    new-instance v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v0}, Lcom/sun/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-direct {v3, p2, v0}, Lcom/sun/tools/javac/comp/Env;-><init>(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    .line 2414
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object v0, v3, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 2415
    iput-object p2, v3, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 2416
    iget-object v0, p2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_4a
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2417
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/jvm/Gen;->genDef(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 2416
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_4a

    .line 2419
    :cond_5b
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Pool;->numEntries()I

    move-result v0

    const/4 v1, 0x1

    const v3, 0xffff

    if-le v0, v3, :cond_7b

    .line 2420
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "limit.pool"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2421
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    .line 2423
    :cond_7b
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    if-eqz v0, :cond_a0

    .line 2425
    iget-object v0, p2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v3, v0

    :goto_82
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 2426
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_9c

    .line 2427
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 2425
    :cond_9c
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v0

    goto :goto_82

    .line 2430
    :cond_a0
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 2431
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I
    :try_end_a8
    .catchall {:try_start_2 .. :try_end_a8} :catchall_b8

    if-nez v0, :cond_b6

    move v0, v1

    .line 2434
    :goto_ab
    iput-object v8, p0, Lcom/sun/tools/javac/jvm/Gen;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    .line 2435
    iput-object v8, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    .line 2436
    iput-object v8, p0, Lcom/sun/tools/javac/jvm/Gen;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 2437
    iput-object v8, p0, Lcom/sun/tools/javac/jvm/Gen;->endPositions:Ljava/util/Map;

    .line 2438
    iput v2, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    .line 2431
    return v0

    :cond_b6
    move v0, v2

    goto :goto_ab

    .line 2434
    :catchall_b8
    move-exception v0

    iput-object v8, p0, Lcom/sun/tools/javac/jvm/Gen;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    .line 2435
    iput-object v8, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    .line 2436
    iput-object v8, p0, Lcom/sun/tools/javac/jvm/Gen;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 2437
    iput-object v8, p0, Lcom/sun/tools/javac/jvm/Gen;->endPositions:Ljava/util/Map;

    .line 2438
    iput v2, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    .line 2439
    throw v0
.end method

.method public genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;
    .registers 7

    const/4 v0, 0x0

    .line 833
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-nez v1, :cond_a

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;Z)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 837
    :goto_9
    return-object v0

    .line 834
    :cond_a
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    .line 835
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;Z)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 836
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v3

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    goto :goto_9
.end method

.method public genCond(Lcom/sun/tools/javac/tree/JCTree;Z)Lcom/sun/tools/javac/jvm/Items$CondItem;
    .registers 10

    const/16 v5, 0x10

    .line 851
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_9f

    .line 853
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    .line 854
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v1

    .line 855
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$CondItem;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 856
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 857
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v5}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v1

    .line 858
    if-eqz p2, :cond_31

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, v1, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    :cond_31
    move-object v0, v1

    .line 884
    :cond_32
    :goto_32
    return-object v0

    .line 861
    :cond_33
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 862
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 863
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v5}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v1

    .line 864
    if-eqz p2, :cond_4c

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, v1, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    :cond_4c
    move-object v0, v1

    .line 865
    goto :goto_32

    .line 867
    :cond_4e
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpFalse()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v2

    .line 868
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 869
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v5}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v1

    .line 870
    if-eqz p2, :cond_65

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v3, v1, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 871
    :cond_65
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpFalse()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v3

    .line 872
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 873
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v4, 0xa7

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v1

    .line 874
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 875
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v5}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v2

    .line 876
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget v5, v2, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    iget-object v6, v2, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 877
    invoke-static {v1, v6}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v1

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 878
    invoke-static {v3, v2}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v2

    .line 876
    invoke-virtual {v4, v5, v1, v2}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v1

    .line 879
    if-eqz p2, :cond_9d

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, v1, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    :cond_9d
    move-object v0, v1

    .line 880
    goto :goto_32

    .line 882
    :cond_9f
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->mkCond()Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 883
    if-eqz p2, :cond_32

    iput-object p1, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_32
.end method

.method public genDef(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    .line 739
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    .line 741
    :try_start_2
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    .line 742
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    :try_end_7
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_15

    .line 746
    :goto_7
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    .line 748
    return-void

    .line 743
    :catch_a
    move-exception v0

    .line 744
    :try_start_b
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    goto :goto_7

    .line 746
    :catchall_15
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    .line 747
    throw v0
.end method

.method public genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 7

    .line 896
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    .line 898
    :try_start_2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 900
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sun/tools/javac/jvm/Gen;->checkStringConstant(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;)V

    .line 901
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/jvm/Items;->makeImmediateItem(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 906
    :goto_27
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/Items$Item;->coerce(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;
    :try_end_2c
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_2 .. :try_end_2c} :catch_36
    .catchall {:try_start_2 .. :try_end_2c} :catchall_50

    move-result-object v0

    .line 912
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    .line 910
    :goto_2f
    return-object v0

    .line 903
    :cond_30
    :try_start_30
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    .line 904
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    :try_end_35
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_30 .. :try_end_35} :catch_36
    .catchall {:try_start_30 .. :try_end_35} :catchall_50

    goto :goto_27

    .line 907
    :catch_36
    move-exception v0

    .line 908
    :try_start_37
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;

    .line 909
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    const/4 v2, 0x1

    iput v2, v0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    .line 910
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_50

    move-result-object v0

    .line 912
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    goto :goto_2f

    :catchall_50
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    .line 913
    throw v0
.end method

.method genFinalizer(Lcom/sun/tools/javac/comp/Env;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

    if-eqz v0, :cond_19

    .line 426
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;->gen()V

    .line 427
    :cond_19
    return-void
.end method

.method genMethod(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;Z)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 973
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 975
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p2, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/util/List;)I

    move-result v3

    .line 976
    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2c

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_2c
    move v0, v2

    :goto_2d
    add-int/2addr v0, v3

    const/16 v3, 0xff

    if-le v0, v3, :cond_48

    .line 978
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "limit.parameters"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    .line 1036
    :cond_45
    :goto_45
    return-void

    :cond_46
    move v0, v1

    .line 976
    goto :goto_2d

    .line 980
    :cond_48
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_45

    .line 982
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/jvm/Gen;->initCode(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;Z)I

    move-result v0

    .line 985
    :try_start_50
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v3, p2}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V
    :try_end_55
    .catch Lcom/sun/tools/javac/jvm/Gen$CodeSizeOverflow; {:try_start_50 .. :try_end_55} :catch_b9

    .line 992
    :goto_55
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v3, v3, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v3, :cond_f7

    .line 999
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Code;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 1000
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v4}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1001
    iget-object v3, p2, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    if-eqz v3, :cond_84

    iget-object v3, p2, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1002
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget v3, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_c4

    .line 1003
    :cond_84
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 1012
    :cond_8b
    :goto_8b
    iget-boolean v3, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v3, :cond_9f

    .line 1013
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1016
    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v5

    .line 1013
    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6, v0, v5}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    .line 1018
    :cond_9f
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 1021
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1, v3}, Lcom/sun/tools/javac/jvm/Code;->checkLimits(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Log;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1022
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    goto :goto_45

    .line 986
    :catch_b9
    move-exception v0

    .line 988
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/jvm/Gen;->initCode(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;Z)I

    move-result v0

    .line 989
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v3, p2}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    goto :goto_55

    .line 1007
    :cond_c4
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Code;->entryPoint()I

    move-result v3

    .line 1008
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    const/16 v5, 0xa7

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v4

    .line 1009
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpTrue()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;I)V

    goto :goto_8b

    .line 1028
    :cond_dc
    if-nez p3, :cond_e7

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/Code;->fatcode:Z

    if-eqz v0, :cond_e7

    invoke-virtual {p0, p1, p2, v2}, Lcom/sun/tools/javac/jvm/Gen;->genMethod(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;Z)V

    .line 1031
    :cond_e7
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    sget-object v1, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->JSR202:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    if-ne v0, v1, :cond_45

    .line 1032
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iput-object v8, v0, Lcom/sun/tools/javac/jvm/Code;->lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 1033
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iput-object v8, v0, Lcom/sun/tools/javac/jvm/Code;->frameBeforeLast:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    goto/16 :goto_45

    .line 993
    :cond_f7
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "stack.sim.error"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v4, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 994
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 778
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 779
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Gen;->genDef(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 785
    :cond_12
    :goto_12
    return-void

    .line 780
    :cond_13
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->isSwitch:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 783
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->newLocal(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)I

    goto :goto_12
.end method

.method public genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;I)V"
        }
    .end annotation

    .line 763
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-nez v0, :cond_8

    .line 764
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 771
    :goto_7
    return-void

    .line 767
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v0

    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 769
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1a

    or-int/lit8 p3, p3, 0x2

    .line 770
    :cond_1a
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v2

    invoke-virtual {v1, p1, p3, v0, v2}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    goto :goto_7
.end method

.method public genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    .line 817
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 818
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    .line 817
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 819
    :cond_11
    return-void
.end method

.method public genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;I)V"
        }
    .end annotation

    .line 800
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-nez v0, :cond_8

    .line 801
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Gen;->genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 811
    :goto_7
    return-void

    .line 804
    :cond_8
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 805
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    or-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    goto :goto_7

    .line 807
    :cond_19
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v0

    .line 808
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Gen;->genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 809
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v2

    invoke-virtual {v1, p1, p3, v0, v2}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    goto :goto_7
.end method

.method genTry(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    const/16 v11, 0xa7

    const/4 v7, 0x0

    .line 1443
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v9, v0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 1444
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v3

    .line 1445
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->dup()Lcom/sun/tools/javac/jvm/Code$State;

    move-result-object v10

    .line 1446
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p3, v0}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    .line 1447
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v4

    .line 1448
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

    if-eqz v0, :cond_a9

    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

    .line 1450
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;->hasFinalizer()Z

    move-result v0

    if-eqz v0, :cond_a9

    const/4 v0, 0x1

    move v6, v0

    .line 1451
    :goto_35
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 1452
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1453
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/jvm/Gen;->genFinalizer(Lcom/sun/tools/javac/comp/Env;)V

    .line 1454
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, p3, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1455
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v11}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 1456
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/jvm/Gen;->endFinalizerGap(Lcom/sun/tools/javac/comp/Env;)V

    .line 1457
    if-eq v3, v4, :cond_ad

    move-object v8, v0

    :goto_62
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1459
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v10, v0}, Lcom/sun/tools/javac/jvm/Code;->entryPoint(Lcom/sun/tools/javac/jvm/Code$State;Lcom/sun/tools/javac/code/Type;)I

    .line 1460
    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->genCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;Lcom/sun/tools/javac/comp/Env;IILcom/sun/tools/javac/util/List;)V

    .line 1461
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/jvm/Gen;->genFinalizer(Lcom/sun/tools/javac/comp/Env;)V

    .line 1462
    if-nez v6, :cond_8d

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1463
    :cond_8d
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, p3, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1464
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1465
    invoke-virtual {v0, v11}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 1464
    invoke-static {v8, v0}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 1467
    :goto_a2
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/jvm/Gen;->endFinalizerGap(Lcom/sun/tools/javac/comp/Env;)V

    .line 1457
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v8, v0

    goto :goto_62

    :cond_a9
    move v6, v7

    .line 1450
    goto :goto_35

    :cond_ab
    move-object v0, v8

    .line 1462
    goto :goto_a2

    :cond_ad
    move-object v8, v0

    .line 1469
    :cond_ae
    if-eqz v6, :cond_181

    .line 1472
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->newRegSegment()V

    .line 1477
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v10, v1}, Lcom/sun/tools/javac/jvm/Code;->entryPoint(Lcom/sun/tools/javac/jvm/Code$State;Lcom/sun/tools/javac/code/Type;)I

    move-result v4

    move v2, v3

    .line 1485
    :goto_c0
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 1486
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1487
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    move-object v0, p0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->registerCatch(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V

    .line 1489
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_c0

    .line 1491
    :cond_f6
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, p3, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->finalizerPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1492
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->markStatBegin()V

    .line 1494
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->makeTemp(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$LocalItem;

    move-result-object v0

    .line 1495
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->store()V

    .line 1496
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/jvm/Gen;->genFinalizer(Lcom/sun/tools/javac/comp/Env;)V

    .line 1497
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1498
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1499
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p0

    move v5, v7

    .line 1498
    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->registerCatch(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V

    .line 1501
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 1502
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    .line 1505
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->cont:Lcom/sun/tools/javac/jvm/Code$Chain;

    if-eqz v0, :cond_181

    .line 1507
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->cont:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1510
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v1, p3, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->finalizerPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1511
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->markStatBegin()V

    .line 1514
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->makeTemp(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$LocalItem;

    move-result-object v1

    .line 1515
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->store()V

    .line 1518
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;->genLast()V

    .line 1521
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0xa9

    iget v1, v1, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop1w(II)V

    .line 1522
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    .line 1527
    :cond_181
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v8}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1529
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v9}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 1530
    return-void
.end method

.method getStringBufferAppend(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;
    .registers 10

    .line 2160
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    .line 2161
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->stringBufferAppend:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 2162
    if-nez v0, :cond_2d

    .line 2163
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->stringBufferType:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->append:Lcom/sun/tools/javac/util/Name;

    .line 2167
    invoke-static {p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2163
    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->resolveInternalMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 2169
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->stringBufferAppend:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    :cond_2d
    return-object v0
.end method

.method hasFinally(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;)Z"
        }
    .end annotation

    .line 482
    :goto_0
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    if-eq v0, p1, :cond_1f

    .line 483
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1c

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;->hasFinalizer()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 484
    const/4 v0, 0x1

    .line 487
    :goto_1b
    return v0

    .line 485
    :cond_1c
    iget-object p2, p2, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    goto :goto_0

    .line 487
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method implementInterfaceMethods(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 2

    .line 652
    invoke-virtual {p0, p1, p1}, Lcom/sun/tools/javac/jvm/Gen;->implementInterfaceMethods(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 653
    return-void
.end method

.method implementInterfaceMethods(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 15

    const-wide/16 v10, 0x0

    .line 665
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    :goto_b
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 666
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 667
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v3, v1

    .line 668
    :goto_20
    if-eqz v3, :cond_5a

    .line 670
    iget-object v1, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_46

    iget-object v1, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v1, v4, v10

    if-nez v1, :cond_46

    .line 671
    iget-object v1, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 672
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->binaryImplementation(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v4

    .line 673
    if-nez v4, :cond_4a

    .line 674
    invoke-direct {p0, p2, v1}, Lcom/sun/tools/javac/jvm/Gen;->addAbstractMethod(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 669
    :cond_46
    :goto_46
    iget-object v1, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v3, v1

    goto :goto_20

    .line 675
    :cond_4a
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v6

    const-wide/32 v8, 0x200000

    and-long/2addr v6, v8

    cmp-long v5, v6, v10

    if-eqz v5, :cond_46

    .line 676
    invoke-direct {p0, p2, v4, v1}, Lcom/sun/tools/javac/jvm/Gen;->adjustAbstractMethod(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    goto :goto_46

    .line 679
    :cond_5a
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/jvm/Gen;->implementInterfaceMethods(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 665
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_b

    .line 681
    :cond_61
    return-void
.end method

.method loadIntConst(I)V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Items;->makeImmediateItem(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 226
    return-void
.end method

.method makeNewArray(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 9

    const/4 v4, 0x1

    .line 1936
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1937
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->dimensions(Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_21

    .line 1938
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "limit.dimensions"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1939
    iget v1, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    .line 1941
    :cond_21
    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->arraycode(Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    .line 1942
    if-eqz v1, :cond_2b

    if-ne v1, v4, :cond_3b

    if-ne p3, v4, :cond_3b

    .line 1943
    :cond_2b
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-virtual {v1, v0, p2}, Lcom/sun/tools/javac/jvm/Code;->emitAnewarray(ILcom/sun/tools/javac/code/Type;)V

    .line 1949
    :goto_34
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    return-object v0

    .line 1944
    :cond_3b
    if-ne v1, v4, :cond_47

    .line 1945
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    invoke-virtual {v0, p3, v1, p2}, Lcom/sun/tools/javac/jvm/Code;->emitMultianewarray(IILcom/sun/tools/javac/code/Type;)V

    goto :goto_34

    .line 1947
    :cond_47
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/jvm/Code;->emitNewarray(ILcom/sun/tools/javac/code/Type;)V

    goto :goto_34
.end method

.method makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I
    .registers 6

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Gen;->checkDimension(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 337
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_d

    iget-object p2, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    :cond_d
    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method makeStringBuffer(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .registers 8

    .line 2142
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xbb

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->stringBufferType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v2}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 2143
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2144
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->stringBufferType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    .line 2145
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 2144
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->callMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Z)V

    .line 2146
    return-void
.end method

.method makeTemp(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$LocalItem;
    .registers 9

    .line 367
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1000

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v6, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 371
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->newLocal(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)I

    .line 372
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeLocalItem(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/jvm/Items$LocalItem;

    move-result-object v0

    return-object v0
.end method

.method normalizeDefs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 503
    new-instance v7, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v7}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 504
    new-instance v8, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v8}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 509
    :goto_f
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 510
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 511
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_bd

    const/4 v3, 0x5

    if-eq v2, v3, :cond_41

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2c

    .line 552
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 521
    :cond_29
    :goto_29
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_f

    .line 513
    :cond_2c
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 514
    const-wide/16 v2, 0x8

    iget-wide v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3d

    .line 515
    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_29

    .line 517
    :cond_3d
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_29

    .line 523
    :cond_41
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 524
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 525
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v3, v4}, Lcom/sun/tools/javac/jvm/Gen;->checkDimension(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 526
    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v3, :cond_29

    .line 527
    const-wide/16 v4, 0x8

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v10

    and-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-nez v3, :cond_84

    .line 529
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 530
    invoke-virtual {v3, v2, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Assignment(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    .line 531
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 532
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->endPositions:Ljava/util/Map;

    if-eqz v3, :cond_29

    .line 533
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 534
    if-eqz v0, :cond_29

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->endPositions:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 536
    :cond_84
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_ae

    .line 539
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos:I

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 540
    invoke-virtual {v3, v2, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Assignment(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    .line 541
    invoke-virtual {v7, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 542
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->endPositions:Ljava/util/Map;

    if-eqz v3, :cond_29

    .line 543
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 544
    if-eqz v0, :cond_29

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->endPositions:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 547
    :cond_ae
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sun/tools/javac/jvm/Gen;->checkStringConstant(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 520
    :cond_bd
    invoke-virtual {v8, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto/16 :goto_29

    .line 556
    :cond_c2
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_e2

    .line 557
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 558
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 559
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->normalizeMethod(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/util/List;)V

    goto :goto_d0

    .line 564
    :cond_e2
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_13d

    .line 565
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->clinit:Lcom/sun/tools/javac/util/Name;

    .line 568
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v1, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    .line 569
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x8

    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v10, v10, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v6, v9, v10}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 571
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 572
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 573
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v3

    .line 574
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    iput v0, v3, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    .line 575
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 578
    :cond_13d
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method normalizeMethod(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;)V"
        }
    .end annotation

    .line 603
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_84

    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->isInitialConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 606
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    .line 607
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 609
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    move-object v1, v0

    .line 612
    :goto_1e
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isSyntheticInit(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 613
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 614
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1e

    .line 617
    :cond_31
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 618
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 620
    :goto_39
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 621
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isSyntheticInit(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 622
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 623
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_39

    .line 626
    :cond_52
    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 628
    :goto_55
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 629
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 630
    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_55

    .line 633
    :cond_63
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    .line 634
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_84

    .line 635
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    iput v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    .line 637
    :cond_84
    return-void
.end method

.method registerCatch(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V
    .registers 11

    .line 1587
    if-eq p2, p3, :cond_11

    .line 1588
    int-to-char v0, p2

    .line 1589
    int-to-char v1, p3

    .line 1590
    int-to-char v2, p4

    .line 1591
    if-ne v0, p2, :cond_12

    if-ne v1, p3, :cond_12

    if-ne v2, p4, :cond_12

    .line 1594
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    int-to-char v4, p5

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/sun/tools/javac/jvm/Code;->addCatch(CCCC)V

    .line 1606
    :cond_11
    :goto_11
    return-void

    .line 1597
    :cond_12
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->useJsrLocally:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->generateStackMapTable()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1601
    :cond_1e
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "limit.code.too.large.for.try.stmt"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1602
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen;->nerrs:I

    goto :goto_11

    .line 1598
    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->useJsrLocally:Z

    .line 1599
    new-instance v0, Lcom/sun/tools/javac/jvm/Gen$CodeSizeOverflow;

    invoke-direct {v0}, Lcom/sun/tools/javac/jvm/Gen$CodeSizeOverflow;-><init>()V

    throw v0
.end method

.method unwind(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;)",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/jvm/Gen$GenContext;",
            ">;"
        }
    .end annotation

    .line 438
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/jvm/Gen;->genFinalizer(Lcom/sun/tools/javac/comp/Env;)V

    .line 441
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    if-ne v0, p1, :cond_8

    .line 444
    return-object p2

    .line 442
    :cond_8
    iget-object p2, p2, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    goto :goto_0
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 6

    .line 1856
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->methodType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    .line 1860
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1861
    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Symbol;->externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1860
    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->genArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    .line 1862
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->invoke()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1863
    return-void
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 5

    .line 1957
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    .line 1958
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1959
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Items;->makeAssignItem(Lcom/sun/tools/javac/jvm/Items$Item;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1960
    return-void
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 8

    const/16 v5, 0x59

    const/4 v4, 0x4

    .line 1963
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 1965
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_50

    .line 1967
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->makeStringBuffer(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 1971
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    .line 1972
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->width()I

    move-result v0

    if-lez v0, :cond_33

    .line 1973
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->width()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 1977
    :cond_33
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1978
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->appendString(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1981
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->appendStrings(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1984
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->bufferToString(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 2009
    :goto_47
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeAssignItem(Lcom/sun/tools/javac/jvm/Items$Item;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2010
    :goto_4f
    return-void

    .line 1987
    :cond_50
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    .line 1992
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v2

    const/16 v3, 0x58

    if-eq v2, v3, :cond_68

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v2

    if-ne v2, v5, :cond_a5

    :cond_68
    instance-of v2, v1, Lcom/sun/tools/javac/jvm/Items$LocalItem;

    if-eqz v2, :cond_a5

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v4, :cond_a5

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v4, :cond_a5

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1996
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a5

    .line 1997
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1998
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v2

    if-ne v2, v5, :cond_ca

    neg-int v0, v0

    move v2, v0

    :goto_9c
    move-object v0, v1

    .line 1999
    check-cast v0, Lcom/sun/tools/javac/jvm/Items$LocalItem;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->incr(I)V

    .line 2000
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_4f

    .line 2005
    :cond_a5
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->duplicate()V

    .line 2006
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Items$Item;->coerce(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2007
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v3, v0}, Lcom/sun/tools/javac/jvm/Gen;->completeBinop(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Items$Item;->coerce(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    goto/16 :goto_47

    :cond_ca
    move v2, v0

    goto :goto_9c
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 7

    const/16 v4, 0x10

    const/16 v3, 0x8

    .line 2094
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 2095
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2c

    .line 2097
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->makeStringBuffer(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 2099
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/Gen;->appendStrings(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 2101
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->bufferToString(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 2102
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2135
    :goto_2b
    return-void

    .line 2103
    :cond_2c
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_67

    .line 2104
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 2105
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v1

    if-nez v1, :cond_64

    .line 2106
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpFalse()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v1

    .line 2107
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 2108
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 2109
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget v3, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    iget-object v4, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 2112
    invoke-static {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 2110
    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_2b

    .line 2115
    :cond_64
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_2b

    .line 2117
    :cond_67
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_a2

    .line 2118
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 2119
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->isTrue()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 2120
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpTrue()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v1

    .line 2121
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 2122
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 2123
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget v3, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    iget-object v4, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 2125
    invoke-static {v1, v4}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v1

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 2124
    invoke-virtual {v2, v3, v1, v0}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_2b

    .line 2128
    :cond_9f
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_2b

    .line 2131
    :cond_a2
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    .line 2132
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2133
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/Gen;->completeBinop(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto/16 :goto_2b
.end method

.method public visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 5

    .line 1102
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 1103
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    new-instance v2, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v2}, Lcom/sun/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 1104
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v2, v1}, Lcom/sun/tools/javac/jvm/Gen;->genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 1106
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_30

    .line 1107
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Code;->statBegin(I)V

    .line 1108
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 1109
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sun/tools/javac/jvm/Code;->pendingStatPos:I

    .line 1111
    :cond_30
    return-void
.end method

.method public visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V
    .registers 6

    .line 1812
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->target:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->unwind(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 1813
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1814
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v3, 0xa7

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Gen$GenContext;->addExit(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1815
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->endFinalizerGaps(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Env;)V

    .line 1816
    return-void

    .line 1813
    :cond_29
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 9

    const/16 v6, 0x10

    const/4 v1, 0x0

    .line 1866
    const/4 v0, 0x0

    .line 1867
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v2

    .line 1868
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpFalse()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v3

    .line 1869
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v4

    if-nez v4, :cond_56

    .line 1870
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1871
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v0

    .line 1872
    :goto_27
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v4}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1873
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/jvm/Code$State;->forceStackTop(Lcom/sun/tools/javac/code/Type;)V

    .line 1874
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1875
    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v5

    .line 1874
    invoke-virtual {v2, v4, v6, v0, v5}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    .line 1876
    :cond_4e
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0xa7

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 1878
    :cond_56
    if-eqz v3, :cond_8e

    .line 1879
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1880
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v2, :cond_67

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    .line 1881
    :cond_67
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1882
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Code$State;->forceStackTop(Lcom/sun/tools/javac/code/Type;)V

    .line 1883
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1884
    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v4

    .line 1883
    invoke-virtual {v2, v3, v6, v1, v4}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    .line 1886
    :cond_8e
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1887
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1888
    return-void

    :cond_9e
    move v0, v1

    .line 1871
    goto :goto_27
.end method

.method public visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V
    .registers 6

    .line 1819
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->target:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->unwind(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 1820
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1821
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v3, 0xa7

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Gen$GenContext;->addCont(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1822
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->endFinalizerGaps(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Env;)V

    .line 1823
    return-void

    .line 1820
    :cond_29
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 8

    .line 1114
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->genLoop(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Z)V

    .line 1115
    return-void
.end method

.method public visitExec(Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .registers 5

    .line 1799
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1800
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v2, 0x36

    if-eq v1, v2, :cond_24

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1c

    .line 1803
    :goto_e
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->drop()V

    .line 1809
    return-void

    .line 1805
    :cond_1c
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->setTag(I)V

    goto :goto_e

    .line 1802
    :cond_24
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->setTag(I)V

    goto :goto_e
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 9

    .line 1122
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v6, v0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 1123
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 1124
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->genLoop(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Z)V

    .line 1125
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 1126
    return-void
.end method

.method public visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 3

    .line 1179
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 12

    const-wide/16 v8, 0x0

    const/16 v4, 0x10

    const/4 v1, 0x1

    .line 2279
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2280
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v2, v3, :cond_17

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v3, :cond_35

    .line 2281
    :cond_17
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v3, :cond_9d

    .line 2282
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items;->makeThisItem()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v2

    .line 2284
    :goto_25
    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v3, v4, :cond_32

    .line 2286
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2287
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeMemberItem(Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v2

    .line 2289
    :cond_32
    iput-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2290
    :goto_34
    return-void

    :cond_35
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4b

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v2, v4, :cond_4b

    .line 2291
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Items;->makeLocalItem(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/jvm/Items$LocalItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_34

    .line 2292
    :cond_4b
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_73

    .line 2293
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Gen;->isAccessSuper(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 2294
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->binaryQualifier(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 2295
    :cond_6a
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Items;->makeStaticItem(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_34

    .line 2297
    :cond_73
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items;->makeThisItem()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2298
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/jvm/Gen;->binaryQualifier(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 2299
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_9b

    move v0, v1

    :goto_94
    invoke-virtual {v3, v2, v0}, Lcom/sun/tools/javac/jvm/Items;->makeMemberItem(Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_34

    :cond_9b
    const/4 v0, 0x0

    goto :goto_94

    .line 2283
    :cond_9d
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items;->makeSuperItem()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v2

    goto :goto_25
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 8

    const/16 v5, 0x11

    .line 1778
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, v0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 1779
    const/4 v0, 0x0

    .line 1780
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v2

    .line 1782
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpFalse()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v3

    .line 1783
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1784
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1785
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v2, v5}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    .line 1786
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0xa7

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 1788
    :cond_33
    if-eqz v3, :cond_45

    .line 1789
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1790
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    if-eqz v2, :cond_45

    .line 1791
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3, v5}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    .line 1793
    :cond_45
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1794
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 1795
    return-void
.end method

.method public visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V
    .registers 4

    .line 2273
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2274
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2275
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeIndexedItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2276
    return-void
.end method

.method public visitLabelled(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .registers 5

    .line 1183
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    new-instance v1, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v1}, Lcom/sun/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 1184
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    .line 1185
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->exit:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1186
    return-void
.end method

.method public visitLetExpr(Lcom/sun/tools/javac/tree/JCTree$LetExpr;)V
    .registers 5

    .line 2377
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 2378
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->defs:Lcom/sun/tools/javac/util/List;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 2379
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->expr:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->expr:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2380
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 2381
    return-void
.end method

.method public visitLiteral(Lcom/sun/tools/javac/tree/JCTree$JCLiteral;)V
    .registers 6

    const/4 v2, 0x1

    .line 2364
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3f

    .line 2365
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2366
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->dimensions(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    if-le v0, v2, :cond_34

    .line 2367
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xc0

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 2368
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2374
    :goto_33
    return-void

    .line 2370
    :cond_34
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_33

    .line 2373
    :cond_3f
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Items;->makeImmediateItem(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_33
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 6

    .line 949
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 950
    iput-object p1, v0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 954
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    .line 956
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->checkDimension(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 957
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genMethod(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;Z)V

    .line 958
    return-void
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 7

    .line 1909
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_4d

    .line 1910
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1911
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->loadIntConst(I)V

    .line 1912
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->makeNewArray(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v4

    .line 1913
    const/4 v0, 0x0

    .line 1914
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    move-object v2, v1

    :goto_24
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1915
    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/Items$Item;->duplicate()V

    .line 1916
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->loadIntConst(I)V

    .line 1917
    add-int/lit8 v1, v0, 0x1

    .line 1918
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1919
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Items;->makeIndexedItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->store()V

    .line 1914
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v0, v1

    goto :goto_24

    .line 1921
    :cond_4a
    iput-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1928
    :goto_4c
    return-void

    .line 1923
    :cond_4d
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_50
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1924
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1923
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_50

    .line 1926
    :cond_69
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->makeNewArray(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_4c
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 7

    const/4 v1, 0x1

    .line 1893
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-nez v0, :cond_4c

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1895
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0xbb

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v3, v4}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 1896
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0x59

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 1901
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Symbol;->externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/jvm/Gen;->genArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    .line 1903
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/jvm/Items;->makeMemberItem(Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->invoke()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1904
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1905
    return-void

    .line 1893
    :cond_4c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public visitParens(Lcom/sun/tools/javac/tree/JCTree$JCParens;)V
    .registers 4

    .line 1953
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1954
    return-void
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 6

    .line 1826
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v2, v0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 1828
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_53

    .line 1829
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    .line 1830
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v3}, Lcom/sun/tools/javac/jvm/Gen;->hasFinally(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1831
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->makeTemp(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$LocalItem;

    move-result-object v0

    .line 1832
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->store()V

    .line 1834
    :cond_29
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v3}, Lcom/sun/tools/javac/jvm/Gen;->unwind(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 1835
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1836
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v3

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v3

    add-int/lit16 v3, v3, 0xac

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    move-object v0, v1

    .line 1841
    :goto_48
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/jvm/Gen;->endFinalizerGaps(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Env;)V

    .line 1842
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 1843
    return-void

    .line 1838
    :cond_53
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->unwind(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 1839
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v3, 0xb1

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_48
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 14

    .line 2304
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2306
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_31

    .line 2307
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->hasClassLiterals()Z

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 2308
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x13

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 2309
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->pt:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2361
    :goto_30
    return-void

    .line 2313
    :cond_31
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v5

    .line 2316
    const/4 v4, 0x1

    if-eqz v5, :cond_96

    iget v0, v5, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_47

    iget-object v0, v5, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_96

    :cond_47
    const/4 v0, 0x1

    move v2, v0

    .line 2321
    :goto_49
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->isAccessSuper(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)Z

    move-result v6

    .line 2323
    if-eqz v2, :cond_99

    .line 2324
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items;->makeSuperItem()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    move-object v3, v0

    .line 2327
    :goto_5a
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v7, 0x4

    if-ne v0, v7, :cond_b2

    move-object v0, v1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 2330
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_a5

    .line 2331
    if-nez v2, :cond_82

    if-eqz v5, :cond_7e

    iget v0, v5, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_82

    .line 2332
    :cond_7e
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v3

    .line 2333
    :cond_82
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Items$Item;->drop()V

    .line 2338
    :goto_85
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 2339
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/jvm/Items;->makeImmediateItem(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_30

    .line 2316
    :cond_96
    const/4 v0, 0x0

    move v2, v0

    goto :goto_49

    .line 2325
    :cond_99
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    move-object v3, v0

    goto :goto_5a

    .line 2335
    :cond_a5
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2336
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->genNullCheck(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    goto :goto_85

    .line 2341
    :cond_b2
    if-nez v6, :cond_bc

    .line 2342
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/jvm/Gen;->binaryQualifier(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 2343
    :cond_bc
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_e3

    .line 2344
    if-nez v2, :cond_d6

    if-eqz v5, :cond_d2

    iget v0, v5, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d6

    .line 2345
    :cond_d2
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v3

    .line 2346
    :cond_d6
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Items$Item;->drop()V

    .line 2347
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStaticItem(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto/16 :goto_30

    .line 2349
    :cond_e3
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2350
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-ne v1, v0, :cond_101

    .line 2351
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2352
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto/16 :goto_30

    .line 2354
    :cond_101
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    .line 2356
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_11f

    if-nez v2, :cond_11f

    if-eqz v6, :cond_11d

    move v0, v4

    .line 2355
    :goto_115
    invoke-virtual {v3, v1, v0}, Lcom/sun/tools/javac/jvm/Items;->makeMemberItem(Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto/16 :goto_30

    .line 2356
    :cond_11d
    const/4 v0, 0x0

    goto :goto_115

    :cond_11f
    move v0, v4

    goto :goto_115
.end method

.method public visitSkip(Lcom/sun/tools/javac/tree/JCTree$JCSkip;)V
    .registers 2

    .line 1099
    return-void
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 24

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v11, v2, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 1190
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6f

    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1191
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v2, :cond_71

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v2

    .line 1192
    :goto_24
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v3

    .line 1193
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    .line 1194
    invoke-virtual {v9}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1196
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Items$Item;->drop()V

    .line 1197
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v3, :cond_73

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v4}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1199
    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v5

    .line 1198
    const/16 v6, 0x8

    invoke-virtual {v3, v4, v6, v2, v5}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    move v2, v11

    .line 1326
    :goto_67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 1327
    return-void

    .line 1190
    :cond_6f
    const/4 v2, 0x0

    goto :goto_13

    .line 1191
    :cond_71
    const/4 v2, 0x0

    goto :goto_24

    :cond_73
    move v2, v11

    .line 1197
    goto :goto_67

    .line 1202
    :cond_75
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1203
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sun/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v3, :cond_99

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v4}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1205
    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v5

    .line 1204
    const/16 v6, 0x8

    invoke-virtual {v3, v4, v6, v2, v5}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    .line 1206
    :cond_99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    new-instance v3, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v3}, Lcom/sun/tools/javac/jvm/Gen$GenContext;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v14

    .line 1207
    iget-object v2, v14, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/tools/javac/jvm/Gen$GenContext;->isSwitch:Z

    .line 1211
    const v5, 0x7fffffff

    .line 1212
    const/high16 v7, -0x80000000

    .line 1213
    const/4 v4, 0x0

    .line 1215
    invoke-virtual {v9}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v2

    new-array v15, v2, [I

    .line 1216
    const/4 v6, -0x1

    .line 1219
    const/4 v2, 0x0

    move v3, v2

    move-object v8, v9

    :goto_bf
    array-length v2, v15

    if-ge v3, v2, :cond_f7

    .line 1220
    iget-object v2, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_ec

    .line 1221
    iget-object v2, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1222
    aput v2, v15, v3

    .line 1223
    if-ge v2, v5, :cond_e1

    move v5, v2

    .line 1224
    :cond_e1
    if-ge v7, v2, :cond_e4

    move v7, v2

    .line 1225
    :cond_e4
    add-int/lit8 v4, v4, 0x1

    .line 1230
    :goto_e6
    iget-object v8, v8, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1219
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_bf

    .line 1227
    :cond_ec
    const/4 v2, -0x1

    if-ne v6, v2, :cond_f5

    const/4 v2, 0x1

    :goto_f0
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    move v6, v3

    .line 1228
    goto :goto_e6

    .line 1227
    :cond_f5
    const/4 v2, 0x0

    goto :goto_f0

    .line 1235
    :cond_f7
    int-to-long v2, v7

    int-to-long v12, v5

    .line 1236
    int-to-long v0, v4

    move-wide/from16 v16, v0

    .line 1238
    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 1240
    if-lez v4, :cond_172

    sub-long/2addr v2, v12

    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    const-wide/16 v12, 0x4

    add-long/2addr v2, v12

    const-wide/16 v12, 0x3

    const-wide/16 v20, 0x3

    mul-long v12, v12, v20

    add-long/2addr v2, v12

    const-wide/16 v12, 0x2

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3

    add-long v12, v12, v16

    const-wide/16 v16, 0x3

    mul-long v16, v16, v18

    add-long v12, v12, v16

    cmp-long v2, v2, v12

    if-gtz v2, :cond_172

    .line 1244
    const/16 v2, 0xaa

    move v3, v2

    .line 1246
    :goto_124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v16

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lcom/sun/tools/javac/jvm/Code;->align(I)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v17

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Lcom/sun/tools/javac/jvm/Code;->emit4(I)V

    .line 1252
    const/16 v2, 0xaa

    if-ne v3, v2, :cond_1ca

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/jvm/Code;->emit4(I)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v7}, Lcom/sun/tools/javac/jvm/Code;->emit4(I)V

    .line 1255
    int-to-long v12, v5

    :goto_15e
    int-to-long v0, v7

    move-wide/from16 v18, v0

    cmp-long v2, v12, v18

    if-gtz v2, :cond_176

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Lcom/sun/tools/javac/jvm/Code;->emit4(I)V

    .line 1255
    const-wide/16 v18, 0x1

    add-long v12, v12, v18

    goto :goto_15e

    .line 1244
    :cond_172
    const/16 v2, 0xab

    move v3, v2

    goto :goto_124

    .line 1255
    :cond_176
    const/4 v2, 0x0

    move-object v8, v2

    .line 1266
    :goto_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code$State;->dup()Lcom/sun/tools/javac/jvm/Code$State;

    move-result-object v12

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    .line 1271
    const/4 v2, 0x0

    move v10, v2

    :goto_18b
    array-length v2, v15

    if-ge v10, v2, :cond_201

    .line 1272
    iget-object v2, v9, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    .line 1273
    iget-object v9, v9, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v13, v12}, Lcom/sun/tools/javac/jvm/Code;->entryPoint(Lcom/sun/tools/javac/jvm/Code$State;)I

    move-result v13

    .line 1278
    if-eq v10, v6, :cond_1f1

    .line 1279
    const/16 v18, 0xaa

    move/from16 v0, v18

    if-ne v3, v0, :cond_1ec

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    move-object/from16 v18, v0

    aget v19, v15, v10

    sub-int v19, v19, v5

    add-int/lit8 v19, v19, 0x3

    mul-int/lit8 v19, v19, 0x4

    add-int v19, v19, v17

    sub-int v13, v13, v16

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/sun/tools/javac/jvm/Code;->put4(II)V

    .line 1291
    :goto_1bd
    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    const/16 v13, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v13}, Lcom/sun/tools/javac/jvm/Gen;->genStats(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;I)V

    .line 1271
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_18b

    .line 1259
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/jvm/Code;->emit4(I)V

    .line 1260
    const/4 v2, 0x0

    :goto_1d2
    if-ge v2, v4, :cond_1e7

    .line 1261
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Lcom/sun/tools/javac/jvm/Code;->emit4(I)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Lcom/sun/tools/javac/jvm/Code;->emit4(I)V

    .line 1260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d2

    .line 1264
    :cond_1e7
    array-length v2, v15

    new-array v2, v2, [I

    move-object v8, v2

    goto :goto_178

    .line 1284
    :cond_1ec
    sub-int v13, v13, v16

    aput v13, v8, v10

    goto :goto_1bd

    .line 1287
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    move-object/from16 v18, v0

    sub-int v13, v13, v16

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/sun/tools/javac/jvm/Code;->put4(II)V

    goto :goto_1bd

    .line 1295
    :cond_201
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v14, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Gen$GenContext;->exit:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v9, v2}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->get4(I)I

    move-result v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_22a

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v12}, Lcom/sun/tools/javac/jvm/Code;->entryPoint(Lcom/sun/tools/javac/jvm/Code$State;)I

    move-result v9

    sub-int v9, v9, v16

    move/from16 v0, v17

    invoke-virtual {v2, v0, v9}, Lcom/sun/tools/javac/jvm/Code;->put4(II)V

    .line 1302
    :cond_22a
    const/16 v2, 0xaa

    if-ne v3, v2, :cond_265

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->get4(I)I

    move-result v4

    .line 1305
    int-to-long v2, v5

    :goto_239
    int-to-long v8, v7

    cmp-long v6, v2, v8

    if-gtz v6, :cond_262

    .line 1306
    move/from16 v0, v17

    int-to-long v8, v0

    int-to-long v12, v5

    sub-long v12, v2, v12

    const-wide/16 v14, 0x3

    add-long/2addr v12, v14

    const-wide/16 v14, 0x4

    mul-long/2addr v12, v14

    add-long/2addr v8, v12

    long-to-int v6, v8

    .line 1307
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v8, v6}, Lcom/sun/tools/javac/jvm/Code;->get4(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_25e

    .line 1308
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v8, v6, v4}, Lcom/sun/tools/javac/jvm/Code;->put4(II)V

    .line 1305
    :cond_25e
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_239

    :cond_262
    move v2, v11

    .line 1310
    goto/16 :goto_67

    .line 1312
    :cond_265
    if-ltz v6, :cond_27b

    .line 1313
    :goto_267
    array-length v2, v15

    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_27b

    .line 1314
    add-int/lit8 v2, v6, 0x1

    aget v2, v15, v2

    aput v2, v15, v6

    .line 1315
    add-int/lit8 v2, v6, 0x1

    aget v2, v8, v2

    aput v2, v8, v6

    .line 1313
    add-int/lit8 v6, v6, 0x1

    goto :goto_267

    .line 1317
    :cond_27b
    if-lez v4, :cond_283

    .line 1318
    const/4 v2, 0x0

    add-int/lit8 v3, v4, -0x1

    invoke-static {v15, v8, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->qsort2([I[III)V

    .line 1319
    :cond_283
    const/4 v2, 0x0

    :goto_284
    if-ge v2, v4, :cond_2a3

    .line 1320
    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x8

    add-int v3, v3, v17

    .line 1321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    aget v6, v15, v2

    invoke-virtual {v5, v3, v6}, Lcom/sun/tools/javac/jvm/Code;->put4(II)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    add-int/lit8 v3, v3, 0x4

    aget v6, v8, v2

    invoke-virtual {v5, v3, v6}, Lcom/sun/tools/javac/jvm/Code;->put4(II)V

    .line 1319
    add-int/lit8 v2, v2, 0x1

    goto :goto_284

    :cond_2a3
    move v2, v11

    goto/16 :goto_67
.end method

.method public visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V
    .registers 7

    .line 1356
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, v0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 1358
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->makeTemp(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$LocalItem;

    move-result-object v2

    .line 1359
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->duplicate()V

    .line 1360
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->store()V

    .line 1363
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v3, 0xc2

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 1364
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v3, v2, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->lock(I)V

    .line 1368
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    new-instance v3, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v3}, Lcom/sun/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v0, p1, v3}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v3

    .line 1369
    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    new-instance v4, Lcom/sun/tools/javac/jvm/Gen$1;

    invoke-direct {v4, p0, v3, v2}, Lcom/sun/tools/javac/jvm/Gen$1;-><init>(Lcom/sun/tools/javac/jvm/Gen;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/jvm/Items$LocalItem;)V

    iput-object v4, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

    .line 1384
    iget-object v0, v3, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v2, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1385
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->genTry(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 1386
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->endScopes(I)V

    .line 1387
    return-void
.end method

.method public visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V
    .registers 4

    .line 1846
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1847
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 1848
    return-void
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 6

    .line 1392
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    new-instance v1, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v1}, Lcom/sun/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 1393
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->env:Lcom/sun/tools/javac/comp/Env;

    .line 1394
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->useJsrLocally:Z

    if-nez v0, :cond_2c

    .line 1395
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    sget-object v3, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->NONE:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    if-ne v0, v3, :cond_4a

    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen;->jsrlimit:I

    if-lez v0, :cond_29

    const/16 v3, 0x64

    if-ge v0, v3, :cond_4a

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1399
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->estimateCodeComplexity(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    iget v3, p0, Lcom/sun/tools/javac/jvm/Gen;->jsrlimit:I

    if-le v0, v3, :cond_4a

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen;->useJsrLocally:Z

    .line 1401
    :cond_2c
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    new-instance v3, Lcom/sun/tools/javac/jvm/Gen$2;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/sun/tools/javac/jvm/Gen$2;-><init>(Lcom/sun/tools/javac/jvm/Gen;Lcom/sun/tools/javac/tree/JCTree$JCTry;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Env;)V

    iput-object v3, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

    .line 1430
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v2, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1431
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/tools/javac/jvm/Gen;->genTry(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 1432
    return-void

    .line 1399
    :cond_4a
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V
    .registers 6

    .line 2251
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2256
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_3f

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2257
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 2258
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xc0

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 2260
    :cond_3f
    return-void
.end method

.method public visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V
    .registers 6

    .line 2267
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2268
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xc1

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->makeRef(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 2269
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2270
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 9

    const/16 v6, 0x64

    const/16 v5, 0x60

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 2013
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 2014
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v1

    const/16 v4, 0x32

    if-ne v1, v4, :cond_20

    .line 2015
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Gen;->genCond(Lcom/sun/tools/javac/tree/JCTree;Z)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    .line 2016
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->negate()Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2022
    :goto_1f
    return-void

    .line 2018
    :cond_20
    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v4, v1}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    .line 2019
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v4

    packed-switch v4, :pswitch_data_134

    .line 2079
    :pswitch_37  #0x32
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    goto :goto_1f

    .line 2074
    :pswitch_3b  #0x38
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2075
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2076
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Gen;->genNullCheck(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    goto :goto_1f

    .line 2053
    :pswitch_50  #0x36, 0x37
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->duplicate()V

    .line 2054
    instance-of v4, v1, Lcom/sun/tools/javac/jvm/Items$LocalItem;

    if-eqz v4, :cond_77

    iget v4, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    if-eq v4, v5, :cond_5f

    iget v4, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    if-ne v4, v6, :cond_77

    .line 2056
    :cond_5f
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v4

    move-object v0, v1

    .line 2057
    check-cast v0, Lcom/sun/tools/javac/jvm/Items$LocalItem;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v1

    const/16 v5, 0x36

    if-ne v1, v5, :cond_75

    move v1, v2

    :goto_6f
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->incr(I)V

    .line 2058
    iput-object v4, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto :goto_1f

    :cond_75
    move v1, v3

    .line 2057
    goto :goto_6f

    .line 2060
    :cond_77
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v2

    .line 2061
    iget v3, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/jvm/Items$Item;->stash(I)V

    .line 2062
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v4, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v4}, Lcom/sun/tools/javac/jvm/Gen;->one(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2063
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2066
    iget v0, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    if-eqz v0, :cond_a9

    iget v0, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    .line 2067
    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v0

    if-nez v0, :cond_a9

    .line 2068
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v3, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    add-int/lit16 v3, v3, 0x91

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2069
    :cond_a9
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->store()V

    .line 2070
    iput-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto/16 :goto_1f

    .line 2034
    :pswitch_b0  #0x34, 0x35
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->duplicate()V

    .line 2035
    instance-of v4, v1, Lcom/sun/tools/javac/jvm/Items$LocalItem;

    if-eqz v4, :cond_d3

    iget v4, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    if-eq v4, v5, :cond_bf

    iget v4, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    if-ne v4, v6, :cond_d3

    :cond_bf
    move-object v0, v1

    .line 2037
    check-cast v0, Lcom/sun/tools/javac/jvm/Items$LocalItem;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v4

    const/16 v5, 0x34

    if-ne v4, v5, :cond_d1

    :goto_ca
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->incr(I)V

    .line 2038
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto/16 :goto_1f

    :cond_d1
    move v2, v3

    .line 2037
    goto :goto_ca

    .line 2040
    :cond_d3
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2041
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v3, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Gen;->one(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2042
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2045
    iget v0, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    if-eqz v0, :cond_ff

    iget v0, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    .line 2046
    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v0

    if-nez v0, :cond_ff

    .line 2047
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v2, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    add-int/lit16 v2, v2, 0x91

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 2048
    :cond_ff
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeAssignItem(Lcom/sun/tools/javac/jvm/Items$Item;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto/16 :goto_1f

    .line 2028
    :pswitch_109  #0x33
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2029
    iget v1, v1, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/Gen;->emitMinusOne(I)V

    .line 2030
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto/16 :goto_1f

    .line 2024
    :pswitch_11d  #0x31
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 2025
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto/16 :goto_1f

    .line 2021
    :pswitch_12c  #0x30
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen;->result:Lcom/sun/tools/javac/jvm/Items$Item;

    goto/16 :goto_1f

    .line 2019
    :pswitch_data_134
    .packed-switch 0x30
        :pswitch_12c  #00000030
        :pswitch_11d  #00000031
        :pswitch_37  #00000032
        :pswitch_109  #00000033
        :pswitch_b0  #00000034
        :pswitch_b0  #00000035
        :pswitch_50  #00000036
        :pswitch_50  #00000037
        :pswitch_3b  #00000038
    .end packed-switch
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 5

    .line 1086
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1087
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->newLocal(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)I

    .line 1088
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_3a

    .line 1089
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->checkStringConstant(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;)V

    .line 1090
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Gen;->varDebugInfo:Z

    if-eqz v1, :cond_3a

    .line 1091
    :cond_22
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/Gen;->genExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1092
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen;->items:Lcom/sun/tools/javac/jvm/Items;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Items;->makeLocalItem(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/jvm/Items$LocalItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->store()V

    .line 1095
    :cond_3a
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/jvm/Gen;->checkDimension(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 1096
    return-void
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 8

    .line 1118
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/jvm/Gen;->genLoop(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Z)V

    .line 1119
    return-void
.end method

.method public visitWildcard(Lcom/sun/tools/javac/tree/JCTree$JCWildcard;)V
    .registers 4

    .line 2263
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
