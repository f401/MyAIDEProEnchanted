.class public Lcom/sun/tools/javac/comp/Lower;
.super Lcom/sun/tools/javac/tree/TreeTranslator;
.source "Lower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Lower$ClassMap;,
        Lcom/sun/tools/javac/comp/Lower$EnumMapping;,
        Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;,
        Lcom/sun/tools/javac/comp/Lower$TreeBuilder;
    }
.end annotation


# static fields
.field private static final ASSIGNcode:I = 0x2

.field private static final DEREFcode:I = 0x0

.field private static final FIRSTASGOPcode:I = 0xc

.field private static final NCODES:I

.field private static final POSTDECcode:I = 0xa

.field private static final POSTINCcode:I = 0x8

.field private static final PREDECcode:I = 0x6

.field private static final PREINCcode:I = 0x4

.field protected static final lowerKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/Lower;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessConstrTags:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private accessConstrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private accessNums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private accessSyms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            "[",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private accessed:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field actualSymbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private allowEnums:Z

.field private attr:Lcom/sun/tools/javac/comp/Attr;

.field attrEnv:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private cfolder:Lcom/sun/tools/javac/comp/ConstFold;

.field private chk:Lcom/sun/tools/javac/comp/Check;

.field private final classDollar:Lcom/sun/tools/javac/util/Name;

.field classMap:Lcom/sun/tools/javac/comp/Lower$ClassMap;

.field classdefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ">;"
        }
    .end annotation
.end field

.field conflictsChecker:Lcom/sun/tools/javac/tree/JCTree$Visitor;

.field currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

.field currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field private debugLower:Z

.field private final dollarAssertionsDisabled:Lcom/sun/tools/javac/util/Name;

.field private enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field endPositions:Ljava/util/Map;
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

.field enumSwitchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/comp/Lower$EnumMapping;",
            ">;"
        }
    .end annotation
.end field

.field freevarCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ">;>;"
        }
    .end annotation
.end field

.field private log:Lcom/sun/tools/javac/util/Log;

.field private make:Lcom/sun/tools/javac/tree/TreeMaker;

.field private make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field private names:Lcom/sun/tools/javac/util/Names;

.field outerThisStack:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation
.end field

.field outermostClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

.field outermostMemberDef:Lcom/sun/tools/javac/tree/JCTree;

.field private pkginfoOpt:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

.field proxies:Lcom/sun/tools/javac/code/Scope;

.field private reader:Lcom/sun/tools/javac/jvm/ClassReader;

.field private rs:Lcom/sun/tools/javac/comp/Resolve;

.field private source:Lcom/sun/tools/javac/code/Source;

.field private syms:Lcom/sun/tools/javac/code/Symtab;

.field private systemArraycopyMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field private target:Lcom/sun/tools/javac/jvm/Target;

.field translated:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field twrVars:Lcom/sun/tools/javac/code/Scope;

.field private types:Lcom/sun/tools/javac/code/Types;

.field private writer:Lcom/sun/tools/javac/jvm/ClassWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/Lower;->lowerKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 760
    const/16 v0, 0x113

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->accessCode(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sun/tools/javac/comp/Lower;->NCODES:I

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeTranslator;-><init>()V

    .line 172
    new-instance v0, Lcom/sun/tools/javac/comp/Lower$ClassMap;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Lower$ClassMap;-><init>(Lcom/sun/tools/javac/comp/Lower;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->classMap:Lcom/sun/tools/javac/comp/Lower$ClassMap;

    .line 333
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    .line 639
    new-instance v0, Lcom/sun/tools/javac/comp/Lower$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Lower$1;-><init>(Lcom/sun/tools/javac/comp/Lower;)V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->conflictsChecker:Lcom/sun/tools/javac/tree/JCTree$Visitor;

    .line 89
    sget-object v0, Lcom/sun/tools/javac/comp/Lower;->lowerKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 90
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    .line 91
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->log:Lcom/sun/tools/javac/util/Log;

    .line 92
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 93
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 94
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 95
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Attr;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->attr:Lcom/sun/tools/javac/comp/Attr;

    .line 96
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 97
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->writer:Lcom/sun/tools/javac/jvm/ClassWriter;

    .line 98
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassReader;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 99
    invoke-static {p1}, Lcom/sun/tools/javac/comp/ConstFold;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/ConstFold;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    .line 100
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Target;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 101
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->source:Lcom/sun/tools/javac/code/Source;

    .line 102
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowEnums()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Lower;->allowEnums:Z

    .line 103
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 104
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "assertionsDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->dollarAssertionsDisabled:Lcom/sun/tools/javac/util/Name;

    .line 105
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 106
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->classDollar:Lcom/sun/tools/javac/util/Name;

    .line 108
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    .line 109
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    .line 110
    const-string v1, "debuglower"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/Lower;->debugLower:Z

    .line 111
    invoke-static {v0}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->get(Lcom/sun/tools/javac/util/Options;)Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->pkginfoOpt:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    .line 112
    return-void
.end method

.method static synthetic access$002(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/util/Names;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/comp/Resolve;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Types;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/jvm/Target;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/jvm/ClassWriter;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->writer:Lcom/sun/tools/javac/jvm/ClassWriter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Lower;->outerCacheClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 6

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/comp/Check;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->chk:Lcom/sun/tools/javac/comp/Check;

    return-object v0
.end method

.method private static accessCode(I)I
    .registers 2

    .line 787
    const/16 v0, 0x60

    if-gt v0, p0, :cond_f

    const/16 v0, 0x83

    if-gt p0, v0, :cond_f

    .line 788
    add-int/lit8 v0, p0, -0x60

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    .line 794
    :goto_e
    return v0

    .line 789
    :cond_f
    const/16 v0, 0x100

    if-ne p0, v0, :cond_16

    .line 790
    const/16 v0, 0x54

    goto :goto_e

    .line 791
    :cond_16
    const/16 v0, 0x10e

    if-gt v0, p0, :cond_2b

    const/16 v0, 0x113

    if-gt p0, v0, :cond_2b

    .line 792
    add-int/lit16 v0, p0, -0x10e

    add-int/lit16 v0, v0, 0x83

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x60

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    goto :goto_e

    .line 794
    :cond_2b
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private static accessCode(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 5

    const/4 v1, 0x0

    .line 803
    if-nez p1, :cond_5

    move v0, v1

    .line 815
    :goto_4
    return v0

    .line 805
    :cond_5
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_1a

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 806
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    if-ne p0, v0, :cond_1a

    .line 807
    const/4 v0, 0x2

    goto :goto_4

    .line 808
    :cond_1a
    const/16 v0, 0x34

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    if-gt v0, v2, :cond_40

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v2, 0x37

    if-gt v0, v2, :cond_40

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 809
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    if-ne p0, v0, :cond_40

    .line 810
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    add-int/lit8 v0, v0, -0x34

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    goto :goto_4

    .line 811
    :cond_40
    const/16 v0, 0x4c

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    if-gt v0, v2, :cond_68

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v2, 0x5c

    if-gt v0, v2, :cond_68

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 812
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    if-ne p0, v0, :cond_68

    .line 813
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->accessCode(I)I

    move-result v0

    goto :goto_4

    :cond_68
    move v0, v1

    .line 815
    goto :goto_4
.end method

.method private addEnumCompareTo(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 15

    const-wide/16 v10, 0x0

    .line 3802
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->compareTo:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 3805
    invoke-static {v3}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 3802
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v6

    .line 3807
    instance-of v0, v6, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 3809
    invoke-static {v6, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->declarationFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 3811
    new-instance v7, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v7}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 3813
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v10, v11}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    .line 3814
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    const-string v1, "o"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 3815
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0, v3, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Param(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v8

    .line 3817
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->java_lang_Object:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 3818
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    .line 3819
    iget-object v1, v8, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    move-object v0, v6

    .line 3821
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v8, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    .line 3823
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, v8, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 3824
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    .line 3825
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    .line 3826
    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3828
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    const-string v3, "other"

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 3830
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-wide v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3834
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 3835
    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 3837
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 3839
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    .line 3840
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 3841
    const/16 v2, 0x48

    invoke-virtual {p0, v2, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->makeBinary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    .line 3842
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v0

    .line 3843
    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 3844
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v0, v6

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3846
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 3845
    invoke-virtual {v1, v10, v11, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    .line 3844
    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    .line 3847
    invoke-static {v8}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 3848
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 3850
    check-cast v6, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    return-object v6
.end method

.method private addEnumCompatibleMembers(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 4

    .line 3696
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3699
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->addEnumOrdinalField(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    .line 3700
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->addEnumNameField(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-result-object v1

    .line 3703
    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/comp/Lower;->addEnumFieldOrdinalMethod(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3704
    invoke-direct {p0, p1, v1}, Lcom/sun/tools/javac/comp/Lower;->addEnumFieldNameMethod(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3707
    invoke-direct {p0, p1, v1}, Lcom/sun/tools/javac/comp/Lower;->addEnumToString(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3710
    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/comp/Lower;->addEnumCompareTo(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3711
    return-void
.end method

.method private addEnumFieldNameMethod(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 11

    .line 3751
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 3754
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 3751
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    .line 3756
    instance-of v0, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 3758
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v2

    .line 3760
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v0, v1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3761
    const-wide/16 v6, 0x0

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v4, v6, v7, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    .line 3760
    invoke-virtual {v4, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 3763
    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    return-object v1
.end method

.method private addEnumFieldOrdinalMethod(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 11

    .line 3735
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->ordinal:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 3738
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 3735
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    .line 3740
    instance-of v0, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 3742
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v2

    .line 3743
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v0, v1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3744
    const-wide/16 v6, 0x0

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v4, v6, v7, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    .line 3743
    invoke-virtual {v4, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 3746
    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    return-object v1
.end method

.method private addEnumNameField(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    .registers 9

    .line 3724
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    .line 3725
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1012

    const-string v4, "$name"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3728
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 3729
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 3730
    return-object v1
.end method

.method private addEnumOrdinalField(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    .registers 9

    .line 3714
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    .line 3715
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1012

    const-string v4, "$ordinal"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3718
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 3719
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 3720
    return-object v1
.end method

.method private addEnumToString(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 11

    .line 3768
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->toString:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 3771
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 3768
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 3773
    const/4 v1, 0x0

    .line 3774
    if-eqz v0, :cond_19

    .line 3775
    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->declarationFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 3777
    :cond_19
    if-eqz v1, :cond_1e

    .line 3778
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3798
    :goto_1d
    return-object v0

    .line 3780
    :cond_1e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v7

    .line 3782
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3784
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 3786
    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 3788
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x1

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->toString:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3792
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v0, v1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3793
    const-wide/16 v4, 0x0

    invoke-static {v7}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v3

    .line 3792
    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    .line 3795
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 3796
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 3798
    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object v0, v1

    goto :goto_1d
.end method

.method private assertFlagTest(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 11

    const/16 v8, 0x32

    .line 2005
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->outermostClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v7, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2008
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2010
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->dollarAssertionsDisabled:Lcom/sun/tools/javac/util/Name;

    .line 2012
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    .line 2011
    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->lookupSynthetic(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 2013
    if-nez v0, :cond_85

    .line 2014
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1018

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->dollarAssertionsDisabled:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2019
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 2020
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->desiredAssertionStatus:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 2022
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2023
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2020
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 2024
    invoke-virtual {p0, v6}, Lcom/sun/tools/javac/comp/Lower;->classDef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v2

    .line 2025
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2026
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2027
    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 2028
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    .line 2027
    invoke-direct {p0, v4, v5}, Lcom/sun/tools/javac/comp/Lower;->classOfType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    .line 2026
    invoke-virtual {v3, v4, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/sun/tools/javac/comp/Lower;->makeUnary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    .line 2030
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 2032
    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 2034
    :goto_77
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2035
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/sun/tools/javac/comp/Lower;->makeUnary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    return-object v0

    :cond_85
    move-object v1, v0

    goto :goto_77
.end method

.method private binaryAccessOperator(I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;
    .registers 5

    .line 821
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    .line 822
    :goto_b
    if-eqz v1, :cond_24

    .line 824
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    instance-of v0, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    if-eqz v0, :cond_20

    .line 825
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 826
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-static {v2}, Lcom/sun/tools/javac/comp/Lower;->accessCode(I)I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 829
    :goto_1f
    return-object v0

    .line 823
    :cond_20
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    goto :goto_b

    .line 829
    :cond_24
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private cacheName(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;
    .registers 5

    .line 1905
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1906
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1907
    const-string v1, "array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1908
    :goto_13
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1909
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1910
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    .line 1912
    :cond_2b
    const-string v1, "L"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1913
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1918
    :cond_3e
    :goto_3e
    const/16 v1, 0x2e

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1919
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0

    .line 1916
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_3e
.end method

.method private cacheSym(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    .registers 10

    .line 1928
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Lower;->outerCacheClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    .line 1929
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/Lower;->cacheName(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 1930
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/sun/tools/javac/comp/Lower;->lookupSynthetic(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1932
    if-nez v0, :cond_40

    .line 1933
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v1, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 1934
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1008

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1935
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 1937
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 1938
    invoke-virtual {p0, v6}, Lcom/sun/tools/javac/comp/Lower;->classDef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v2

    .line 1939
    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 1941
    :goto_3f
    return-object v1

    :cond_40
    move-object v1, v0

    goto :goto_3f
.end method

.method private checkAccessConstructorTags()V
    .registers 10

    .line 705
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrTags:Lcom/sun/tools/javac/util/List;

    move-object v8, v0

    :goto_3
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 706
    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 707
    invoke-direct {p0, v7}, Lcom/sun/tools/javac/comp/Lower;->isTranslatedClassAvailable(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 705
    :goto_14
    iget-object v0, v8, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v8, v0

    goto :goto_3

    .line 710
    :cond_18
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 711
    const-wide/16 v2, 0x1008

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    .line 712
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 713
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 710
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    .line 714
    iput-object v7, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 715
    iget-object v1, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 717
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->translated:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_14

    .line 719
    :cond_41
    return-void
.end method

.method private classDollarSym(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 12

    .line 1740
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Lower;->outerCacheClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    .line 1741
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->classDollar:Lcom/sun/tools/javac/util/Name;

    .line 1743
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    .line 1742
    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->lookupSynthetic(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1744
    if-nez v0, :cond_70

    .line 1745
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->classDollar:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 1749
    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 1750
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    .line 1751
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x1008

    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v9, v9, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v7, v8, v9}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1754
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 1756
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v2

    .line 1758
    :try_start_48
    invoke-virtual {p0, p1, v2}, Lcom/sun/tools/javac/comp/Lower;->classDollarSymBody(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    :try_end_4e
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_48 .. :try_end_4e} :catch_5b

    .line 1763
    :goto_4e
    invoke-virtual {p0, v6}, Lcom/sun/tools/javac/comp/Lower;->classDef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    .line 1764
    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 1766
    :goto_5a
    return-object v1

    .line 1759
    :catch_5b
    move-exception v0

    .line 1760
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1761
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v3, p1, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;

    goto :goto_4e

    :cond_70
    move-object v1, v0

    goto :goto_5a
.end method

.method private classOf(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 1948
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->classOfType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method private classOfType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 13

    const/4 v6, 0x4

    .line 1952
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    packed-switch v0, :pswitch_data_e4

    .line 1989
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1965
    :pswitch_c  #0xa, 0xb
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->hasClassLiterals()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1966
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x19

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1969
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1978
    :goto_33
    return-object v0

    .line 1975
    :cond_34
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->writer:Lcom/sun/tools/javac/jvm/ClassWriter;

    .line 1976
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->xClassName(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1977
    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/comp/Lower;->cacheSym(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-result-object v1

    .line 1978
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1979
    const/16 v4, 0x3e

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {p0, v4, v3, v5}, Lcom/sun/tools/javac/comp/Lower;->makeBinary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1981
    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1983
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/Lower;->classDollarSym(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1984
    const/16 v9, 0xa

    invoke-virtual {v8, v9, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 1985
    invoke-virtual {v0, v8}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    .line 1984
    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1982
    invoke-virtual {v6, v7, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 1980
    invoke-virtual {v4, v5, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 1986
    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1987
    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    .line 1978
    invoke-virtual {v2, v3, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Conditional(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 1987
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_33

    .line 1956
    :pswitch_b1  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    .line 1957
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v3, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->TYPE:Lcom/sun/tools/javac/util/Name;

    .line 1959
    invoke-virtual {v0, v1, v3, v4, v6}, Lcom/sun/tools/javac/comp/Resolve;->findIdentInType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v3, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v2, Lcom/sun/tools/javac/util/Names;->TYPE:Lcom/sun/tools/javac/util/Name;

    .line 1958
    const/4 v5, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1961
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v0, v6, :cond_db

    move-object v0, v1

    .line 1962
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    .line 1963
    :cond_db
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_33

    .line 1952
    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_b1  #00000001
        :pswitch_b1  #00000002
        :pswitch_b1  #00000003
        :pswitch_b1  #00000004
        :pswitch_b1  #00000005
        :pswitch_b1  #00000006
        :pswitch_b1  #00000007
        :pswitch_b1  #00000008
        :pswitch_b1  #00000009
        :pswitch_c  #0000000a
        :pswitch_c  #0000000b
    .end packed-switch
.end method

.method private convert(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6

    .line 2721
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v0, p2, :cond_c

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_d

    .line 2726
    :cond_c
    :goto_c
    return-object p1

    .line 2723
    :cond_d
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    .line 2724
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, p2}, Lcom/sun/tools/javac/comp/ConstFold;->coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 2725
    :cond_32
    iput-object p2, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    move-object p1, v0

    .line 2726
    goto :goto_c
.end method

.method private enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 4

    .line 608
    invoke-virtual {p3, p2}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 609
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Lower;
    .registers 2

    .line 62
    sget-object v0, Lcom/sun/tools/javac/comp/Lower;->lowerKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Lower;

    .line 63
    if-nez v0, :cond_f

    .line 64
    new-instance v0, Lcom/sun/tools/javac/comp/Lower;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Lower;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 65
    :cond_f
    return-object v0
.end method

.method private isTranslatedClassAvailable(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z
    .registers 6

    .line 722
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->translated:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 723
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, p1, :cond_6

    .line 725
    const/4 v0, 0x1

    .line 728
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private lookupConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->resolveInternalConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    return-object v0
.end method

.method private lookupField(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    .registers 6

    .line 694
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/sun/tools/javac/comp/Resolve;->resolveInternalField(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    return-object v0
.end method

.method private lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->resolveInternalMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    return-object v0
.end method

.method private lookupSynthetic(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Symbol;
    .registers 9

    .line 675
    invoke-virtual {p2, p1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 676
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_16

    :cond_15
    const/4 v0, 0x0

    :cond_16
    return-object v0
.end method

.method private makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation

    .line 1895
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1897
    invoke-static {p3}, Lcom/sun/tools/javac/tree/TreeInfo;->types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1896
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 1898
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0
.end method

.method private makeNonNullCheck(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 1579
    const/16 v0, 0x3f

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/tools/javac/comp/Lower;->makeBinary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    return-object v0
.end method

.method private makeResourceCloseInvocation(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 4

    .line 1572
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->close:Lcom/sun/tools/javac/util/Name;

    .line 1574
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1572
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 1575
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    return-object v0
.end method

.method private makeSyntheticName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/util/Name;
    .registers 5

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 622
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    .line 621
    invoke-virtual {p1, v0, v1}, Lcom/sun/tools/javac/util/Name;->append(CLcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object p1

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/comp/Lower;->lookupSynthetic(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    if-nez v0, :cond_0

    .line 625
    return-object p1
.end method

.method private makeTwrBlock(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;I)Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            "I)",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;"
        }
    .end annotation

    .line 1477
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1536
    :goto_6
    return-object p2

    .line 1481
    :cond_7
    new-instance v9, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v9}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1482
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1483
    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v1, :cond_f4

    move-object v1, v0

    .line 1485
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 1486
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1487
    invoke-virtual {v9, v1}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    .line 1505
    :goto_28
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primaryException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1507
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1000

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->twrVars:Lcom/sun/tools/javac/code/Scope;

    invoke-direct {p0, v4, v5}, Lcom/sun/tools/javac/comp/Lower;->makeSyntheticName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1511
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->twrVars:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1512
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    .line 1513
    invoke-virtual {v9, v2}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    .line 1516
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 1519
    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1518
    new-instance v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v4, 0x1010

    invoke-virtual {v2, v6}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v6

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v2, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct/range {v3 .. v8}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1522
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    .line 1523
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Assignment(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v4

    .line 1524
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Throw(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCThrow;

    move-result-object v3

    .line 1525
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v6, 0x0

    invoke-static {v4, v3}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v5, v6, v7, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v3

    .line 1526
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Catch(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    move-result-object v2

    .line 1528
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, v3, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 1529
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-static {p2}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1530
    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->makeTwrFinallyClause(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    .line 1531
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1532
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v3, p2, v4}, Lcom/sun/tools/javac/comp/Lower;->makeTwrBlock(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;I)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v3

    .line 1533
    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1532
    invoke-virtual {v1, v3, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Try(Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    .line 1535
    invoke-virtual {v9, v0}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    .line 1536
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v2, 0x0

    invoke-virtual {v9}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object p2

    goto/16 :goto_6

    .line 1489
    :cond_f4
    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1490
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twrVar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1492
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->twrVars:Lcom/sun/tools/javac/code/Scope;

    invoke-direct {p0, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->makeSyntheticName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 1494
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_143

    .line 1495
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v1, Lcom/sun/tools/javac/code/Symtab;->autoCloseableType:Lcom/sun/tools/javac/code/Type;

    :goto_122
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1010

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1497
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->twrVars:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1498
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1499
    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    .line 1500
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 1501
    invoke-virtual {v9, v2}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 1495
    :cond_143
    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_122
.end method

.method private makeTwrFinallyClause(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 11

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 1541
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1542
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->paramName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1545
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1546
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->addSuppressed:Lcom/sun/tools/javac/util/Name;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1548
    invoke-virtual {v6, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 1546
    invoke-direct {p0, v4, v5, v6}, Lcom/sun/tools/javac/comp/Lower;->makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    .line 1551
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1552
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/Lower;->makeResourceCloseInvocation(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v4

    .line 1553
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v1, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    .line 1554
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v5, v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    .line 1555
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Catch(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1556
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v4, v0, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Try(Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    .line 1559
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/tools/javac/comp/Lower;->makeNonNullCheck(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    .line 1561
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/Lower;->makeResourceCloseInvocation(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v5

    .line 1559
    invoke-virtual {v1, v4, v0, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->If(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCIf;

    move-result-object v0

    .line 1564
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1565
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/Lower;->makeNonNullCheck(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v1, v4, v0, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->If(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCIf;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1564
    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0
.end method

.method private needPackageInfoClass(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Z
    .registers 6

    const/4 v1, 0x1

    .line 2229
    sget-object v0, Lcom/sun/tools/javac/comp/Lower$7;->$SwitchMap$com$sun$tools$javac$main$RecognizedOptions$PkgInfo:[I

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->pkginfoOpt:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    invoke-virtual {v2}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_42

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3b

    const/4 v2, 0x3

    if-ne v0, v2, :cond_35

    .line 2235
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 2236
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/code/Types;->getRetention(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/code/RetentionPolicy;

    move-result-object v0

    .line 2237
    sget-object v3, Lcom/sun/tools/javac/code/RetentionPolicy;->SOURCE:Lcom/sun/tools/javac/code/RetentionPolicy;

    if-eq v0, v3, :cond_1b

    move v0, v1

    .line 2240
    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32

    .line 2242
    :cond_35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2233
    :cond_3b
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    goto :goto_32

    :cond_42
    move v0, v1

    .line 2231
    goto :goto_32
.end method

.method private outerCacheClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 9

    const-wide/16 v6, 0x200

    const-wide/16 v4, 0x0

    .line 1717
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->outermostClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1718
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v6

    cmp-long v1, v2, v4

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 1719
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useInnerCacheClass()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1725
    :goto_19
    return-object v0

    .line 1720
    :cond_1a
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    .line 1721
    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    :goto_20
    if-eqz v1, :cond_46

    .line 1722
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_43

    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v3, :cond_43

    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1724
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_19

    .line 1721
    :cond_43
    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_20

    .line 1725
    :cond_46
    const-wide/16 v2, 0x1008

    invoke-virtual {p0, v2, v3, v0}, Lcom/sun/tools/javac/comp/Lower;->makeEmptyClass(JLcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    goto :goto_19
.end method

.method private patchTargets(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 5

    .line 3224
    new-instance v0, Lcom/sun/tools/javac/comp/Lower$1Patcher;

    invoke-direct {v0, p0, p2, p3}, Lcom/sun/tools/javac/comp/Lower$1Patcher;-><init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)V

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Lower$1Patcher;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3225
    return-void
.end method

.method private static treeTag(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;)I
    .registers 3

    .line 836
    iget v0, p0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_33

    packed-switch v0, :pswitch_data_36

    packed-switch v0, :pswitch_data_62

    packed-switch v0, :pswitch_data_7e

    .line 869
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 840
    :pswitch_15  #0x82, 0x83
    const/16 v0, 0x4d

    .line 867
    :goto_17
    return v0

    .line 838
    :pswitch_18  #0x80, 0x81
    const/16 v0, 0x4c

    goto :goto_17

    .line 842
    :pswitch_1b  #0x7e, 0x7f
    const/16 v0, 0x4e

    goto :goto_17

    .line 851
    :pswitch_1e  #0x7c, 0x7d, 0x112, 0x113
    const/16 v0, 0x57

    goto :goto_17

    .line 848
    :pswitch_21  #0x7a, 0x7b, 0x110, 0x111
    const/16 v0, 0x56

    goto :goto_17

    .line 845
    :pswitch_24  #0x78, 0x79, 0x10e, 0x10f
    const/16 v0, 0x55

    goto :goto_17

    .line 867
    :pswitch_27  #0x70, 0x71, 0x72, 0x73
    const/16 v0, 0x5c

    goto :goto_17

    .line 864
    :pswitch_2a  #0x6c, 0x6d, 0x6e, 0x6f
    const/16 v0, 0x5b

    goto :goto_17

    .line 861
    :pswitch_2d  #0x68, 0x69, 0x6a, 0x6b
    const/16 v0, 0x5a

    goto :goto_17

    .line 858
    :pswitch_30  #0x64, 0x65, 0x66, 0x67
    const/16 v0, 0x59

    goto :goto_17

    .line 855
    :cond_33
    :pswitch_33  #0x60, 0x61, 0x62, 0x63
    const/16 v0, 0x58

    goto :goto_17

    .line 836
    :pswitch_data_36
    .packed-switch 0x60
        :pswitch_33  #00000060
        :pswitch_33  #00000061
        :pswitch_33  #00000062
        :pswitch_33  #00000063
        :pswitch_30  #00000064
        :pswitch_30  #00000065
        :pswitch_30  #00000066
        :pswitch_30  #00000067
        :pswitch_2d  #00000068
        :pswitch_2d  #00000069
        :pswitch_2d  #0000006a
        :pswitch_2d  #0000006b
        :pswitch_2a  #0000006c
        :pswitch_2a  #0000006d
        :pswitch_2a  #0000006e
        :pswitch_2a  #0000006f
        :pswitch_27  #00000070
        :pswitch_27  #00000071
        :pswitch_27  #00000072
        :pswitch_27  #00000073
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x78
        :pswitch_24  #00000078
        :pswitch_24  #00000079
        :pswitch_21  #0000007a
        :pswitch_21  #0000007b
        :pswitch_1e  #0000007c
        :pswitch_1e  #0000007d
        :pswitch_1b  #0000007e
        :pswitch_1b  #0000007f
        :pswitch_18  #00000080
        :pswitch_18  #00000081
        :pswitch_15  #00000082
        :pswitch_15  #00000083
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x10e
        :pswitch_24  #0000010e
        :pswitch_24  #0000010f
        :pswitch_21  #00000110
        :pswitch_21  #00000111
        :pswitch_1e  #00000112
        :pswitch_1e  #00000113
    .end packed-switch
.end method

.method private useClone()Z
    .registers 4

    const/4 v0, 0x0

    .line 2473
    :try_start_1
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->clone:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    .line 2474
    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;
    :try_end_15
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1 .. :try_end_15} :catch_19

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 2477
    :cond_18
    :goto_18
    return v0

    .line 2476
    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method private visitArrayForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 15

    const-wide/16 v2, 0x0

    .line 3168
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3169
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arr"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 3170
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3173
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 3174
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 3175
    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v8

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v9, v4, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v10, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-wide v6, v2

    invoke-direct/range {v5 .. v10}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3178
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3179
    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v4, v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v4

    .line 3180
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 3181
    invoke-virtual {v7}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v10

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v11, v6, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v12, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-wide v8, v2

    invoke-direct/range {v7 .. v12}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3185
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v6, v9, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v6

    .line 3186
    iget-object v9, v6, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v10, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v10, v10, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v10, v8}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v8

    iput-object v8, v6, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v8, v9, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 3188
    invoke-static {v0, v4, v6}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 3189
    const/16 v0, 0x40

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v8, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    invoke-virtual {p0, v0, v6, v5}, Lcom/sun/tools/javac/comp/Lower;->makeBinary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v5

    .line 3191
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/16 v6, 0x34

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/sun/tools/javac/comp/Lower;->makeUnary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v6

    .line 3193
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v8, v8, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v8}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3194
    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v8, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    iget-object v9, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3195
    invoke-virtual {v9, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v7

    .line 3194
    invoke-virtual {v8, v1, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Indexed(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v1

    .line 3195
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 3196
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v7, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v7, v7, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v8, v8, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v9, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v9, v9, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v7, v8, v9, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 3199
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 3200
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 3201
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v7, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 3202
    invoke-static {v0, v7}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    .line 3204
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3207
    invoke-static {v6}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 3205
    invoke-virtual {v1, v4, v5, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->ForLoop(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCForLoop;

    move-result-object v1

    .line 3204
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3209
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0, v0, p1, v1}, Lcom/sun/tools/javac/comp/Lower;->patchTargets(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3210
    return-void
.end method

.method private visitEnumConstantDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;I)V
    .registers 7

    .line 2483
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 2484
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    .line 2485
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->makeLit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    .line 2486
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->makeLit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    .line 2487
    return-void
.end method

.method private visitEnumDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 26

    .line 2329
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2332
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v2, :cond_27

    .line 2333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2337
    :cond_27
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->classOfType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 2338
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v21

    .line 2341
    const/4 v4, 0x0

    .line 2342
    new-instance v9, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v9}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2343
    new-instance v22, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct/range {v22 .. v22}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2344
    new-instance v23, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct/range {v23 .. v23}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2345
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v3, v2

    .line 2346
    :goto_5e
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 2348
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_a1

    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v6, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v10, 0x4000

    and-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-eqz v2, :cond_a1

    .line 2349
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 2350
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/sun/tools/javac/comp/Lower;->visitEnumConstantDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;I)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v6, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2352
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2353
    add-int/lit8 v4, v4, 0x1

    .line 2347
    :goto_9d
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v2

    goto :goto_5e

    .line 2354
    :cond_a1
    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_9d

    .line 2359
    :cond_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "VALUES"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v6

    .line 2360
    :goto_ca
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_ff

    .line 2361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v6

    goto :goto_ca

    .line 2362
    :cond_ff
    new-instance v7, Lcom/sun/tools/javac/code/Type$ArrayType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v7, v2, v3}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 2363
    new-instance v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v4, 0x101a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v8, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v3 .. v8}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    .line 2368
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2369
    invoke-virtual {v9}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 2367
    invoke-virtual {v2, v4, v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v2

    .line 2370
    iput-object v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    .line 2371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2372
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 2374
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->values:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 2375
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 2374
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v14

    .line 2377
    invoke-direct/range {p0 .. p0}, Lcom/sun/tools/javac/comp/Lower;->useClone()Z

    move-result v2

    if-eqz v2, :cond_2bb

    .line 2379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, v14, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2380
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2381
    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->arrayCloneMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v5, v3, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v3

    .line 2380
    invoke-virtual {v2, v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v2

    .line 2383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2426
    :goto_1ab
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    check-cast v14, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2427
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    invoke-virtual {v3, v14, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v2

    .line 2429
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2431
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sun/tools/javac/comp/Lower;->debugLower:Z

    if-eqz v3, :cond_1e3

    .line 2432
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".valuesDef = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2442
    :cond_1e3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->valueOf:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 2445
    invoke-static {v5}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2442
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v3

    .line 2446
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_434

    const/4 v2, 0x1

    :goto_211
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 2447
    iget-object v2, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 2448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v4

    .line 2449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2451
    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v7, v7, Lcom/sun/tools/javac/util/Names;->valueOf:Lcom/sun/tools/javac/util/Name;

    .line 2453
    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 2451
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/sun/tools/javac/comp/Lower;->makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v6

    .line 2450
    invoke-virtual {v2, v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v2

    .line 2454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2455
    const-wide/16 v6, 0x0

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v5, v6, v7, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    .line 2454
    invoke-virtual {v5, v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v3

    .line 2456
    iget-object v2, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iput-object v2, v4, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2457
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/comp/Lower;->debugLower:Z

    if-eqz v2, :cond_293

    .line 2458
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".valueOf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2459
    :cond_293
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2461
    invoke-virtual/range {v23 .. v23}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2462
    invoke-virtual/range {v22 .. v22}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Target;->compilerBootstrap(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v2

    if-eqz v2, :cond_2ba

    .line 2466
    invoke-direct/range {p0 .. p1}, Lcom/sun/tools/javac/comp/Lower;->addEnumCompatibleMembers(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 2468
    :cond_2ba
    return-void

    .line 2386
    :cond_2bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v12

    .line 2387
    :goto_2dc
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_311

    .line 2388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v12

    goto :goto_2dc

    .line 2389
    :cond_311
    new-instance v9, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v10, 0x1010

    move-object v13, v7

    invoke-direct/range {v9 .. v14}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2394
    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v6, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2393
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v2

    .line 2396
    iput-object v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    .line 2397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v9, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    .line 2400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->systemArraycopyMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-nez v4, :cond_3b9

    .line 2401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    .line 2403
    const-string v5, "arraycopy"

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    .line 2404
    const/4 v10, 0x2

    new-array v10, v10, [Lcom/sun/tools/javac/code/Type;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v8, v10, v7

    invoke-static {v4, v5, v6, v10}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    .line 2410
    new-instance v15, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v16, 0x9

    new-instance v19, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->systemType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object/from16 v20, v0

    invoke-direct/range {v15 .. v20}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sun/tools/javac/comp/Lower;->systemArraycopyMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2400
    :cond_3b9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->systemType:Lcom/sun/tools/javac/code/Type;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2415
    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Lower;->systemArraycopyMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v4, v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2417
    invoke-virtual {v6, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2418
    invoke-virtual {v8, v9}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2419
    invoke-virtual {v11, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v12, v12, Lcom/sun/tools/javac/code/Symtab;->lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v11, v3, v12}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 2417
    const/4 v11, 0x2

    new-array v11, v11, [Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v10, 0x1

    aput-object v3, v11, v10

    invoke-static {v6, v7, v8, v11}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2415
    invoke-virtual {v4, v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v3

    .line 2422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v9}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v4

    .line 2423
    invoke-static {v2, v3, v4}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto/16 :goto_1ab

    .line 2446
    :cond_434
    const/4 v2, 0x0

    goto/16 :goto_211
.end method

.method private visitIterableForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 12

    const-wide/16 v2, 0x0

    .line 3245
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3246
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 3247
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->iterableType:Lcom/sun/tools/javac/code/Type;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v4, v5}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 3249
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 3250
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3251
    :cond_3b
    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 3252
    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v6, v4}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 3253
    iget v5, v4, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v6, 0xe

    if-ne v5, v6, :cond_69

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 3254
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4, v1, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3255
    :cond_69
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->iterator:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->iterableType:Lcom/sun/tools/javac/code/Type;

    .line 3257
    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 3258
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 3255
    invoke-direct {p0, v1, v4, v5, v6}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v7

    .line 3259
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v6, v7, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 3260
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3262
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3264
    invoke-virtual {v4, v5, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v5

    .line 3263
    invoke-virtual {v4, v1, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v4

    .line 3265
    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v6, Lcom/sun/tools/javac/util/Names;->hasNext:Lcom/sun/tools/javac/util/Name;

    iget-object v7, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 3268
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 3265
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v5

    .line 3269
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v5

    .line 3270
    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v6}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v7, v7, Lcom/sun/tools/javac/util/Names;->next:Lcom/sun/tools/javac/util/Name;

    iget-object v8, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 3273
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    .line 3270
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v6

    .line 3274
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v7, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {v7, v1, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v1

    .line 3275
    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_16f

    .line 3276
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v6, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    .line 3279
    :goto_11f
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v7, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v7, v7, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v8, v8, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v6, v7, v8, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 3282
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 3283
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 3284
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, v6}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    .line 3285
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    .line 3286
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3287
    invoke-static {v4}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 3289
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 3287
    invoke-virtual {v1, v2, v5, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->ForLoop(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCForLoop;

    move-result-object v1

    .line 3286
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3291
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0, v0, p1, v1}, Lcom/sun/tools/javac/comp/Lower;->patchTargets(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3292
    return-void

    .line 3278
    :cond_16f
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v6, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    goto :goto_11f
.end method

.method private visitMethodDefInternal(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 11

    .line 2554
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_140

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2555
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isInner()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_140

    .line 2558
    :cond_1a
    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2562
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/code/Scope;->dup(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    .line 2563
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 2564
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->freevars(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2565
    const/4 v0, 0x0

    .line 2566
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->hasOuterInstance()Z

    move-result v1

    if-eqz v1, :cond_144

    .line 2567
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos:I

    invoke-virtual {p0, v0, v5}, Lcom/sun/tools/javac/comp/Lower;->outerThisDef(ILcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    move-object v1, v0

    .line 2568
    :goto_3c
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos:I

    invoke-virtual {p0, v0, v2, v5}, Lcom/sun/tools/javac/comp/Lower;->freevarDefs(ILcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2571
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2572
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translateVarDefs(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 2573
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    .line 2576
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-nez v0, :cond_63

    .line 2577
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2630
    :goto_62
    return-void

    .line 2583
    :cond_63
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 2584
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->hasOuterInstance()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2585
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 2590
    :cond_7b
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 2592
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 2593
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 2594
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v3, v1

    .line 2595
    :goto_98
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 2596
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->isInitialConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 2597
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget v7, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->pos:I

    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 2598
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->proxyName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/sun/tools/javac/comp/Lower;->initField(ILcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v1

    .line 2597
    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 2599
    :cond_ba
    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2595
    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v1

    goto :goto_98

    .line 2601
    :cond_cc
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2602
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2604
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 2605
    new-instance v7, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v7, v2, v3, v1, v8}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v7, v5, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    .line 2608
    :cond_ed
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->hasOuterInstance()Z

    move-result v1

    if-eqz v1, :cond_107

    .line 2609
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->isInitialConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 2611
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->pos:I

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->initOuterThis(I)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 2615
    :cond_107
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    .line 2619
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2620
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->initializeFieldsBeforeSuper()Z

    move-result v2

    if-eqz v2, :cond_133

    .line 2621
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    .line 2625
    :goto_12d
    iput-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 2629
    :goto_12f
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto/16 :goto_62

    .line 2623
    :cond_133
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    goto :goto_12d

    .line 2627
    :cond_140
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeTranslator;->visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V

    goto :goto_12f

    :cond_144
    move-object v1, v0

    goto/16 :goto_3c
.end method


# virtual methods
.method abstractLval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7

    .line 2098
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 2099
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 2132
    :pswitch_b  #0x20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2101
    :pswitch_11  #0x23
    invoke-interface {p2, v1}, Lcom/sun/tools/javac/comp/Lower$TreeBuilder;->build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 2129
    :goto_15
    return-object v0

    :pswitch_16  #0x22
    move-object v0, v1

    .line 2103
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 2104
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2105
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 2106
    if-eqz v2, :cond_30

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    invoke-interface {p2, v1}, Lcom/sun/tools/javac/comp/Lower$TreeBuilder;->build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    goto :goto_15

    .line 2107
    :cond_30
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    new-instance v2, Lcom/sun/tools/javac/comp/Lower$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/sun/tools/javac/comp/Lower$2;-><init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->abstractRval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    goto :goto_15

    .line 2114
    :pswitch_3c  #0x21
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    .line 2115
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    new-instance v2, Lcom/sun/tools/javac/comp/Lower$3;

    invoke-direct {v2, p0, v1, p2}, Lcom/sun/tools/javac/comp/Lower$3;-><init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)V

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Lower;->abstractRval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    goto :goto_15

    .line 2129
    :pswitch_4a  #0x1f
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Lower;->abstractLval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    goto :goto_15

    .line 2099
    nop

    :pswitch_data_54
    .packed-switch 0x1f
        :pswitch_4a  #0000001f
        :pswitch_b  #00000020
        :pswitch_3c  #00000021
        :pswitch_16  #00000022
        :pswitch_11  #00000023
    .end packed-switch
.end method

.method abstractRval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 12

    .line 2063
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v7

    .line 2064
    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_64

    const/16 v1, 0x24

    if-eq v0, v1, :cond_5f

    .line 2072
    :cond_10
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 2075
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2074
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1010

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2079
    invoke-direct {p0, v7, p2}, Lcom/sun/tools/javac/comp/Lower;->convert(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 2080
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 2081
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/sun/tools/javac/comp/Lower$TreeBuilder;->build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 2082
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->LetExpr(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$LetExpr;

    move-result-object v0

    .line 2083
    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 2084
    :goto_5e
    return-object v0

    .line 2066
    :cond_5f
    invoke-interface {p3, v7}, Lcom/sun/tools/javac/comp/Lower$TreeBuilder;->build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    goto :goto_5e

    :cond_64
    move-object v0, v7

    .line 2068
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    .line 2069
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_10

    .line 2070
    invoke-interface {p3, v7}, Lcom/sun/tools/javac/comp/Lower$TreeBuilder;->build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    goto :goto_5e
.end method

.method abstractRval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4

    .line 2089
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/comp/Lower;->abstractRval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 15

    move-object v1, p1

    move-object v2, p2

    .line 1048
    :goto_2
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5e

    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_5e

    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 1049
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eq v0, v4, :cond_5e

    move-object v0, v1

    .line 1051
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    .line 1052
    if-eqz v0, :cond_32

    .line 1053
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1054
    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->makeLit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 1143
    :cond_31
    :goto_31
    return-object v2

    .line 1057
    :cond_32
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->proxyName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1058
    if-eqz v1, :cond_19c

    iget-wide v4, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_19c

    const/4 v0, 0x1

    :goto_4e
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1059
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    goto :goto_2

    .line 1061
    :cond_5e
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v3, 0x22

    if-ne v0, v3, :cond_cf

    move-object v0, v2

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object v3, v0

    .line 1062
    :goto_6c
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_13b

    const/4 v4, 0x4

    if-eq v0, v4, :cond_78

    const/16 v4, 0x10

    if-ne v0, v4, :cond_31

    .line 1087
    :cond_78
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_31

    .line 1094
    if-eqz p4, :cond_87

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->needsPrivateAccess(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1095
    :cond_87
    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->needsProtectedAccess(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_d2

    :cond_8d
    const/4 v4, 0x1

    .line 1096
    :goto_8e
    if-nez v4, :cond_96

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->needsPrivateAccess(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_d4

    :cond_96
    const/4 v0, 0x1

    move v6, v0

    .line 1100
    :goto_98
    if-nez v3, :cond_ae

    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eq v0, v7, :cond_ae

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    .line 1103
    invoke-virtual {v1, v0, v7}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_ae

    const/4 v0, 0x1

    move v5, v0

    .line 1105
    :cond_ae
    if-nez v6, :cond_b2

    if-eqz v5, :cond_31

    .line 1106
    :cond_b2
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1109
    iget v0, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v7, 0x4

    if-ne v0, v7, :cond_d7

    move-object v0, v1

    .line 1110
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_d7

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->makeLit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    goto/16 :goto_31

    .line 1061
    :cond_cf
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_6c

    .line 1095
    :cond_d2
    const/4 v4, 0x0

    goto :goto_8e

    .line 1096
    :cond_d4
    const/4 v0, 0x0

    move v6, v0

    goto :goto_98

    .line 1116
    :cond_d7
    if-eqz v6, :cond_11d

    .line 1117
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1118
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_113

    .line 1121
    if-nez v3, :cond_f5

    .line 1122
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v1, v5}, Lcom/sun/tools/javac/comp/Lower;->makeOwnerThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 1123
    :cond_f5
    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1124
    const/4 v3, 0x0

    move-object v6, v0

    move-object v7, v3

    :goto_fc
    move-object v0, p0

    move-object v3, p3

    move v5, p4

    .line 1126
    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Lower;->accessSymbol(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;ZZ)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 1129
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1130
    if-eqz v7, :cond_116

    .line 1129
    :goto_107
    invoke-virtual {v1, v7, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1132
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    goto/16 :goto_31

    :cond_113
    move-object v6, v0

    move-object v7, v3

    .line 1118
    goto :goto_fc

    .line 1130
    :cond_116
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    goto :goto_107

    .line 1136
    :cond_11d
    if-eqz v5, :cond_31

    .line 1137
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    .line 1138
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/sun/tools/javac/comp/Lower;->accessBase(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 1137
    invoke-virtual {v0, v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1138
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    goto/16 :goto_31

    .line 1064
    :cond_13b
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_31

    .line 1067
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Convert;->shortName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    move-object v0, v3

    .line 1068
    :goto_14b
    if-eqz v0, :cond_16b

    .line 1069
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    if-eqz v3, :cond_16b

    .line 1070
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    iget v3, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_16b

    .line 1071
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_169

    .line 1072
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_14b

    .line 1073
    :cond_169
    const/4 v0, 0x0

    goto :goto_14b

    .line 1075
    :cond_16b
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_17a

    move-object v0, v2

    .line 1076
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iput-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    goto/16 :goto_31

    .line 1077
    :cond_17a
    if-nez v0, :cond_190

    .line 1078
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    move-object v0, v1

    .line 1079
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iput-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    move-object v2, v1

    goto/16 :goto_31

    :cond_190
    move-object v1, v2

    .line 1081
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iput-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object v0, v2

    .line 1082
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iput-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    goto/16 :goto_31

    :cond_19c
    move v0, v3

    goto/16 :goto_4e
.end method

.method access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 5

    .line 1150
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1151
    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_6
.end method

.method accessBase(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 7

    .line 977
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 978
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-interface {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 977
    :goto_21
    return-object v0

    .line 979
    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Lower;->makeOwnerThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_21
.end method

.method accessClass(Lcom/sun/tools/javac/code/Symbol;ZLcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 10

    .line 1018
    if-eqz p2, :cond_41

    .line 1019
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1021
    invoke-virtual {p3}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_30

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_30

    .line 1022
    check-cast p3, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, p3, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1023
    :goto_21
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/code/Symbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 1024
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    goto :goto_21

    .line 1028
    :cond_30
    :goto_30
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 1029
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    goto :goto_30

    .line 1035
    :cond_41
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    :cond_47
    return-object v0
.end method

.method accessConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;
    .registers 13

    .line 1160
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/comp/Lower;->needsPrivateAccess(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1161
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    .line 1162
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1163
    if-nez v0, :cond_79

    .line 1164
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1165
    iget-wide v2, v6, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_37

    .line 1166
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    .line 1167
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 1168
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1165
    :cond_37
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    .line 1174
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->accessConstructorTag()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1173
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1175
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    iget-object v8, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1176
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x1000

    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v9, v9, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v7, v8, v9}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1179
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 1180
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->accessed:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1185
    :goto_76
    return-object v1

    :cond_77
    move-object v1, p2

    goto :goto_76

    :cond_79
    move-object v1, v0

    goto :goto_76
.end method

.method accessConstructorDef(ILcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 10

    .line 1293
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1294
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    .line 1295
    invoke-virtual {p3, v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1294
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    .line 1297
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    .line 1298
    iput-object p2, v1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1299
    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    .line 1300
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 1305
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Idents(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1303
    invoke-virtual {v2, v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v1

    .line 1302
    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Call(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v1

    .line 1301
    const-wide/16 v4, 0x0

    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v2, v4, v5, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1306
    return-object v0
.end method

.method accessConstructorTag()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 5

    .line 1192
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    .line 1193
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 1194
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1193
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 1196
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1197
    if-nez v0, :cond_41

    .line 1198
    const-wide/16 v2, 0x1008

    invoke-virtual {p0, v2, v3, v1}, Lcom/sun/tools/javac/comp/Lower;->makeEmptyClass(JLcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 1200
    :cond_41
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrTags:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrTags:Lcom/sun/tools/javac/util/List;

    .line 1201
    return-object v0
.end method

.method accessDef(ILcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;I)Lcom/sun/tools/javac/tree/JCTree;
    .registers 15

    const-wide/16 v8, 0x0

    const/4 v6, 0x4

    .line 1231
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1232
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1233
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v3

    .line 1236
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 1237
    if-nez v0, :cond_101

    .line 1241
    :goto_21
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-eqz v0, :cond_a4

    .line 1242
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    .line 1243
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Idents(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1249
    :goto_3a
    iget v2, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v2, v6, :cond_d6

    .line 1251
    and-int/lit8 v2, p4, 0x1

    sub-int v2, p4, v2

    .line 1254
    if-eqz v2, :cond_6f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_cb

    if-eq v2, v6, :cond_c0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_c0

    const/16 v4, 0x8

    if-eq v2, v4, :cond_c0

    const/16 v4, 0xa

    if-eq v2, v4, :cond_c0

    .line 1266
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1267
    invoke-direct {p0, v2}, Lcom/sun/tools/javac/comp/Lower;->binaryAccessOperator(I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/tools/javac/comp/Lower;->treeTag(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;)I

    move-result v5

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1266
    invoke-virtual {v4, v5, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Assignop(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object v1

    move-object v0, v1

    .line 1268
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    invoke-direct {p0, v2}, Lcom/sun/tools/javac/comp/Lower;->binaryAccessOperator(I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 1256
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v0

    .line 1274
    :goto_7b
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v8, v9, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    iput-object v0, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1278
    iget-object v0, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    :goto_8a
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1279
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1278
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_8a

    .line 1245
    :cond_a4
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1246
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Idents(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto/16 :goto_3a

    .line 1262
    :cond_c0
    add-int/lit8 v0, v2, -0x4

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x34

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->makeUnary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v1

    goto :goto_6f

    .line 1259
    :cond_cb
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v1

    goto :goto_6f

    .line 1272
    :cond_d6
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Call(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    goto :goto_7b

    .line 1280
    :cond_e1
    iget-object v0, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1281
    iget-object v0, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_ec
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1282
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 1281
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_ec

    .line 1284
    :cond_100
    return-object v3

    :cond_101
    move-object p2, v0

    goto/16 :goto_21
.end method

.method accessName(II)Lcom/sun/tools/javac/util/Name;
    .registers 6

    .line 876
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 877
    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v2, p2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, p2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 876
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method accessSymbol(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;ZZ)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 24

    .line 891
    if-eqz p5, :cond_f6

    if-eqz p4, :cond_f6

    move-object/from16 v4, p2

    .line 894
    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object v10, v4

    .line 900
    :goto_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v4, v10, :cond_28

    .line 902
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/sun/tools/javac/code/Symbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 903
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p1, v4

    .line 906
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    .line 907
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 908
    if-nez v4, :cond_161

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->accessed:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 910
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    sget v6, Lcom/sun/tools/javac/comp/Lower;->NCODES:I

    new-array v6, v6, [Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->accessed:Lcom/sun/tools/javac/util/ListBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move-object v8, v4

    .line 908
    :goto_62
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_10a

    const/16 v5, 0x10

    if-ne v4, v5, :cond_104

    .line 937
    const/4 v5, 0x0

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    .line 940
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object v13, v4

    move-object v14, v7

    .line 935
    :goto_94
    if-eqz p4, :cond_15e

    if-eqz p5, :cond_15e

    add-int/lit8 v4, v5, 0x1

    move v11, v4

    .line 954
    :goto_9b
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v16, 0x8

    and-long v4, v4, v16

    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-nez v4, :cond_15b

    .line 955
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object v12, v4

    .line 954
    :goto_ba
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 958
    aget-object v5, v4, v11

    .line 959
    if-nez v5, :cond_f5

    .line 960
    new-instance v5, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v6, 0x1008

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/sun/tools/javac/comp/Lower;->accessName(II)Lcom/sun/tools/javac/util/Name;

    move-result-object v8

    new-instance v9, Lcom/sun/tools/javac/code/Type$MethodType;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v15, v15, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v9, v12, v14, v13, v15}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-direct/range {v5 .. v10}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-virtual {v10}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v7}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 966
    aput-object v5, v4, v11

    .line 968
    :cond_f5
    return-object v5

    .line 898
    :cond_f6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->accessClass(Lcom/sun/tools/javac/code/Symbol;ZLcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v10

    goto/16 :goto_11

    .line 943
    :cond_104
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 922
    :cond_10a
    invoke-static/range {p2 .. p3}, Lcom/sun/tools/javac/comp/Lower;->accessCode(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v5

    .line 923
    const/16 v4, 0xc

    if-lt v5, v4, :cond_144

    .line 924
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sun/tools/javac/comp/Lower;->binaryAccessOperator(I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v4

    .line 925
    iget v6, v4, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v7, 0x100

    if-ne v6, v7, :cond_13b

    .line 926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v4}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 933
    :goto_128
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v9

    .line 934
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    move-object v13, v7

    move-object v14, v9

    move-object v6, v4

    goto/16 :goto_94

    .line 928
    :cond_13b
    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_128

    .line 929
    :cond_144
    const/4 v4, 0x2

    if-ne v5, v4, :cond_156

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    goto :goto_128

    .line 932
    :cond_156
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    goto :goto_128

    :cond_15b
    move-object v12, v6

    goto/16 :goto_ba

    :cond_15e
    move v11, v5

    goto/16 :goto_9b

    :cond_161
    move-object v8, v4

    goto/16 :goto_62
.end method

.method boxArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
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
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2851
    .line 2852
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2883
    :goto_8
    return-object p2

    .line 2854
    :cond_9
    new-instance v6, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v6}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    move v4, v3

    move-object v5, p2

    .line 2855
    :goto_10
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2856
    iget-object v0, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2857
    iget-object v1, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v0, v1, :cond_a1

    move v1, v2

    :goto_2b
    or-int/2addr v1, v4

    .line 2858
    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2859
    iget-object v0, v5, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 2860
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v4, v1

    move-object v5, v0

    .line 2861
    goto :goto_10

    .line 2862
    :cond_36
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2863
    if-eqz p3, :cond_7c

    .line 2864
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2866
    :goto_41
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2867
    iget-object v0, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2868
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2869
    iget-object v5, v5, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_41

    .line 2871
    :cond_57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 2872
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2873
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2871
    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    .line 2874
    new-instance v1, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, p3, v2}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    .line 2875
    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2883
    :cond_77
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object p2

    goto :goto_8

    .line 2877
    :cond_7c
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    if-ne v1, v2, :cond_99

    .line 2878
    iget-object v1, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2879
    iget-object v1, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v0, v1, :cond_9f

    .line 2880
    :goto_90
    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2881
    or-int v0, v4, v2

    if-nez v0, :cond_77

    goto/16 :goto_8

    .line 2877
    :cond_99
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_9f
    move v2, v3

    goto :goto_90

    :cond_a1
    move v1, v3

    goto :goto_2b
.end method

.method boxIfNeeded(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;",
            "Lcom/sun/tools/javac/code/Type;",
            ")TT;"
        }
    .end annotation

    .line 2889
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    .line 2890
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-ne v0, v1, :cond_d

    .line 2904
    :goto_c
    return-object p1

    .line 2892
    :cond_d
    if-eqz v0, :cond_40

    .line 2893
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2894
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_38

    .line 2895
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2896
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 2897
    :cond_31
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Lower;->boxPrimitive(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_c

    .line 2899
    :cond_38
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->boxPrimitive(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_3e
    move-object p1, v0

    .line 2904
    goto :goto_c

    .line 2902
    :cond_40
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Lower;->unbox(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_3e
.end method

.method boxPrimitive(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 2909
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Lower;->boxPrimitive(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method boxPrimitive(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 7

    .line 2914
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2915
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->boxWithConstructors()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2916
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 2918
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 2919
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2916
    invoke-direct {p0, v0, p2, v1}, Lcom/sun/tools/javac/comp/Lower;->lookupConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 2920
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Create(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 2927
    :goto_2b
    return-object v0

    .line 2922
    :cond_2c
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->valueOf:Lcom/sun/tools/javac/util/Name;

    .line 2925
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 2926
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2922
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 2927
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    goto :goto_2b
.end method

.method checkConflicts(Lcom/sun/tools/javac/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 634
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 635
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->conflictsChecker:Lcom/sun/tools/javac/tree/JCTree$Visitor;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    goto :goto_4

    .line 637
    :cond_16
    return-void
.end method

.method classDef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 180
    if-nez v0, :cond_1b

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->outermostMemberDef:Lcom/sun/tools/javac/tree/JCTree;

    if-eqz v1, :cond_1b

    .line 183
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->classMap:Lcom/sun/tools/javac/comp/Lower$ClassMap;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Lower$ClassMap;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 184
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 186
    :cond_1b
    if-nez v0, :cond_2c

    .line 189
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->classMap:Lcom/sun/tools/javac/comp/Lower$ClassMap;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->outermostClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Lower$ClassMap;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 190
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 192
    :cond_2c
    return-object v0
.end method

.method classDollarSymBody(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 13

    .line 1771
    iget-object v7, p2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1772
    iget-object v6, v7, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v6, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1779
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->classLiteralsNoInit()Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 1781
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cl"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 1782
    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1008

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symtab;->classLoaderType:Lcom/sun/tools/javac/code/Type;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1785
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 1788
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 1789
    invoke-virtual {p0, v6}, Lcom/sun/tools/javac/comp/Lower;->classDef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v2

    .line 1790
    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 1793
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, v6, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1794
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1795
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1794
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    .line 1797
    new-instance v2, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, v6, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v3, v4}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    .line 1802
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->forName:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 1803
    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->classLoaderType:Lcom/sun/tools/javac/code/Type;

    .line 1804
    invoke-static {v5, v6, v8}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 1802
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    .line 1809
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1811
    const/16 v4, 0x3e

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sun/tools/javac/comp/Lower;->makeBinary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1813
    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v8, v8, Lcom/sun/tools/javac/util/Names;->getClass:Lcom/sun/tools/javac/util/Name;

    .line 1817
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    .line 1815
    invoke-direct {p0, v0, v8, v9}, Lcom/sun/tools/javac/comp/Lower;->makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v8, v8, Lcom/sun/tools/javac/util/Names;->getComponentType:Lcom/sun/tools/javac/util/Name;

    .line 1819
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    .line 1815
    invoke-direct {p0, v0, v8, v9}, Lcom/sun/tools/javac/comp/Lower;->makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v8, v8, Lcom/sun/tools/javac/util/Names;->getClassLoader:Lcom/sun/tools/javac/util/Name;

    .line 1821
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    .line 1814
    invoke-direct {p0, v0, v8, v9}, Lcom/sun/tools/javac/comp/Lower;->makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 1812
    invoke-virtual {v5, v6, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->classLoaderType:Lcom/sun/tools/javac/code/Type;

    .line 1821
    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1822
    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    .line 1810
    invoke-virtual {v3, v4, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Conditional(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->classLoaderType:Lcom/sun/tools/javac/code/Type;

    .line 1822
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1825
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, p2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 1826
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sun/tools/javac/comp/Lower;->makeLit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 1825
    invoke-static {v0, v3, v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1828
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1832
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    .line 1831
    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 1830
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Call(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    .line 1829
    const-wide/16 v2, 0x0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    .line 1851
    :goto_13b
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1852
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->paramName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->classNotFoundExceptionType:Lcom/sun/tools/javac/code/Type;

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1857
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->hasInitCause()Z

    move-result v2

    if-eqz v2, :cond_1f1

    .line 1859
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->noClassDefFoundErrorType:Lcom/sun/tools/javac/code/Type;

    .line 1861
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1860
    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->makeNewClass(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->initCause:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1863
    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 1860
    invoke-direct {p0, v2, v3, v4}, Lcom/sun/tools/javac/comp/Lower;->makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    .line 1864
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Throw(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCThrow;

    move-result-object v2

    .line 1880
    :goto_17a
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v4, 0x0

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    .line 1883
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Catch(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    move-result-object v1

    .line 1887
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1888
    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1887
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Try(Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    .line 1890
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v2, 0x0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0

    .line 1835
    :cond_1a9
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->forName:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 1837
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 1838
    invoke-static {v3}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1835
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 1840
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1844
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, p2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1846
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 1845
    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1843
    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 1842
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Call(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    .line 1841
    const-wide/16 v2, 0x0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    goto/16 :goto_13b

    .line 1867
    :cond_1f1
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->getMessage:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->classNotFoundExceptionType:Lcom/sun/tools/javac/code/Type;

    .line 1870
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 1867
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    .line 1872
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->noClassDefFoundErrorType:Lcom/sun/tools/javac/code/Type;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1874
    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 1876
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 1874
    invoke-virtual {v5, v2, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1873
    invoke-virtual {p0, v4, v2}, Lcom/sun/tools/javac/comp/Lower;->makeNewClass(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Throw(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCThrow;

    move-result-object v2

    goto/16 :goto_17a
.end method

.method freevarDefs(ILcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, 0x1010

    .line 1347
    .line 1348
    iget v0, p3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 1349
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->usePrivateSyntheticFields()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1350
    const-wide/16 v0, 0x2

    or-long/2addr v2, v0

    .line 1351
    :cond_12
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v7, v0

    .line 1352
    :goto_17
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1353
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1354
    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 1355
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/comp/Lower;->proxyName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1356
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1357
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 1358
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1359
    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1352
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v7, v0

    goto :goto_17

    .line 1361
    :cond_53
    return-object v7
.end method

.method freevars(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_26

    .line 320
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 321
    if-nez v0, :cond_25

    .line 322
    new-instance v0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;-><init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->classDef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 324
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lcom/sun/tools/javac/util/List;

    .line 325
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_25
    :goto_25
    return-object v0

    :cond_26
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_25
.end method

.method initField(ILcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1677
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v3

    .line 1678
    iget-object v4, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1679
    iget-object v0, v4, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v5, 0x10

    if-ne v0, v5, :cond_57

    move v0, v1

    :goto_13
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1680
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1681
    iget-object v3, v4, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v3, v5, :cond_59

    :goto_24
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1682
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1683
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    .line 1686
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->This(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1687
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    .line 1685
    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    .line 1687
    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1684
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    .line 1683
    return-object v0

    :cond_57
    move v0, v2

    .line 1679
    goto :goto_13

    :cond_59
    move v1, v2

    .line 1681
    goto :goto_24
.end method

.method initOuterThis(I)Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1693
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1694
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_57

    move v1, v2

    :goto_11
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1695
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1696
    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v4, v5, :cond_59

    :goto_24
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1697
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1698
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    .line 1701
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->This(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1702
    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 1700
    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    .line 1702
    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1699
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    .line 1698
    return-object v0

    :cond_57
    move v1, v3

    .line 1694
    goto :goto_11

    :cond_59
    move v2, v3

    .line 1696
    goto :goto_24
.end method

.method loadFreevar(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 6

    .line 1411
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method loadFreevars(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1404
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1405
    :goto_5
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1406
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Lower;->loadFreevar(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1405
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_5

    .line 1407
    :cond_1b
    return-object v1
.end method

.method lowerBoxedPostop(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5

    .line 3041
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    .line 3042
    :goto_f
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    new-instance v2, Lcom/sun/tools/javac/comp/Lower$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/sun/tools/javac/comp/Lower$6;-><init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree$JCUnary;Z)V

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->abstractLval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0

    .line 3041
    :cond_1b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method makeAccessible(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 8

    .line 1208
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->classDef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v2

    .line 1209
    if-nez v2, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class def not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 1210
    :cond_2a
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_49

    .line 1211
    iget-object v1, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    iget v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    .line 1212
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0, v3, p1, v0}, Lcom/sun/tools/javac/comp/Lower;->accessConstructorDef(ILcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 1211
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 1221
    :cond_48
    return-void

    .line 1214
    :cond_49
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1215
    const/4 v1, 0x0

    :goto_52
    sget v3, Lcom/sun/tools/javac/comp/Lower;->NCODES:I

    if-ge v1, v3, :cond_48

    .line 1216
    aget-object v3, v0, v1

    if-eqz v3, :cond_6a

    .line 1217
    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    iget v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    aget-object v5, v0, v1

    .line 1218
    invoke-virtual {p0, v4, p1, v5, v1}, Lcom/sun/tools/javac/comp/Lower;->accessDef(ILcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;I)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v4

    .line 1217
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 1215
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_52
.end method

.method makeAssignop(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;
    .registers 11

    .line 538
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/tree/TreeMaker;->Assignop(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object v6

    .line 539
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 540
    invoke-virtual {v6}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v4, p2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, p3, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 539
    add-int/lit8 v2, v2, -0x11

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->resolveBinaryOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    iput-object v0, v6, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 541
    iget-object v0, p2, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, v6, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->type:Lcom/sun/tools/javac/code/Type;

    .line 542
    return-object v6
.end method

.method makeBinary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;
    .registers 11

    .line 525
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/tree/TreeMaker;->Binary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v6

    .line 526
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v4, p2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, p3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->resolveBinaryOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    iput-object v0, v6, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 528
    iget-object v0, v6, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v6, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->type:Lcom/sun/tools/javac/code/Type;

    .line 529
    return-object v6
.end method

.method makeComma(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4

    .line 2137
    new-instance v0, Lcom/sun/tools/javac/comp/Lower$4;

    invoke-direct {v0, p0, p2}, Lcom/sun/tools/javac/comp/Lower$4;-><init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Lower;->abstractRval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method makeEmptyClass(JLcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 13

    const/4 v4, 0x0

    .line 568
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1, p3}, Lcom/sun/tools/javac/jvm/ClassReader;->defineClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v7

    .line 569
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/comp/Check;->localClassName(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 570
    iget-object v0, p3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    iput-object v0, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 571
    iput-object v4, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 572
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v0, v7}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 573
    iput-wide p1, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 574
    iget-object v0, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 575
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 576
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 578
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/comp/Lower;->classDef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v8

    .line 581
    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 582
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    iget-object v1, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 586
    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    .line 587
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 588
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 585
    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    .line 589
    iput-object v7, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 590
    iget-object v1, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    .line 593
    iget-object v1, v8, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 595
    return-object v7
.end method

.method makeLit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 5

    .line 485
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    return-object v0
.end method

.method makeNewClass(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCNewClass;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 500
    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    move-object v2, v1

    move-object v4, p2

    move-object v5, v1

    .line 499
    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/tree/TreeMaker;->NewClass(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    .line 501
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    .line 502
    invoke-static {p2}, Lcom/sun/tools/javac/tree/TreeInfo;->types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    move-object v5, p1

    move-object v7, v1

    move v9, v8

    .line 501
    invoke-virtual/range {v2 .. v9}, Lcom/sun/tools/javac/comp/Resolve;->resolveConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZ)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    .line 503
    iput-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    .line 504
    return-object v0
.end method

.method makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 491
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->makeLit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method makeOuterThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1588
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 1589
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1590
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "no.encl.instance.of.type.in.scope"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1591
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 1592
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1617
    :goto_1c
    return-object v0

    .line 1594
    :cond_1d
    iget-object v0, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1595
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 1596
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v3, v1

    move-object v0, v4

    .line 1597
    :goto_35
    if-eq v3, p2, :cond_84

    .line 1599
    :goto_37
    iget-object v1, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1600
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1601
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "no.encl.instance.of.type.in.scope"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v0, p1, v1, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1604
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    move-object v0, v2

    .line 1605
    goto :goto_1c

    .line 1607
    :cond_4f
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1608
    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v4, v3, :cond_86

    .line 1609
    iget-object v4, v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v4, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v4, v5, :cond_70

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->hasOuterInstance()Z

    move-result v3

    if-nez v3, :cond_70

    .line 1610
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->earlyRefError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1611
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 1612
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_1c

    .line 1614
    :cond_70
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 1615
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, v1

    goto :goto_35

    :cond_84
    move-object v0, v2

    .line 1617
    goto :goto_1c

    :cond_86
    move-object v0, v1

    goto :goto_37
.end method

.method makeOwnerThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 8

    .line 1630
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 1631
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz p3, :cond_1f

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2, v1, v2}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1634
    :cond_e
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->This(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1637
    :goto_1e
    return-object v0

    .line 1631
    :cond_1f
    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    .line 1632
    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1637
    :cond_29
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Lower;->makeOwnerThisN(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_1e
.end method

.method makeOwnerThisN(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1645
    iget-object v5, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 1646
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 1647
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1648
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "no.encl.instance.of.type.in.scope"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v5, v2, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 1650
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1670
    :goto_1e
    return-object v0

    .line 1652
    :cond_1f
    iget-object v0, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1653
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 1654
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v3, v1

    move-object v0, v4

    .line 1655
    :goto_37
    if-eqz p3, :cond_43

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2, v3, v1}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_41
    move-object v0, v2

    .line 1670
    goto :goto_1e

    .line 1655
    :cond_43
    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v1, v4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1657
    :cond_4d
    :goto_4d
    iget-object v1, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1658
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1659
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "no.encl.instance.of.type.in.scope"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v5, v3, v6

    invoke-virtual {v0, p1, v1, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1662
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    move-object v0, v2

    .line 1663
    goto :goto_1e

    .line 1665
    :cond_65
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1666
    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v4, v3, :cond_81

    .line 1667
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 1668
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, v1

    goto :goto_37

    :cond_81
    move-object v0, v1

    goto :goto_4d
.end method

.method makeString(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 6

    .line 549
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_9

    .line 556
    :goto_8
    return-object p1

    .line 552
    :cond_9
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->valueOf:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 555
    invoke-static {v3}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 552
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    goto :goto_8
.end method

.method makeThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 5

    .line 1419
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, p2, :cond_15

    .line 1421
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2, v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->This(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1424
    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Lower;->makeOuterThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_14
.end method

.method makeTwrTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6

    .line 1465
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCTry;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1466
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->twrVars:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->dup()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->twrVars:Lcom/sun/tools/javac/code/Scope;

    .line 1467
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->makeTwrBlock(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;I)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    .line 1468
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-nez v1, :cond_35

    .line 1469
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 1472
    :goto_2a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->twrVars:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->twrVars:Lcom/sun/tools/javac/code/Scope;

    .line 1473
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    return-object v0

    .line 1471
    :cond_35
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Try(Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_2a
.end method

.method makeUnary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;
    .registers 8

    .line 512
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Unary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->rs:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v4, p2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/sun/tools/javac/comp/Resolve;->resolveUnaryOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 515
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->type:Lcom/sun/tools/javac/code/Type;

    .line 516
    return-object v0
.end method

.method make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;
    .registers 3

    .line 474
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->make_pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 475
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    return-object v0
.end method

.method mapForEnum(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Lower$EnumMapping;
    .registers 5

    .line 336
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;

    .line 337
    if-nez v0, :cond_14

    .line 338
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    new-instance v0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/comp/Lower$EnumMapping;-><init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_14
    return-object v0
.end method

.method needsPrivateAccess(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 8

    const/4 v0, 0x0

    .line 985
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne v1, v2, :cond_15

    .line 992
    :cond_14
    :goto_14
    return v0

    .line 987
    :cond_15
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_2f

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_2f

    .line 989
    iget-wide v2, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, -0x3

    and-long/2addr v2, v4

    iput-wide v2, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    goto :goto_14

    .line 992
    :cond_2f
    const/4 v0, 0x1

    goto :goto_14
.end method

.method needsProtectedAccess(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 11

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 999
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, v2, :cond_24

    .line 1001
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v2

    if-ne v0, v2, :cond_26

    :cond_24
    move v0, v1

    .line 1009
    :goto_25
    return v0

    .line 1003
    :cond_26
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1004
    const/4 v0, 0x1

    goto :goto_25

    .line 1005
    :cond_34
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_56

    .line 1006
    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_56

    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1007
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_58

    :cond_56
    move v0, v1

    .line 1008
    goto :goto_25

    .line 1009
    :cond_58
    check-cast p2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_25
.end method

.method outerThisDef(ILcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 10

    const-wide/16 v2, 0x1010

    .line 1385
    .line 1386
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 1387
    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->usePrivateSyntheticFields()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1388
    const-wide/16 v0, 0x2

    or-long/2addr v2, v0

    .line 1389
    :cond_12
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1390
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v5, p2}, Lcom/sun/tools/javac/comp/Lower;->outerThisName(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1392
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 1393
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 1394
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1395
    return-object v0
.end method

.method outerThisName(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;
    .registers 7

    .line 1368
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1369
    const/4 v0, 0x0

    .line 1370
    :goto_5
    iget v2, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_12

    .line 1371
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1372
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1374
    :cond_12
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    move-object v1, v0

    .line 1375
    :goto_33
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_68

    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_68

    .line 1376
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    move-object v1, v0

    goto :goto_33

    .line 1377
    :cond_68
    return-object v1
.end method

.method proxyName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;
    .registers 5

    .line 1338
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "val"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 2156
    if-nez p1, :cond_4

    .line 2157
    const/4 v0, 0x0

    .line 2165
    :goto_3
    return-object v0

    .line 2159
    :cond_4
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2160
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeTranslator;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 2161
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->endPositions:Ljava/util/Map;

    if-eqz v0, :cond_22

    if-eq v1, p1, :cond_22

    .line 2162
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2163
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->endPositions:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    move-object v0, v1

    .line 2165
    goto :goto_3
.end method

.method public translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;",
            "Lcom/sun/tools/javac/code/Type;",
            ")TT;"
        }
    .end annotation

    .line 2172
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Lower;->boxIfNeeded(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    goto :goto_3
.end method

.method public translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")TT;"
        }
    .end annotation

    .line 2178
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2179
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower;->enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2180
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 2181
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2182
    return-object v1
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

    .line 2198
    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 2201
    :cond_3
    return-object p1

    :cond_4
    move-object v1, p1

    .line 2199
    :goto_5
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2200
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 2199
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_5
.end method

.method public translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 2188
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2189
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower;->enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2190
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2191
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2192
    return-object v1
.end method

.method public translateTopLevelClass(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/TreeMaker;)Lcom/sun/tools/javac/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/tree/TreeMaker;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 3638
    :try_start_1
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    .line 3641
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3642
    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Ljava/util/Map;

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->endPositions:Ljava/util/Map;

    .line 3643
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 3644
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 3645
    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_99

    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-object v1, v0

    :goto_1c
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->outermostClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 3646
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->outermostMemberDef:Lcom/sun/tools/javac/tree/JCTree;

    .line 3647
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->translated:Lcom/sun/tools/javac/util/ListBuffer;

    .line 3648
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    .line 3649
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    .line 3650
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    .line 3651
    new-instance v1, Lcom/sun/tools/javac/code/Scope;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, v2}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    .line 3652
    new-instance v1, Lcom/sun/tools/javac/code/Scope;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, v2}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->twrVars:Lcom/sun/tools/javac/code/Scope;

    .line 3653
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 3654
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    .line 3655
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    .line 3656
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    .line 3657
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrTags:Lcom/sun/tools/javac/util/List;

    .line 3658
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->accessed:Lcom/sun/tools/javac/util/ListBuffer;

    .line 3659
    const/4 v1, 0x0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p2, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree;

    .line 3660
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->accessed:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v2, v1

    :goto_88
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 3661
    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->makeAccessible(Lcom/sun/tools/javac/code/Symbol;)V

    .line 3660
    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v1

    goto :goto_88

    :cond_99
    move-object v1, v3

    .line 3645
    goto :goto_1c

    .line 3662
    :cond_9b
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/comp/Lower$EnumMapping;

    .line 3663
    invoke-virtual {v1}, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->translate()V
    :try_end_b4
    .catchall {:try_start_1 .. :try_end_b4} :catchall_b5

    goto :goto_a5

    .line 3669
    :catchall_b5
    move-exception v1

    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    .line 3670
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3671
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->endPositions:Ljava/util/Map;

    .line 3672
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 3673
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 3674
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->outermostClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 3675
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->outermostMemberDef:Lcom/sun/tools/javac/tree/JCTree;

    .line 3676
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->translated:Lcom/sun/tools/javac/util/ListBuffer;

    .line 3677
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    .line 3678
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    .line 3679
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    .line 3680
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    .line 3681
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 3682
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    .line 3683
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    .line 3684
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    .line 3685
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrTags:Lcom/sun/tools/javac/util/List;

    .line 3686
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessed:Lcom/sun/tools/javac/util/ListBuffer;

    .line 3687
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 3688
    throw v1

    .line 3664
    :cond_e0
    :try_start_e0
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->translated:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->checkConflicts(Lcom/sun/tools/javac/util/List;)V

    .line 3665
    invoke-direct {p0}, Lcom/sun/tools/javac/comp/Lower;->checkAccessConstructorTags()V

    .line 3666
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->translated:Lcom/sun/tools/javac/util/ListBuffer;
    :try_end_ee
    .catchall {:try_start_e0 .. :try_end_ee} :catchall_b5

    .line 3669
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    .line 3670
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3671
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->endPositions:Ljava/util/Map;

    .line 3672
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 3673
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 3674
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->outermostClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 3675
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->outermostMemberDef:Lcom/sun/tools/javac/tree/JCTree;

    .line 3676
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->translated:Lcom/sun/tools/javac/util/ListBuffer;

    .line 3677
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    .line 3678
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    .line 3679
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    .line 3680
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    .line 3681
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 3682
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    .line 3683
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    .line 3684
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    .line 3685
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessConstrTags:Lcom/sun/tools/javac/util/List;

    .line 3686
    iput-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->accessed:Lcom/sun/tools/javac/util/ListBuffer;

    .line 3687
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 3688
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    return-object v1
.end method

.method unbox(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 7

    .line 2933
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2934
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5b

    .line 2935
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2938
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2939
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object p1

    .line 2945
    :goto_29
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2946
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->Value:Lcom/sun/tools/javac/util/Name;

    .line 2947
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Name;->append(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 2949
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2946
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 2950
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0

    .line 2937
    :cond_55
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2942
    :cond_5b
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_65

    move-object p2, v0

    goto :goto_29

    .line 2943
    :cond_65
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public visitAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
    .registers 2

    .line 3615
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3616
    return-void
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 12

    .line 2775
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 2776
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2777
    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Lower;->allowEnums:Z

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v3, :cond_24

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, v3, :cond_24

    .line 2780
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 2781
    :cond_24
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->boxArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 2782
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lcom/sun/tools/javac/code/Type;

    .line 2783
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    .line 2784
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_135

    .line 2787
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->accessConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 2788
    if-eq v4, v1, :cond_5a

    .line 2789
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 2790
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, v4}, Lcom/sun/tools/javac/tree/TreeInfo;->setSymbol(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2795
    :cond_5a
    iget-object v0, v4, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2796
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_7a

    .line 2797
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->freevars(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/sun/tools/javac/comp/Lower;->loadFreevars(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 2802
    :cond_7a
    iget-wide v6, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/16 v8, 0x4000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_8f

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_lang_Enum:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_cc

    .line 2803
    :cond_8f
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 2804
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 2805
    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v1

    .line 2806
    :goto_a0
    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 2807
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v6

    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v6, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 2808
    invoke-virtual {v6, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 2817
    :cond_cc
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->hasOuterInstance()Z

    move-result v1

    if-eqz v1, :cond_105

    .line 2819
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_108

    .line 2820
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2821
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Attr;->makeNullCheck(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 2822
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2823
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iput-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    move-object v0, v1

    .line 2831
    :goto_fd
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 2847
    :cond_105
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2848
    :goto_107
    return-void

    .line 2824
    :cond_108
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v1, v1, 0x14

    if-nez v1, :cond_116

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-ne v3, v1, :cond_129

    .line 2826
    :cond_116
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->makeThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_fd

    .line 2829
    :cond_129
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/tools/javac/comp/Lower;->makeOwnerThisN(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_fd

    .line 2835
    :cond_135
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2840
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_105

    .line 2841
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 2842
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 2843
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_107

    :cond_15a
    move-object v2, v1

    goto/16 :goto_a0
.end method

.method public visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V
    .registers 7

    .line 2752
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_63

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    move-object v1, v0

    .line 2753
    :goto_9
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2754
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v0

    if-nez v0, :cond_76

    .line 2755
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->assertFlagTest(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 2756
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_6b

    .line 2757
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2758
    :goto_31
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->isFalse()Z

    move-result v3

    if-nez v3, :cond_49

    .line 2759
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2762
    const/16 v4, 0x32

    invoke-virtual {p0, v4, v3}, Lcom/sun/tools/javac/comp/Lower;->makeUnary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v3

    .line 2760
    const/16 v4, 0x3a

    invoke-virtual {p0, v4, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->makeBinary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v2

    .line 2764
    :cond_49
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2766
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->assertionErrorType:Lcom/sun/tools/javac/code/Type;

    .line 2767
    invoke-virtual {p0, v4, v0}, Lcom/sun/tools/javac/comp/Lower;->makeNewClass(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Throw(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCThrow;

    move-result-object v0

    .line 2765
    const/4 v1, 0x0

    invoke-virtual {v3, v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->If(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCIf;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2772
    :goto_62
    return-void

    .line 2752
    :cond_63
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    .line 2757
    :cond_6b
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_31

    .line 2770
    :cond_76
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Skip()Lcom/sun/tools/javac/tree/JCTree$JCSkip;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_62
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 5

    .line 2968
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2969
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2974
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_37

    .line 2975
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 2976
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 2977
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2981
    :goto_36
    return-void

    .line 2979
    :cond_37
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_36
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 5

    .line 2984
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2985
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2989
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    new-instance v1, Lcom/sun/tools/javac/comp/Lower$5;

    invoke-direct {v1, p0, p1}, Lcom/sun/tools/javac/comp/Lower$5;-><init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->abstractLval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 3012
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3033
    :goto_29
    return-void

    .line 3015
    :cond_2a
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3016
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3021
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_7c

    .line 3022
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 3025
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_79

    .line 3026
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->makeString(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 3028
    :goto_6a
    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 3029
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_29

    .line 3027
    :cond_79
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_6a

    .line 3031
    :cond_7c
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_29
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 6

    .line 3106
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 3107
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3108
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_57

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_35

    .line 3130
    :cond_22
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3131
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3132
    :goto_34
    return-void

    .line 3120
    :cond_35
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isFalse()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 3121
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_34

    .line 3124
    :cond_40
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3125
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_34

    .line 3110
    :cond_57
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 3111
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_34

    .line 3114
    :cond_62
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isFalse()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3115
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_34
.end method

.method public visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 9

    .line 3311
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3312
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-nez v1, :cond_1a

    .line 3314
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/32 v2, 0x100000

    iget-wide v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3319
    :cond_1a
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeTranslator;->visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V

    .line 3320
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3321
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 16

    const-wide/16 v4, 0x4000

    const/4 v0, 0x0

    const-wide/16 v12, 0x0

    .line 2246
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2247
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2248
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2249
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2250
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Scope;->dup(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    .line 2253
    iget-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 2256
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v2, v4

    cmp-long v1, v2, v12

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 2257
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v4

    cmp-long v1, v2, v12

    if-nez v1, :cond_41

    .line 2258
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->visitEnumDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 2263
    :cond_41
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->hasOuterInstance()Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 2264
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->outerThisDef(ILcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    move-object v1, v0

    .line 2267
    :goto_52
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2268
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/comp/Lower;->freevars(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2267
    invoke-virtual {p0, v0, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->freevarDefs(ILcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2271
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2272
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    .line 2274
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 2275
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 2276
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lcom/sun/tools/javac/util/List;

    if-nez v2, :cond_8c

    .line 2277
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lcom/sun/tools/javac/util/List;

    .line 2279
    :cond_8c
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lcom/sun/tools/javac/util/List;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lcom/sun/tools/javac/util/List;

    .line 2285
    :cond_96
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    move-object v4, v3

    .line 2286
    :goto_9b
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    if-eq v0, v4, :cond_c6

    .line 2287
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v2, v3

    .line 2288
    :goto_a2
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_c4

    if-eq v2, v4, :cond_c4

    .line 2289
    iget-object v9, p0, Lcom/sun/tools/javac/comp/Lower;->outermostMemberDef:Lcom/sun/tools/javac/tree/JCTree;

    .line 2290
    if-nez v9, :cond_b4

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->outermostMemberDef:Lcom/sun/tools/javac/tree/JCTree;

    .line 2291
    :cond_b4
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 2292
    iput-object v9, p0, Lcom/sun/tools/javac/comp/Lower;->outermostMemberDef:Lcom/sun/tools/javac/tree/JCTree;

    .line 2288
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_a2

    :cond_c4
    move-object v4, v3

    .line 2295
    goto :goto_9b

    .line 2298
    :cond_c6
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v10, 0x4

    and-long/2addr v2, v10

    cmp-long v0, v2, v12

    if-eqz v0, :cond_da

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v10, 0x1

    or-long/2addr v2, v10

    iput-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 2299
    :cond_da
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v10, 0x7e11

    and-long/2addr v2, v10

    iput-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 2302
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Convert;->shortName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    move-object v2, v5

    .line 2305
    :goto_f0
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 2306
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    iget-object v3, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 2307
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 2305
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_f0

    .line 2309
    :cond_117
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->hasOuterInstance()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 2310
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 2311
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->enterSynthetic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 2314
    :cond_136
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    .line 2315
    iput-object v8, p0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    .line 2318
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->translated:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2320
    iput-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2321
    iput-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2324
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v12, v13, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2325
    return-void

    :cond_15c
    move-object v1, v0

    goto/16 :goto_52
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 4

    .line 2707
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2708
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2709
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->convert(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2718
    :goto_26
    return-void

    .line 2710
    :cond_27
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isFalse()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2711
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->convert(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_26

    .line 2714
    :cond_40
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2715
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2716
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_26
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 4

    .line 3324
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 3325
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3326
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3327
    return-void
.end method

.method public visitEnumSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 9

    .line 3372
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 3373
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->mapForEnum(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Lower$EnumMapping;

    move-result-object v2

    .line 3374
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3375
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->ordinal:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 3378
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 3375
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/sun/tools/javac/comp/Lower;->lookupMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 3379
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, v2, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->mapVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3380
    invoke-virtual {v4, v5, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 3379
    invoke-virtual {v1, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Indexed(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v3

    .line 3382
    new-instance v4, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 3383
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    .line 3384
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_70

    .line 3385
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 3386
    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->forConstant(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v1

    .line 3387
    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v6, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Case(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCase;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_48

    .line 3389
    :cond_70
    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_48

    .line 3392
    :cond_74
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Switch(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCSwitch;

    move-result-object v0

    .line 3393
    invoke-direct {p0, v0, p1, v0}, Lcom/sun/tools/javac/comp/Lower;->patchTargets(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3394
    return-object v0
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 4

    .line 3336
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    .line 3337
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1a

    .line 3338
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3339
    :cond_1a
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    .line 3340
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 3341
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3342
    return-void
.end method

.method public visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 4

    .line 3140
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3141
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->visitIterableForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V

    .line 3144
    :goto_f
    return-void

    .line 3143
    :cond_10
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->visitArrayForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V

    goto :goto_f
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 5

    .line 3135
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3136
    return-void
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 4

    .line 2732
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2733
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2734
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2747
    :goto_1e
    return-void

    .line 2735
    :cond_1f
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isFalse()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2736
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    if-eqz v0, :cond_34

    .line 2737
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_1e

    .line 2739
    :cond_34
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Skip()Lcom/sun/tools/javac/tree/JCTree$JCSkip;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_1e

    .line 2743
    :cond_3d
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 2744
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 2745
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_1e
.end method

.method public visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V
    .registers 4

    .line 2962
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2963
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2964
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2965
    return-void
.end method

.method public visitLetExpr(Lcom/sun/tools/javac/tree/JCTree$LetExpr;)V
    .registers 4

    .line 3607
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translateVarDefs(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->defs:Lcom/sun/tools/javac/util/List;

    .line 3608
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->expr:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->expr:Lcom/sun/tools/javac/tree/JCTree;

    .line 3609
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3610
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 10

    const-wide/16 v6, 0x1000

    .line 2490
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_170

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_170

    .line 2493
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 2494
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "enum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 2495
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2494
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Param(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 2497
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    or-long/2addr v2, v6

    iput-wide v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    or-long/2addr v2, v6

    iput-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    .line 2499
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 2500
    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "enum"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 2501
    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "ordinal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2500
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Param(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    .line 2504
    iget-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    or-long/2addr v4, v6

    iput-wide v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    iget-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-wide v4, v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    or-long/2addr v4, v6

    iput-wide v4, v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    .line 2506
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 2508
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2509
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 2510
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 2512
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 2513
    new-instance v6, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v6, v4, v5, v3, v7}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v6, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    .line 2516
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/jvm/Target;->compilerBootstrap(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 2518
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    const-string v3, "$name"

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 2519
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v3

    .line 2518
    invoke-direct {p0, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->lookupSynthetic(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 2520
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 2521
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    .line 2522
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    .line 2523
    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->type:Lcom/sun/tools/javac/code/Type;

    .line 2524
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    .line 2525
    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->type:Lcom/sun/tools/javac/code/Type;

    .line 2526
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    .line 2529
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    const-string v2, "$ordinal"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 2530
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    .line 2529
    invoke-direct {p0, v0, v2}, Lcom/sun/tools/javac/comp/Lower;->lookupSynthetic(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 2531
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    .line 2532
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 2533
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v1

    .line 2534
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->type:Lcom/sun/tools/javac/code/Type;

    .line 2535
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v1

    .line 2536
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->type:Lcom/sun/tools/javac/code/Type;

    .line 2537
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    .line 2541
    :cond_170
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 2542
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2544
    :try_start_174
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 2545
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2546
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->visitMethodDefInternal(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    :try_end_17d
    .catchall {:try_start_174 .. :try_end_17d} :catchall_182

    .line 2548
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 2549
    iput-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2550
    return-void

    .line 2548
    :catchall_182
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 2549
    iput-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2550
    throw v0
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 5

    .line 3584
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3585
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_d
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_27

    .line 3586
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 3585
    :cond_23
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_d

    .line 3587
    :cond_27
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    .line 3588
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3589
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 2642
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2645
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x4000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_c6

    const/4 v1, 0x1

    .line 2646
    :goto_1a
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2647
    if-eqz v1, :cond_f6

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2648
    :goto_34
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v3, v4}, Lcom/sun/tools/javac/comp/Lower;->boxArgs(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    .line 2649
    iput-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lcom/sun/tools/javac/code/Type;

    .line 2653
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_5c

    .line 2654
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->freevars(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sun/tools/javac/comp/Lower;->loadFreevars(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    .line 2658
    :cond_5c
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v1, v3}, Lcom/sun/tools/javac/comp/Lower;->accessConstructor(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 2659
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    if-eq v1, v3, :cond_78

    .line 2660
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Lower;->makeNull()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    .line 2661
    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    .line 2667
    :cond_78
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->hasOuterInstance()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 2669
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_c9

    .line 2670
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/comp/Attr;->makeNullCheck(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 2671
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 2679
    :goto_96
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    .line 2681
    :cond_9e
    iput-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2685
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v1, :cond_eb

    .line 2686
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    .line 2687
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->make_at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2688
    iput-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 2692
    :goto_c3
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2693
    return-void

    :cond_c6
    move v1, v2

    .line 2645
    goto/16 :goto_1a

    .line 2672
    :cond_c9
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_e2

    .line 2674
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v1, v3}, Lcom/sun/tools/javac/comp/Lower;->makeThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    goto :goto_96

    .line 2677
    :cond_e2
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/tools/javac/comp/Lower;->makeOwnerThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    goto :goto_96

    .line 2690
    :cond_eb
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_c3

    :cond_f6
    move-object v1, v3

    goto/16 :goto_34
.end method

.method public visitParens(Lcom/sun/tools/javac/tree/JCTree$JCParens;)V
    .registers 4

    .line 2957
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 2958
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-ne v0, v1, :cond_d

    :goto_a
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2959
    return-void

    :cond_d
    move-object p1, v0

    .line 2958
    goto :goto_a
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 5

    .line 3345
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1a

    .line 3346
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodDef:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 3347
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 3346
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3349
    :cond_1a
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3350
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 5

    .line 3594
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3595
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_33

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3596
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_33

    const/4 v0, 0x1

    move v1, v0

    .line 3597
    :goto_18
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3598
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_36

    .line 3599
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->classOf(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3604
    :goto_32
    return-void

    .line 3596
    :cond_33
    const/4 v0, 0x0

    move v1, v0

    goto :goto_18

    .line 3600
    :cond_36
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v2, :cond_46

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_57

    .line 3601
    :cond_46
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->makeThis(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_32

    .line 3603
    :cond_57
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->enclOp:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/sun/tools/javac/comp/Lower;->access(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_32
.end method

.method public visitStringSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 20

    .line 3398
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->getCases()Lcom/sun/tools/javac/util/List;

    move-result-object v11

    .line 3399
    invoke-virtual {v11}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    .line 3401
    if-nez v2, :cond_27

    .line 3402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Lower;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/comp/Attr;->makeNullCheck(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v2

    .line 3579
    :goto_26
    return-object v2

    .line 3445
    :cond_27
    new-instance v12, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v12}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 3449
    new-instance v13, Ljava/util/LinkedHashMap;

    add-int/lit8 v3, v2, 0x1

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v13, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 3453
    new-instance v14, Ljava/util/LinkedHashMap;

    add-int/lit8 v2, v2, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v14, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 3456
    const/4 v2, 0x0

    .line 3457
    invoke-virtual {v11}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    .line 3458
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 3460
    if-eqz v2, :cond_91

    .line 3461
    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 3462
    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3463
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3464
    invoke-static {v3}, Lcom/sun/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    .line 3465
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 3467
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 3468
    if-nez v3, :cond_95

    .line 3469
    new-instance v3, Ljava/util/LinkedHashSet;

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v3, v7, v8}, Ljava/util/LinkedHashSet;-><init>(IF)V

    .line 3470
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3471
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3460
    :cond_91
    :goto_91
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    .line 3478
    goto :goto_44

    .line 3473
    :cond_95
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3474
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    goto :goto_91

    .line 3502
    :cond_9d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->pos:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 3503
    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v4, 0x1010

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v2, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct/range {v3 .. v8}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    iget-object v4, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 3508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 3509
    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v6, 0x1000

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v9, v2, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct/range {v5 .. v10}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 3512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3513
    const/4 v4, 0x4

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    iget-object v4, v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 3514
    iget-object v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iput-object v6, v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v6, v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 3515
    invoke-virtual {v12, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 3516
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v7

    .line 3518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->hashCode:Lcom/sun/tools/javac/util/Name;

    .line 3520
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 3518
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/sun/tools/javac/comp/Lower;->makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    .line 3520
    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    .line 3521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3522
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 3521
    invoke-virtual {v4, v2, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Switch(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCSwitch;

    move-result-object v8

    .line 3523
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_18f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_24f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3524
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3525
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 3526
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v14, 0x1

    if-lt v4, v14, :cond_2d6

    const/4 v4, 0x1

    :goto_1b4
    invoke-static {v4}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 3528
    const/4 v4, 0x0

    .line 3529
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1bc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_220

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v14, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v15, v15, Lcom/sun/tools/javac/util/Names;->equals:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v16, v0

    .line 3532
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v16

    .line 3530
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/sun/tools/javac/comp/Lower;->makeCall(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v14

    .line 3533
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3534
    invoke-virtual {v15, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v17, v0

    .line 3535
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v2

    .line 3534
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v2

    iget-object v0, v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v16, v0

    .line 3536
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 3534
    invoke-virtual {v15, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v2

    .line 3533
    invoke-virtual {v15, v14, v2, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->If(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCIf;

    move-result-object v2

    move-object v4, v2

    .line 3538
    goto :goto_1bc

    .line 3540
    :cond_220
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v2

    .line 3541
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/sun/tools/javac/tree/TreeMaker;->Break(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCBreak;

    move-result-object v6

    .line 3542
    iput-object v8, v6, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->target:Lcom/sun/tools/javac/tree/JCTree;

    .line 3543
    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 3545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Case(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCase;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto/16 :goto_18f

    .line 3548
    :cond_24f
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v8, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    .line 3549
    invoke-virtual {v12, v8}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 3555
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v4

    .line 3556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Switch(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCSwitch;

    move-result-object v5

    .line 3557
    invoke-virtual {v11}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_270
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2bd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    .line 3560
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v5}, Lcom/sun/tools/javac/comp/Lower;->patchTargets(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3562
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    if-nez v2, :cond_29e

    const/4 v2, 0x1

    .line 3564
    :goto_28b
    if-eqz v2, :cond_2a0

    .line 3565
    const/4 v2, 0x0

    .line 3572
    :goto_28e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3573
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->getStatements()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 3572
    invoke-virtual {v7, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Case(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCase;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_270

    .line 3562
    :cond_29e
    const/4 v2, 0x0

    goto :goto_28b

    .line 3567
    :cond_2a0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3568
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 3567
    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 3569
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3567
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v2

    goto :goto_28e

    .line 3576
    :cond_2bd
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v5, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    .line 3577
    invoke-virtual {v12, v5}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 3579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v4, 0x0

    invoke-virtual {v12}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    goto/16 :goto_26

    :cond_2d6
    move v4, v6

    goto/16 :goto_1b4
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3353
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 3354
    if-eqz v3, :cond_56

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 3355
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x4000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_56

    move v2, v0

    .line 3356
    :goto_22
    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 3357
    invoke-virtual {v3, v4, v5}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v3

    if-eqz v3, :cond_35

    move v1, v0

    .line 3358
    :cond_35
    if-eqz v2, :cond_58

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 3360
    :goto_3b
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3361
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translateCases(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    .line 3362
    if-eqz v2, :cond_62

    .line 3363
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->visitEnumSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3369
    :goto_55
    return-void

    :cond_56
    move v2, v1

    .line 3355
    goto :goto_22

    .line 3359
    :cond_58
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    if-eqz v1, :cond_5f

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    goto :goto_3b

    :cond_5f
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_3b

    .line 3364
    :cond_62
    if-eqz v1, :cond_6b

    .line 3365
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->visitStringSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_55

    .line 3367
    :cond_6b
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_55
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 12

    const-wide/16 v0, 0x600

    .line 2205
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->needPackageInfoClass(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2206
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->package_info:Lcom/sun/tools/javac/util/Name;

    .line 2207
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->isPackageInfoSynthetic()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2210
    const-wide/16 v4, 0x1000

    or-long/2addr v0, v4

    move-wide v8, v0

    .line 2211
    :goto_18
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    .line 2212
    invoke-virtual {v0, v8, v9, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    .line 2214
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2215
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 2212
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v1

    .line 2216
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2217
    iget-wide v4, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    or-long/2addr v4, v8

    iput-wide v4, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 2218
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    iput-object v0, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    .line 2219
    iget-object v0, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 2220
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iput-object v3, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 2221
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 2222
    iput-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2224
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->translated:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2226
    :cond_57
    return-void

    :cond_58
    move-wide v8, v0

    .line 2208
    goto :goto_18
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 3

    .line 3620
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3621
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeTranslator;->visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V

    .line 3625
    :goto_b
    return-void

    .line 3623
    :cond_c
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->makeTwrTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_b
.end method

.method public visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V
    .registers 4

    .line 2633
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    .line 2634
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eq v0, v1, :cond_27

    .line 2635
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2638
    :goto_24
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 2639
    return-void

    .line 2637
    :cond_27
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_24
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 6

    const/16 v3, 0x34

    const/4 v2, 0x1

    .line 3062
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    if-gt v3, v0, :cond_2b

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    const/16 v1, 0x37

    if-gt v0, v1, :cond_2b

    move v1, v2

    .line 3064
    :goto_12
    if-eqz v1, :cond_5f

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 3065
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 3086
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3062
    :cond_2b
    const/4 v0, 0x0

    move v1, v0

    goto :goto_12

    .line 3082
    :pswitch_2e  #0x36, 0x37
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Lower;->lowerBoxedPostop(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3103
    :goto_3a
    return-void

    .line 3071
    :pswitch_3b  #0x34, 0x35
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    if-ne v0, v3, :cond_5c

    .line 3072
    const/16 v0, 0x58

    .line 3073
    :goto_43
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 3075
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v2

    .line 3073
    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->makeAssignop(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object v0

    .line 3076
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_3a

    .line 3072
    :cond_5c
    const/16 v0, 0x59

    goto :goto_43

    .line 3089
    :cond_5f
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/comp/Lower;->boxIfNeeded(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3091
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    const/16 v2, 0x32

    if-ne v0, v2, :cond_8f

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 3092
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    const/16 v2, 0x101

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/ConstFold;->fold1(ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->type:Lcom/sun/tools/javac/code/Type;

    .line 3098
    :cond_8f
    if-eqz v1, :cond_a0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_a0

    .line 3099
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_3a

    .line 3101
    :cond_a0
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_3a

    .line 3065
    nop

    :pswitch_data_a4
    .packed-switch 0x34
        :pswitch_3b  #00000034
        :pswitch_3b  #00000035
        :pswitch_2e  #00000036
        :pswitch_2e  #00000037
    .end packed-switch
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 12

    .line 3295
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3296
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    .line 3297
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3298
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-nez v0, :cond_33

    .line 3300
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/32 v2, 0x100000

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v8, 0x8

    and-long/2addr v4, v8

    or-long/2addr v2, v4

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower;->currentClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3305
    :cond_33
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3306
    :cond_43
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3307
    iput-object v7, p0, Lcom/sun/tools/javac/comp/Lower;->currentMethodSym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3308
    return-void
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 4

    .line 3330
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3331
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Lower;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 3332
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 3333
    return-void
.end method
