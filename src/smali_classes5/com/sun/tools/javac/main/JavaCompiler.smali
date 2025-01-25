.class public Lcom/sun/tools/javac/main/JavaCompiler;
.super Ljava/lang/Object;
.source "JavaCompiler.java"

# interfaces
.implements Lcom/sun/tools/javac/jvm/ClassReader$SourceCompleter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;,
        Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;,
        Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;,
        Lcom/sun/tools/javac/main/JavaCompiler$CompileState;,
        Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;,
        Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;
    }
.end annotation


# static fields
.field private static DEFAULT_COMPILE_POLICY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy; = null

.field protected static final compilerKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/main/JavaCompiler;",
            ">;"
        }
    .end annotation
.end field

.field private static versionRB:Ljava/util/ResourceBundle; = null

.field private static final versionRBName:Ljava/lang/String; = "com.sun.tools.javac.resources.version"


# instance fields
.field protected annotate:Lcom/sun/tools/javac/comp/Annotate;

.field protected annotationProcessingOccurred:Z

.field protected attr:Lcom/sun/tools/javac/comp/Attr;

.field public attrParseOnly:Z

.field protected chk:Lcom/sun/tools/javac/comp/Check;

.field protected compilePolicy:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

.field private compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

.field protected final completionFailureName:Lcom/sun/tools/javac/util/Name;

.field protected context:Lcom/sun/tools/javac/util/Context;

.field protected delegateCompiler:Lcom/sun/tools/javac/main/JavaCompiler;

.field desugaredEnvs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected devVerbose:Z

.field diagFactory:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field public elapsed_msec:J

.field public encoding:Ljava/lang/String;

.field protected enter:Lcom/sun/tools/javac/comp/Enter;

.field protected explicitAnnotationProcessingRequested:Z

.field protected fileManager:Ljavax/tools/JavaFileManager;

.field protected flow:Lcom/sun/tools/javac/comp/Flow;

.field protected gen:Lcom/sun/tools/javac/jvm/Gen;

.field public genEndPos:Z

.field private hasBeenUsed:Z

.field protected implicitSourceFilesRead:Z

.field protected implicitSourcePolicy:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

.field protected inputFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field public keepComments:Z

.field public lineDebugInfo:Z

.field public log:Lcom/sun/tools/javac/util/Log;

.field protected lower:Lcom/sun/tools/javac/comp/Lower;

.field protected make:Lcom/sun/tools/javac/tree/TreeMaker;

.field protected names:Lcom/sun/tools/javac/util/Names;

.field protected options:Lcom/sun/tools/javac/util/Options;

.field protected parserFactory:Lcom/sun/tools/javac/parser/ParserFactory;

.field public printFlat:Z

.field private procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

.field processAnnotations:Z

.field protected processPcks:Z

.field protected reader:Lcom/sun/tools/javac/jvm/ClassReader;

.field relax:Z

.field private rootClasses:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ">;"
        }
    .end annotation
.end field

.field public shouldStopPolicy:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

.field protected source:Lcom/sun/tools/javac/code/Source;

.field public sourceOutput:Z

.field private start_msec:J

.field public stubOutput:Z

.field protected syms:Lcom/sun/tools/javac/code/Symtab;

.field protected taskListener:Lcom/sun/source/util/TaskListener;

.field public todo:Lcom/sun/tools/javac/comp/Todo;

.field protected transTypes:Lcom/sun/tools/javac/comp/TransTypes;

.field protected types:Lcom/sun/tools/javac/code/Types;

.field public verbose:Z

.field public verboseCompilePolicy:Z

.field protected werror:Z

.field protected writer:Lcom/sun/tools/javac/jvm/ClassWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 137
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler;->compilerKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 248
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->BY_TODO:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler;->DEFAULT_COMPILE_POLICY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 10

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested:Z

    .line 631
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;-><init>(Lcom/sun/tools/javac/main/JavaCompiler;)V

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    .line 638
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    .line 731
    iput-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->keepComments:Z

    .line 921
    iput-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->hasBeenUsed:Z

    .line 922
    iput-wide v4, p0, Lcom/sun/tools/javac/main/JavaCompiler;->start_msec:J

    .line 923
    iput-wide v4, p0, Lcom/sun/tools/javac/main/JavaCompiler;->elapsed_msec:J

    .line 1106
    iput-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->processAnnotations:Z

    .line 1111
    iput-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    .line 1415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->desugaredEnvs:Ljava/util/HashMap;

    .line 408
    iput-object p1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->context:Lcom/sun/tools/javac/util/Context;

    .line 409
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler;->compilerKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 412
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 413
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->preRegister(Lcom/sun/tools/javac/util/Context;)V

    .line 415
    :cond_3d
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    .line 416
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    .line 417
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->diagFactory:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 418
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassReader;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 419
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 420
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->writer:Lcom/sun/tools/javac/jvm/ClassWriter;

    .line 421
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Enter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->enter:Lcom/sun/tools/javac/comp/Enter;

    .line 422
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Todo;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Todo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    .line 424
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->fileManager:Ljavax/tools/JavaFileManager;

    .line 425
    invoke-static {p1}, Lcom/sun/tools/javac/parser/ParserFactory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/ParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->parserFactory:Lcom/sun/tools/javac/parser/ParserFactory;

    .line 429
    :try_start_7d
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->syms:Lcom/sun/tools/javac/code/Symtab;
    :try_end_83
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_7d .. :try_end_83} :catch_20b

    .line 436
    :cond_83
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->source:Lcom/sun/tools/javac/code/Source;

    .line 437
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Attr;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->attr:Lcom/sun/tools/javac/comp/Attr;

    .line 438
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 439
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Gen;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Gen;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->gen:Lcom/sun/tools/javac/jvm/Gen;

    .line 440
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Flow;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->flow:Lcom/sun/tools/javac/comp/Flow;

    .line 441
    invoke-static {p1}, Lcom/sun/tools/javac/comp/TransTypes;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/TransTypes;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->transTypes:Lcom/sun/tools/javac/comp/TransTypes;

    .line 442
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Lower;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Lower;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->lower:Lcom/sun/tools/javac/comp/Lower;

    .line 443
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Annotate;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    .line 444
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->types:Lcom/sun/tools/javac/code/Types;

    .line 445
    const-class v0, Lcom/sun/source/util/TaskListener;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/util/TaskListener;

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    .line 447
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iput-object p0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->sourceCompleter:Lcom/sun/tools/javac/jvm/ClassReader$SourceCompleter;

    .line 449
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    .line 451
    sget-object v4, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verbose:Z

    .line 452
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v4, Lcom/sun/tools/javac/main/OptionName;->PRINTSOURCE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->sourceOutput:Z

    .line 453
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v4, "-stubs"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->stubOutput:Z

    .line 454
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v4, "-relax"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->relax:Z

    .line 455
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v4, "-printflat"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->printFlat:Z

    .line 456
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v4, "-attrparseonly"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->attrParseOnly:Z

    .line 457
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v4, Lcom/sun/tools/javac/main/OptionName;->ENCODING:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->encoding:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v4, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isUnset(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_127

    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v4, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    .line 459
    const-string v5, "lines"

    invoke-virtual {v0, v4, v5}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22a

    :cond_127
    move v0, v2

    :goto_128
    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->lineDebugInfo:Z

    .line 460
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v4, Lcom/sun/tools/javac/main/OptionName;->XJCOV:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_13c

    .line 461
    const-class v0, Ljavax/tools/DiagnosticListener;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22d

    :cond_13c
    move v0, v2

    :goto_13d
    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->genEndPos:Z

    .line 462
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v4, "dev"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->devVerbose:Z

    .line 463
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v4, "process.packages"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->processPcks:Z

    .line 464
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v4, Lcom/sun/tools/javac/main/OptionName;->WERROR:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->werror:Z

    .line 466
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->source:Lcom/sun/tools/javac/code/Source;

    sget-object v4, Lcom/sun/tools/javac/code/Source;->DEFAULT:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_1a5

    .line 467
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v4, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sun/tools/javac/code/Lint$LintCategory;->OPTIONS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sun/tools/javac/util/Options;->isUnset(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 468
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->fileManager:Ljavax/tools/JavaFileManager;

    instance-of v4, v0, Lcom/sun/tools/javac/util/BaseFileManager;

    if-eqz v4, :cond_1a5

    .line 469
    check-cast v0, Lcom/sun/tools/javac/util/BaseFileManager;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/BaseFileManager;->isDefaultBootClassPath()Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 470
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v4, Lcom/sun/tools/javac/code/Lint$LintCategory;->OPTIONS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    const-string v5, "source.no.bootclasspath"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sun/tools/javac/main/JavaCompiler;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v6, v2, v1

    invoke-virtual {v0, v4, v5, v2}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    :cond_1a5
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "verboseCompilePolicy"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    .line 477
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->attrParseOnly:Z

    if-eqz v0, :cond_230

    .line 478
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->ATTR_ONLY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compilePolicy:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    .line 482
    :goto_1b7
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "-implicit"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->decode(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->implicitSourcePolicy:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    .line 484
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "failcomplete"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_240

    .line 486
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v2, "failcomplete"

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 487
    :goto_1dd
    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->completionFailureName:Lcom/sun/tools/javac/util/Name;

    .line 489
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "shouldStopPolicy"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 491
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "shouldStopPolicy"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    move-result-object v3

    .line 492
    :cond_1f5
    iput-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStopPolicy:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 493
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "oldDiags"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isUnset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 494
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-static {p1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->setDiagnosticFormatter(Lcom/sun/tools/javac/api/DiagnosticFormatter;)V

    .line 495
    :cond_20a
    return-void

    .line 430
    :catch_20b
    move-exception v0

    .line 432
    iget-object v4, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v5, "cant.access"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->sym:Lcom/sun/tools/javac/code/Symbol;

    aput-object v7, v6, v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    instance-of v0, v0, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    if-eqz v0, :cond_83

    .line 434
    new-instance v0, Lcom/sun/tools/javac/util/Abort;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Abort;-><init>()V

    throw v0

    :cond_22a
    move v0, v1

    .line 459
    goto/16 :goto_128

    :cond_22d
    move v0, v1

    .line 461
    goto/16 :goto_13d

    .line 480
    :cond_230
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "compilePolicy"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->decode(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compilePolicy:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    goto/16 :goto_1b7

    :cond_240
    move-object v0, v3

    .line 487
    goto :goto_1dd
.end method

.method static synthetic access$000()Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;
    .registers 1

    .line 133
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler;->DEFAULT_COMPILE_POLICY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object v0
.end method

.method private compile2()V
    .registers 7

    const/4 v4, 0x1

    .line 983
    :try_start_1
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$1;->$SwitchMap$com$sun$tools$javac$main$JavaCompiler$CompilePolicy:[I

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compilePolicy:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    invoke-virtual {v1}, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_cb

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_ad

    const/4 v1, 0x4

    if-eq v0, v1, :cond_83

    const/4 v1, 0x5

    if-eq v0, v1, :cond_58

    .line 1010
    const-string v0, "unknown compileJava policy"

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V
    :try_end_1e
    .catch Lcom/sun/tools/javac/util/Abort; {:try_start_1 .. :try_end_1e} :catch_78

    .line 1017
    :cond_1e
    :goto_1e
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz v0, :cond_3a

    .line 1018
    iget-wide v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->start_msec:J

    invoke-static {v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->elapsed(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->elapsed_msec:J

    .line 1019
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "total"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    :cond_3a
    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->reportDeferredDiagnostics()V

    .line 1024
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Log;->hasDiagnosticListener()Z

    move-result v0

    if-nez v0, :cond_57

    .line 1025
    const-string v0, "error"

    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    .line 1026
    const-string v0, "warn"

    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->warningCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    .line 1028
    :cond_57
    return-void

    .line 1005
    :cond_58
    :goto_58
    :try_start_58
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Todo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1006
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Todo;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->attribute(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->flow(Lcom/sun/tools/javac/comp/Env;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;)V
    :try_end_77
    .catch Lcom/sun/tools/javac/util/Abort; {:try_start_58 .. :try_end_77} :catch_78

    goto :goto_58

    .line 1012
    :catch_78
    move-exception v0

    .line 1013
    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->devVerbose:Z

    if-eqz v1, :cond_1e

    .line 1014
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Abort;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1e

    .line 997
    :cond_83
    :try_start_83
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Todo;->groupByFile()Ljava/util/Queue;

    move-result-object v1

    .line 998
    :goto_89
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ATTR:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 999
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->flow(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;)V

    goto :goto_89

    .line 993
    :cond_ad
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->flow(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;)V

    goto/16 :goto_1e

    .line 989
    :cond_c0
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->flow(Ljava/util/Queue;)Ljava/util/Queue;

    goto/16 :goto_1e

    .line 985
    :cond_cb
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;
    :try_end_d0
    .catch Lcom/sun/tools/javac/util/Abort; {:try_start_83 .. :try_end_d0} :catch_78

    goto/16 :goto_1e
.end method

.method private static elapsed(J)J
    .registers 4

    .line 1755
    invoke-static {}, Lcom/sun/tools/javac/main/JavaCompiler;->now()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static enableLogging()V
    .registers 5

    .line 1766
    const-class v0, Lcom/sun/tools/javac/Main;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 1767
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 1768
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v2, :cond_29

    aget-object v3, v1, v0

    .line 1769
    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 1768
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1772
    :cond_29
    return-void
.end method

.method static explicitAnnotationProcessingRequested(Lcom/sun/tools/javac/util/Options;)Z
    .registers 3

    .line 1277
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->PROCESSOR:Lcom/sun/tools/javac/main/OptionName;

    .line 1278
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->PROCESSORPATH:Lcom/sun/tools/javac/main/OptionName;

    .line 1279
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->PROC:Lcom/sun/tools/javac/main/OptionName;

    .line 1280
    const-string v1, "only"

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XPRINT:Lcom/sun/tools/javac/main/OptionName;

    .line 1281
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    .line 1277
    :goto_23
    return v0

    .line 1281
    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static fullVersion()Ljava/lang/String;
    .registers 1

    .line 161
    const-string v0, "full"

    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;
    .registers 2

    .line 144
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler;->compilerKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/main/JavaCompiler;

    .line 145
    if-nez v0, :cond_f

    .line 146
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/main/JavaCompiler;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 147
    :cond_f
    return-object v0
.end method

.method private static now()J
    .registers 2

    .line 1751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private unrecoverableError()Z
    .registers 5

    .line 1263
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 1264
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getKind()Ljavax/tools/Diagnostic$Kind;

    move-result-object v2

    sget-object v3, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    if-ne v2, v3, :cond_8

    sget-object v2, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/JCDiagnostic;->isFlagSet(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1265
    const/4 v0, 0x1

    .line 1267
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static version()Ljava/lang/String;
    .registers 1

    .line 154
    const-string v0, "release"

    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static version(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    .line 168
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler;->versionRB:Ljava/util/ResourceBundle;

    if-nez v0, :cond_d

    .line 170
    :try_start_5
    const-string v0, "com.sun.tools.javac.resources.version"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler;->versionRB:Ljava/util/ResourceBundle;
    :try_end_d
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_d} :catch_14

    .line 176
    :cond_d
    :try_start_d
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler;->versionRB:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_12} :catch_1e

    move-result-object v0

    .line 178
    :goto_13
    return-object v0

    .line 171
    :catch_14
    move-exception v0

    .line 172
    const-string v0, "version.not.available"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 177
    :catch_1e
    move-exception v0

    .line 178
    const-string v0, "version.not.available"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method public attribute(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    sget-object v1, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ATTR:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->isDone(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1332
    :goto_a
    return-object p1

    .line 1308
    :cond_b
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    if-eqz v0, :cond_2c

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->printNote(Ljava/lang/String;)V

    .line 1310
    :cond_2c
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz v0, :cond_41

    .line 1311
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "checking.attribution"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1313
    :cond_41
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_57

    .line 1314
    new-instance v0, Lcom/sun/source/util/TaskEvent;

    sget-object v1, Lcom/sun/source/util/TaskEvent$Kind;->ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 1315
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v1, v0}, Lcom/sun/source/util/TaskListener;->started(Lcom/sun/source/util/TaskEvent;)V

    .line 1318
    :cond_57
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    .line 1319
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    if-eqz v0, :cond_91

    .line 1320
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 1318
    :goto_67
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 1323
    :try_start_6b
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Attr;->attrib(Lcom/sun/tools/javac/comp/Env;)V

    .line 1324
    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-lez v0, :cond_83

    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ATTR:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 1327
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Attr;->postAttr(Lcom/sun/tools/javac/comp/Env;)V

    .line 1329
    :cond_83
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ATTR:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v0, p1, v2}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_96

    .line 1331
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_a

    .line 1321
    :cond_91
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    goto :goto_67

    .line 1331
    :catchall_96
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1332
    throw v0
.end method

.method public attribute(Ljava/util/Queue;)Ljava/util/Queue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;)",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    .line 1293
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 1294
    :goto_4
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1295
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->attribute(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_4

    .line 1296
    :cond_18
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ATTR:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->stopIfError(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    .line 1695
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close(Z)V

    .line 1696
    return-void
.end method

.method public close(Z)V
    .registers 5

    const/4 v2, 0x0

    .line 1699
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->rootClasses:Lcom/sun/tools/javac/util/List;

    .line 1700
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 1701
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1702
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->writer:Lcom/sun/tools/javac/jvm/ClassWriter;

    .line 1703
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->enter:Lcom/sun/tools/javac/comp/Enter;

    .line 1704
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    if-eqz v0, :cond_12

    .line 1705
    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Todo;->clear()V

    .line 1706
    :cond_12
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    .line 1707
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->parserFactory:Lcom/sun/tools/javac/parser/ParserFactory;

    .line 1708
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 1709
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->source:Lcom/sun/tools/javac/code/Source;

    .line 1710
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->attr:Lcom/sun/tools/javac/comp/Attr;

    .line 1711
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 1712
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->gen:Lcom/sun/tools/javac/jvm/Gen;

    .line 1713
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->flow:Lcom/sun/tools/javac/comp/Flow;

    .line 1714
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->transTypes:Lcom/sun/tools/javac/comp/TransTypes;

    .line 1715
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->lower:Lcom/sun/tools/javac/comp/Lower;

    .line 1716
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    .line 1717
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->types:Lcom/sun/tools/javac/code/Types;

    .line 1719
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Log;->flush()V

    .line 1721
    :try_start_2f
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0}, Ljavax/tools/JavaFileManager;->flush()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_40
    .catchall {:try_start_2f .. :try_end_34} :catchall_47

    .line 1725
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3d

    .line 1726
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Names;->dispose()V

    .line 1727
    :cond_3d
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    .line 1728
    return-void

    .line 1722
    :catch_40
    move-exception v0

    .line 1723
    :try_start_41
    new-instance v1, Lcom/sun/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_47

    .line 1725
    :catchall_47
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    if-eqz v1, :cond_51

    if-eqz p1, :cond_51

    .line 1726
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Names;->dispose()V

    .line 1727
    :cond_51
    iput-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    .line 1728
    throw v0
.end method

.method public compile(Lcom/sun/tools/javac/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 927
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->compile(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)V

    .line 928
    return-void
.end method

.method public compile(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    .line 941
    if-eqz p3, :cond_f

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 942
    iput-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested:Z

    .line 945
    :cond_f
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->hasBeenUsed:Z

    if-nez v0, :cond_9b

    .line 947
    iput-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->hasBeenUsed:Z

    .line 951
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->OPTIONS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->OPTIONS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->remove(Ljava/lang/String;)V

    .line 954
    invoke-static {}, Lcom/sun/tools/javac/main/JavaCompiler;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->start_msec:J

    .line 957
    :try_start_56
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/main/JavaCompiler;->initProcessAnnotations(Ljava/lang/Iterable;)V

    .line 960
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->PARSE:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 962
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/main/JavaCompiler;->parseFiles(Ljava/lang/Iterable;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->stopIfError(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->enterTrees(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 961
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/main/JavaCompiler;->processAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->delegateCompiler:Lcom/sun/tools/javac/main/JavaCompiler;

    .line 965
    invoke-direct {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->compile2()V

    .line 966
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->delegateCompiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V

    .line 967
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->delegateCompiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-wide v0, v0, Lcom/sun/tools/javac/main/JavaCompiler;->elapsed_msec:J

    iput-wide v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->elapsed_msec:J
    :try_end_7b
    .catch Lcom/sun/tools/javac/util/Abort; {:try_start_56 .. :try_end_7b} :catch_83
    .catchall {:try_start_56 .. :try_end_7b} :catchall_92

    .line 972
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    if-eqz v0, :cond_82

    .line 973
    :goto_7f
    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->close()V

    .line 975
    :cond_82
    return-void

    .line 968
    :catch_83
    move-exception v0

    .line 969
    :try_start_84
    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->devVerbose:Z

    if-eqz v1, :cond_8d

    .line 970
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Abort;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_92

    .line 972
    :cond_8d
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    if-eqz v0, :cond_82

    goto :goto_7f

    :catchall_92
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    if-eqz v1, :cond_9a

    .line 973
    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->close()V

    .line 974
    :cond_9a
    throw v0

    .line 946
    :cond_9b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "attempt to reuse JavaCompiler"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public complete(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 868
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->completionFailureName:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_ca

    .line 872
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    .line 873
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v2

    .line 876
    const/4 v0, 0x0

    :try_start_11
    invoke-interface {v1, v0}, Ljavax/tools/JavaFileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->parse(Ljavax/tools/JavaFileObject;Ljava/lang/CharSequence;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_68
    .catchall {:try_start_11 .. :try_end_18} :catchall_c3

    move-result-object v0

    .line 881
    :goto_19
    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 884
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v2, :cond_2e

    .line 885
    new-instance v2, Lcom/sun/source/util/TaskEvent;

    sget-object v3, Lcom/sun/source/util/TaskEvent$Kind;->ENTER:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v2, v3, v0}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 886
    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v3, v2}, Lcom/sun/source/util/TaskListener;->started(Lcom/sun/source/util/TaskEvent;)V

    .line 889
    :cond_2e
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->enter:Lcom/sun/tools/javac/comp/Enter;

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/sun/tools/javac/comp/Enter;->complete(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 891
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v2, :cond_47

    .line 892
    new-instance v2, Lcom/sun/source/util/TaskEvent;

    sget-object v3, Lcom/sun/source/util/TaskEvent$Kind;->ENTER:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v2, v3, v0}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 893
    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v3, v2}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    .line 896
    :cond_47
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->enter:Lcom/sun/tools/javac/comp/Enter;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/comp/Enter;->getEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    if-nez v2, :cond_65

    .line 897
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    sget-object v3, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    .line 898
    const-string v4, "package-info"

    invoke-interface {v2, v4, v3}, Ljavax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v2

    .line 900
    if-eqz v2, :cond_a8

    .line 901
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/comp/Enter;->getEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 915
    :cond_65
    iput-boolean v8, p0, Lcom/sun/tools/javac/main/JavaCompiler;->implicitSourceFilesRead:Z

    .line 916
    return-void

    .line 877
    :catch_68
    move-exception v0

    .line 878
    :try_start_69
    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v4, "error.reading.file"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 879
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->TopLevel(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    :try_end_8b
    .catchall {:try_start_69 .. :try_end_8b} :catchall_c3

    move-result-object v0

    goto :goto_19

    .line 902
    :cond_8d
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->diagFactory:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 904
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 903
    const-string v3, "file.does.not.contain.package"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 905
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    invoke-direct {v3, v2, p1, v1, v0}, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/JCDiagnostic;)V

    throw v3

    .line 908
    :cond_a8
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->diagFactory:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 910
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    .line 909
    const-string v3, "file.doesnt.contain.class"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 911
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    invoke-direct {v3, v2, p1, v1, v0}, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/JCDiagnostic;)V

    throw v3

    .line 881
    :catchall_c3
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 882
    throw v0

    .line 869
    :cond_ca
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    const-string v1, "user-selected completion failure by class name"

    invoke-direct {v0, p1, v1}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;-><init>(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/String;)V

    throw v0
.end method

.method public desugar(Ljava/util/Queue;)Ljava/util/Queue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;)",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;"
        }
    .end annotation

    .line 1409
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 1410
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 1411
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->desugar(Lcom/sun/tools/javac/comp/Env;Ljava/util/Queue;)V

    goto :goto_8

    .line 1412
    :cond_18
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->stopIfError(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected desugar(Lcom/sun/tools/javac/comp/Env;Ljava/util/Queue;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;)V"
        }
    .end annotation

    .line 1425
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->TRANSTYPES:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1547
    :cond_8
    :goto_8
    return-void

    .line 1428
    :cond_9
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->implicitSourcePolicy:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    sget-object v1, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->NONE:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 1429
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1433
    :cond_1b
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    sget-object v1, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->LOWER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->isDone(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1434
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->desugaredEnvs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 1462
    :cond_31
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;-><init>(Lcom/sun/tools/javac/main/JavaCompiler;Lcom/sun/tools/javac/comp/Env;)V

    .line 1463
    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1464
    iget-object v0, v0, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->dependencies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 1465
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    sget-object v3, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->isDone(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 1466
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->desugaredEnvs:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->attribute(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/main/JavaCompiler;->flow(Lcom/sun/tools/javac/comp/Env;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 1471
    :cond_69
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->TRANSTYPES:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1474
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    if-eqz v0, :cond_92

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[desugar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->printNote(Ljava/lang/String;)V

    .line 1477
    :cond_92
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    if-eqz v0, :cond_d7

    .line 1478
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 1477
    :goto_a2
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v2

    .line 1482
    :try_start_a6
    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 1484
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1485
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->forToplevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    .line 1487
    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    instance-of v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    if-eqz v3, :cond_104

    .line 1488
    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->stubOutput:Z

    if-nez v1, :cond_fd

    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-nez v1, :cond_fd

    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->printFlat:Z

    if-nez v1, :cond_fd

    .line 1489
    sget-object v1, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->LOWER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z
    :try_end_cd
    .catchall {:try_start_a6 .. :try_end_cd} :catchall_1d9

    move-result v1

    if-eqz v1, :cond_dc

    .line 1546
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_8

    .line 1479
    :cond_d7
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    goto :goto_a2

    .line 1491
    :cond_dc
    :try_start_dc
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->lower:Lcom/sun/tools/javac/comp/Lower;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v1, p1, v3, v0}, Lcom/sun/tools/javac/comp/Lower;->translateTopLevelClass(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/TreeMaker;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1492
    iget-object v1, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v1, :cond_fd

    .line 1493
    iget-object v1, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1494
    new-instance v1, Lcom/sun/tools/javac/util/Pair;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_fd
    .catchall {:try_start_dc .. :try_end_fd} :catchall_1d9

    .line 1546
    :cond_fd
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_8

    .line 1500
    :cond_104
    :try_start_104
    iget-boolean v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->stubOutput:Z

    if-eqz v3, :cond_14a

    .line 1503
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1504
    instance-of v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v3, :cond_143

    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->rootClasses:Lcom/sun/tools/javac/util/List;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1505
    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v6, 0x5

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_137

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1507
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->java_lang:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v3, :cond_143

    .line 1508
    :cond_137
    new-instance v1, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->removeMethodBodies(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_143
    .catchall {:try_start_104 .. :try_end_143} :catchall_1d9

    .line 1546
    :cond_143
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_8

    .line 1513
    :cond_14a
    :try_start_14a
    sget-object v3, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->TRANSTYPES:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z
    :try_end_14f
    .catchall {:try_start_14a .. :try_end_14f} :catchall_1d9

    move-result v3

    if-eqz v3, :cond_159

    .line 1546
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_8

    .line 1516
    :cond_159
    :try_start_159
    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->transTypes:Lcom/sun/tools/javac/comp/TransTypes;

    iget-object v4, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v3, v4, v0}, Lcom/sun/tools/javac/comp/TransTypes;->translateTopLevelClass(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/TreeMaker;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v3

    iput-object v3, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 1517
    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    sget-object v4, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->TRANSTYPES:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v3, p1, v4}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    sget-object v3, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->LOWER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z
    :try_end_16f
    .catchall {:try_start_159 .. :try_end_16f} :catchall_1d9

    move-result v3

    if-eqz v3, :cond_179

    .line 1546
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_8

    .line 1522
    :cond_179
    :try_start_179
    iget-boolean v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-eqz v3, :cond_19e

    .line 1525
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1526
    instance-of v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v3, :cond_197

    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->rootClasses:Lcom/sun/tools/javac/util/List;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1527
    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1528
    new-instance v1, Lcom/sun/tools/javac/util/Pair;

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_197
    .catchall {:try_start_179 .. :try_end_197} :catchall_1d9

    .line 1546
    :cond_197
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_8

    .line 1534
    :cond_19e
    :try_start_19e
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->lower:Lcom/sun/tools/javac/comp/Lower;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v1, p1, v3, v0}, Lcom/sun/tools/javac/comp/Lower;->translateTopLevelClass(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/TreeMaker;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1535
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    sget-object v3, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->LOWER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v1, p1, v3}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    sget-object v1, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->LOWER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z
    :try_end_1b2
    .catchall {:try_start_19e .. :try_end_1b2} :catchall_1d9

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1546
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_8

    .line 1541
    :goto_1bc
    :try_start_1bc
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 1542
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1543
    new-instance v3, Lcom/sun/tools/javac/util/Pair;

    invoke-direct {v3, p1, v0}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1541
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;
    :try_end_1d0
    .catchall {:try_start_1bc .. :try_end_1d0} :catchall_1d9

    move-object v1, v0

    goto :goto_1bc

    .line 1546
    :cond_1d2
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_8

    :catchall_1d9
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1547
    throw v0

    :cond_1e0
    move-object v1, v0

    goto :goto_1bc
.end method

.method public enterTrees(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_21

    .line 1059
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 1060
    new-instance v2, Lcom/sun/source/util/TaskEvent;

    sget-object v3, Lcom/sun/source/util/TaskEvent$Kind;->ENTER:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v2, v3, v0}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 1061
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v0, v2}, Lcom/sun/source/util/TaskListener;->started(Lcom/sun/source/util/TaskEvent;)V

    goto :goto_8

    .line 1065
    :cond_21
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->enter:Lcom/sun/tools/javac/comp/Enter;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Enter;->main(Lcom/sun/tools/javac/util/List;)V

    .line 1067
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_47

    .line 1068
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 1069
    new-instance v2, Lcom/sun/source/util/TaskEvent;

    sget-object v3, Lcom/sun/source/util/TaskEvent$Kind;->ENTER:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v2, v3, v0}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 1070
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v0, v2}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    goto :goto_2e

    .line 1076
    :cond_47
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-nez v0, :cond_4f

    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->stubOutput:Z

    if-eqz v0, :cond_83

    .line 1077
    :cond_4f
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v2

    .line 1078
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 1079
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 1080
    :goto_66
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1082
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    instance-of v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_79

    .line 1083
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1081
    :cond_79
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_66

    .line 1086
    :cond_7d
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->rootClasses:Lcom/sun/tools/javac/util/List;

    .line 1093
    :cond_83
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 1094
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 1097
    :cond_9b
    return-object p1
.end method

.method public errorCount()I
    .registers 4

    .line 651
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->delegateCompiler:Lcom/sun/tools/javac/main/JavaCompiler;

    if-eqz v0, :cond_b

    if-eq v0, p0, :cond_b

    .line 652
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    .line 658
    :goto_a
    return v0

    .line 654
    :cond_b
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->werror:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v0, v0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v0, v0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    if-lez v0, :cond_25

    .line 655
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "warnings.and.werror"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    :cond_25
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v0, v0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    goto :goto_a
.end method

.method explicitAnnotationProcessingRequested()Z
    .registers 2

    .line 1271
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    .line 1273
    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested(Lcom/sun/tools/javac/util/Options;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    .line 1271
    :goto_d
    return v0

    .line 1273
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public flow(Lcom/sun/tools/javac/comp/Env;)Ljava/util/Queue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    .line 1356
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    .line 1357
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->flow(Lcom/sun/tools/javac/comp/Env;Ljava/util/Queue;)V

    .line 1358
    sget-object v1, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->stopIfError(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public flow(Ljava/util/Queue;)Ljava/util/Queue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;)",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    .line 1345
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 1346
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 1347
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->flow(Lcom/sun/tools/javac/comp/Env;Ljava/util/Queue;)V

    goto :goto_8

    .line 1349
    :cond_18
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->stopIfError(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected flow(Lcom/sun/tools/javac/comp/Env;Ljava/util/Queue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;)V"
        }
    .end annotation

    .line 1366
    :try_start_0
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_e7

    move-result v0

    if-eqz v0, :cond_1f

    .line 1394
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_1e

    .line 1395
    new-instance v0, Lcom/sun/source/util/TaskEvent;

    sget-object v1, Lcom/sun/source/util/TaskEvent$Kind;->ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 1396
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v1, v0}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    .line 1399
    :cond_1e
    :goto_1e
    return-void

    .line 1369
    :cond_1f
    :try_start_1f
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->relax:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    sget-object v1, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->isDone(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1370
    :cond_2d
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_e7

    .line 1394
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_1e

    .line 1395
    new-instance v0, Lcom/sun/source/util/TaskEvent;

    sget-object v1, Lcom/sun/source/util/TaskEvent$Kind;->ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 1396
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v1, v0}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    goto :goto_1e

    .line 1374
    :cond_47
    :try_start_47
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    if-eqz v0, :cond_68

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[flow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->printNote(Ljava/lang/String;)V

    .line 1376
    :cond_68
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    .line 1377
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    if-eqz v0, :cond_bb

    .line 1378
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 1376
    :goto_78
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    :try_end_7b
    .catchall {:try_start_47 .. :try_end_7b} :catchall_e7

    move-result-object v1

    .line 1381
    :try_start_7c
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1382
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->forToplevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    .line 1383
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->flow:Lcom/sun/tools/javac/comp/Flow;

    invoke-virtual {v2, p1, v0}, Lcom/sun/tools/javac/comp/Flow;->analyzeTree(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/TreeMaker;)V

    .line 1384
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->compileStates:Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v0, p1, v2}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z
    :try_end_9b
    .catchall {:try_start_7c .. :try_end_9b} :catchall_e0

    move-result v0

    if-eqz v0, :cond_c0

    .line 1391
    :try_start_9e
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    :try_end_a3
    .catchall {:try_start_9e .. :try_end_a3} :catchall_e7

    .line 1394
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_1e

    .line 1395
    new-instance v0, Lcom/sun/source/util/TaskEvent;

    sget-object v1, Lcom/sun/source/util/TaskEvent$Kind;->ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 1396
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v1, v0}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    goto/16 :goto_1e

    .line 1379
    :cond_bb
    :try_start_bb
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_e7

    goto :goto_78

    .line 1389
    :cond_c0
    :try_start_c0
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_e0

    .line 1391
    :try_start_c3
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_e7

    .line 1392
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_1e

    .line 1395
    new-instance v0, Lcom/sun/source/util/TaskEvent;

    sget-object v1, Lcom/sun/source/util/TaskEvent$Kind;->ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 1396
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v1, v0}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    goto/16 :goto_1e

    .line 1391
    :catchall_e0
    move-exception v0

    :try_start_e1
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1392
    throw v0
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_e7

    .line 1394
    :catchall_e7
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v1, :cond_fe

    .line 1395
    new-instance v1, Lcom/sun/source/util/TaskEvent;

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v4, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 1396
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v2, v1}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    .line 1398
    :cond_fe
    throw v0
.end method

.method genCode(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Ljavax/tools/JavaFileObject;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ")",
            "Ljavax/tools/JavaFileObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 845
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->gen:Lcom/sun/tools/javac/jvm/Gen;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/jvm/Gen;->genClass(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-nez v0, :cond_22

    .line 846
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->writer:Lcom/sun/tools/javac/jvm/ClassWriter;

    iget-object v1, p2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Ljavax/tools/JavaFileObject;
    :try_end_16
    .catch Lcom/sun/tools/javac/jvm/ClassWriter$PoolOverflow; {:try_start_1 .. :try_end_16} :catch_3e
    .catch Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow; {:try_start_1 .. :try_end_16} :catch_24
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v0

    .line 854
    :goto_17
    return-object v0

    .line 852
    :catch_18
    move-exception v0

    .line 853
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;

    .line 854
    :cond_22
    :goto_22
    const/4 v0, 0x0

    goto :goto_17

    .line 849
    :catch_24
    move-exception v0

    .line 850
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow;->value:Ljava/lang/String;

    .line 851
    const/16 v3, 0x14

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 850
    const-string v3, "limit.string.overflow"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22

    .line 847
    :catch_3e
    move-exception v0

    .line 848
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "limit.pool"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22
.end method

.method public generate(Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;)V"
        }
    .end annotation

    .line 1558
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;Ljava/util/Queue;)V

    .line 1559
    return-void
.end method

.method public generate(Ljava/util/Queue;Ljava/util/Queue;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;",
            "Ljava/util/Queue",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1562
    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->GENERATE:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1606
    :cond_a
    :goto_a
    return-void

    .line 1565
    :cond_b
    iget-boolean v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->stubOutput:Z

    if-nez v2, :cond_17

    iget-boolean v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-nez v2, :cond_17

    iget-boolean v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->printFlat:Z

    if-eqz v2, :cond_ac

    :cond_17
    move v2, v1

    .line 1567
    :goto_18
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/util/Pair;

    .line 1568
    iget-object v0, v1, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 1569
    iget-object v1, v1, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1571
    iget-boolean v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    if-eqz v3, :cond_5c

    .line 1572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[generate "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    if-eqz v2, :cond_af

    const-string v3, " source"

    :goto_43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1572
    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/main/JavaCompiler;->printNote(Ljava/lang/String;)V

    .line 1577
    :cond_5c
    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v3, :cond_70

    .line 1578
    new-instance v3, Lcom/sun/source/util/TaskEvent;

    sget-object v5, Lcom/sun/source/util/TaskEvent$Kind;->GENERATE:Lcom/sun/source/util/TaskEvent$Kind;

    iget-object v6, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v7, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v3, v5, v6, v7}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 1579
    iget-object v5, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v5, v3}, Lcom/sun/source/util/TaskListener;->started(Lcom/sun/source/util/TaskEvent;)V

    .line 1582
    :cond_70
    iget-object v5, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    if-eqz v3, :cond_b2

    .line 1583
    iget-object v3, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 1582
    :goto_80
    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v5

    .line 1587
    if-eqz v2, :cond_b7

    .line 1588
    :try_start_86
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->printSource(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Ljavax/tools/JavaFileObject;

    move-result-object v3

    .line 1591
    :goto_8a
    if-eqz p2, :cond_91

    if-eqz v3, :cond_91

    .line 1592
    invoke-interface {p2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_91} :catch_bc
    .catchall {:try_start_86 .. :try_end_91} :catchall_de

    .line 1598
    :cond_91
    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3, v5}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1599
    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v3, :cond_1c

    .line 1602
    new-instance v3, Lcom/sun/source/util/TaskEvent;

    sget-object v5, Lcom/sun/source/util/TaskEvent$Kind;->GENERATE:Lcom/sun/source/util/TaskEvent$Kind;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v3, v5, v0, v1}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 1603
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v0, v3}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    goto/16 :goto_1c

    :cond_ac
    move v2, v0

    .line 1565
    goto/16 :goto_18

    .line 1573
    :cond_af
    const-string v3, "code"

    goto :goto_43

    .line 1584
    :cond_b2
    iget-object v3, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    goto :goto_80

    .line 1590
    :cond_b7
    :try_start_b7
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->genCode(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Ljavax/tools/JavaFileObject;
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bc
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_de

    move-result-object v3

    goto :goto_8a

    .line 1593
    :catch_bc
    move-exception v0

    .line 1594
    :try_start_bd
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1595
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1594
    const-string v4, "class.cant.write"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-virtual {v2, v3, v4, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d7
    .catchall {:try_start_bd .. :try_end_d7} :catchall_de

    .line 1598
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto/16 :goto_a

    :catchall_de
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v5}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1599
    throw v0
.end method

.method groupByFile(Ljava/util/Queue;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;>;"
        }
    .end annotation

    .line 1611
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1612
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 1613
    iget-object v1, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 1614
    if-nez v1, :cond_29

    .line 1615
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1616
    iget-object v4, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    :cond_29
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1620
    :cond_2d
    return-object v2
.end method

.method public initProcessAnnotations(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    .line 1125
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v1, Lcom/sun/tools/javac/main/OptionName;->PROC:Lcom/sun/tools/javac/main/OptionName;

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->processAnnotations:Z

    .line 1143
    :cond_10
    :goto_10
    return-void

    .line 1127
    :cond_11
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    if-nez v0, :cond_10

    .line 1128
    new-instance v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->context:Lcom/sun/tools/javac/util/Context;

    invoke-direct {v0, v1, p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;-><init>(Lcom/sun/tools/javac/util/Context;Ljava/lang/Iterable;)V

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    .line 1129
    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->atLeastOneProcessor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->processAnnotations:Z

    .line 1131
    if-eqz v0, :cond_4a

    .line 1132
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "save-parameter-names"

    const-string v2, "save-parameter-names"

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iput-boolean v3, v0, Lcom/sun/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    .line 1134
    iput-boolean v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->keepComments:Z

    .line 1135
    iput-boolean v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->genEndPos:Z

    .line 1136
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_45

    .line 1137
    new-instance v1, Lcom/sun/source/util/TaskEvent;

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v1, v2}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;)V

    invoke-interface {v0, v1}, Lcom/sun/source/util/TaskListener;->started(Lcom/sun/source/util/TaskEvent;)V

    .line 1138
    :cond_45
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iput-boolean v3, v0, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    goto :goto_10

    .line 1140
    :cond_4a
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->close()V

    goto :goto_10
.end method

.method public initRound(Lcom/sun/tools/javac/main/JavaCompiler;)V
    .registers 4

    .line 1759
    iget-boolean v0, p1, Lcom/sun/tools/javac/main/JavaCompiler;->genEndPos:Z

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->genEndPos:Z

    .line 1760
    iget-boolean v0, p1, Lcom/sun/tools/javac/main/JavaCompiler;->keepComments:Z

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->keepComments:Z

    .line 1761
    iget-wide v0, p1, Lcom/sun/tools/javac/main/JavaCompiler;->start_msec:J

    iput-wide v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->start_msec:J

    .line 1762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->hasBeenUsed:Z

    .line 1763
    return-void
.end method

.method protected keepComments()Z
    .registers 2

    .line 734
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->keepComments:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->stubOutput:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public parse(Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->fileManager:Ljavax/tools/JavaFileManager;

    check-cast v0, Lcom/sun/tools/javac/file/JavacFileManager;

    .line 746
    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->parse(Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .registers 6

    .line 755
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 757
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/main/JavaCompiler;->readSource(Ljavax/tools/JavaFileObject;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->parse(Ljavax/tools/JavaFileObject;Ljava/lang/CharSequence;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    .line 758
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Ljava/util/Map;

    if-eqz v2, :cond_19

    .line 759
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Ljava/util/Map;

    invoke-virtual {v2, p1, v3}, Lcom/sun/tools/javac/util/Log;->setEndPosTable(Ljavax/tools/JavaFileObject;Ljava/util/Map;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1f

    .line 760
    :cond_19
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    return-object v0

    .line 762
    :catchall_1f
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 763
    throw v0
.end method

.method protected parse(Ljavax/tools/JavaFileObject;Ljava/lang/CharSequence;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 702
    invoke-static {}, Lcom/sun/tools/javac/main/JavaCompiler;->now()J

    move-result-wide v2

    .line 703
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 704
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 703
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->TopLevel(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    .line 705
    if-eqz p2, :cond_5f

    .line 706
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz v0, :cond_26

    .line 707
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "parsing.started"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v0, v1, v4}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    :cond_26
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_36

    .line 710
    new-instance v0, Lcom/sun/source/util/TaskEvent;

    sget-object v1, Lcom/sun/source/util/TaskEvent$Kind;->PARSE:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v0, v1, p1}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Ljavax/tools/JavaFileObject;)V

    .line 711
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v1, v0}, Lcom/sun/source/util/TaskListener;->started(Lcom/sun/source/util/TaskEvent;)V

    .line 713
    :cond_36
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->parserFactory:Lcom/sun/tools/javac/parser/ParserFactory;

    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->keepComments()Z

    move-result v1

    iget-boolean v4, p0, Lcom/sun/tools/javac/main/JavaCompiler;->genEndPos:Z

    iget-boolean v5, p0, Lcom/sun/tools/javac/main/JavaCompiler;->lineDebugInfo:Z

    invoke-virtual {v0, p2, v1, v4, v5}, Lcom/sun/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lcom/sun/tools/javac/parser/Parser;

    move-result-object v0

    .line 714
    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Parser;->parseCompilationUnit()Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    .line 715
    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz v1, :cond_5f

    .line 716
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v4, "parsing.done"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sun/tools/javac/main/JavaCompiler;->elapsed(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    :cond_5f
    iput-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 722
    if-eqz p2, :cond_73

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v1, :cond_73

    .line 723
    new-instance v1, Lcom/sun/source/util/TaskEvent;

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->PARSE:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v1, v2, v0}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 724
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->taskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v2, v1}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    .line 727
    :cond_73
    return-object v0
.end method

.method public parseFiles(Ljava/lang/Iterable;)Lcom/sun/tools/javac/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    .line 1036
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->PARSE:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1037
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1048
    :goto_c
    return-object v0

    .line 1040
    :cond_d
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 1041
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1042
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 1043
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1044
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1045
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->parse(Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1a

    .line 1048
    :cond_37
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_c
.end method

.method protected printCount(Ljava/lang/String;I)V
    .registers 8

    const/4 v2, 0x1

    .line 1739
    if-eqz p2, :cond_2b

    .line 1741
    if-ne p2, v2, :cond_2c

    .line 1742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1745
    :goto_16
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/util/Log;->printErrLines(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1746
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1748
    :cond_2b
    return-void

    .line 1744
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".plural"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method protected printNote(Ljava/lang/String;)V
    .registers 3

    .line 1732
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Log;->noticeWriter:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1733
    return-void
.end method

.method printSource(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Ljavax/tools/JavaFileObject;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ")",
            "Ljavax/tools/JavaFileObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 815
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->fileManager:Ljavax/tools/JavaFileManager;

    sget-object v2, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    iget-object v3, p2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 817
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    .line 816
    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/tools/JavaFileManager;->getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 820
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 821
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "source.cant.overwrite.input.file"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    :goto_2c
    return-object v0

    .line 824
    :cond_2d
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-interface {v1}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 826
    :try_start_36
    new-instance v0, Lcom/sun/tools/javac/tree/Pretty;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/sun/tools/javac/tree/Pretty;-><init>(Ljava/io/Writer;Z)V

    iget-object v3, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v0, v3, p2}, Lcom/sun/tools/javac/tree/Pretty;->printUnit(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 827
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz v0, :cond_52

    .line 828
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "wrote.file"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_57

    .line 830
    :cond_52
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    move-object v0, v1

    .line 831
    goto :goto_2c

    .line 830
    :catchall_57
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 831
    throw v0
.end method

.method public processAnnotations(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/main/JavaCompiler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lcom/sun/tools/javac/main/JavaCompiler;"
        }
    .end annotation

    .line 1147
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->processAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v0

    return-object v0
.end method

.method public processAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/main/JavaCompiler;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sun/tools/javac/main/JavaCompiler;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1164
    sget-object v1, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->PROCESS:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1169
    invoke-direct {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->unrecoverableError()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1170
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->reportDeferredDiagnostics()V

    .line 1258
    :goto_15
    return-object p0

    .line 1180
    :cond_16
    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->processAnnotations:Z

    if-nez v1, :cond_4b

    .line 1184
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->PROC:Lcom/sun/tools/javac/main/OptionName;

    const-string v3, "only"

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1185
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "proc.proc-only.requested.no.procs"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1186
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v1}, Lcom/sun/tools/javac/comp/Todo;->clear()V

    .line 1189
    :cond_34
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 1190
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "proc.no.explicit.annotation.processing.requested"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    :cond_45
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->reportDeferredDiagnostics()V

    goto :goto_15

    .line 1198
    :cond_4b
    :try_start_4b
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1199
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 1200
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11e

    .line 1203
    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1204
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "proc.no.explicit.annotation.processing.requested"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->reportDeferredDiagnostics()V
    :try_end_71
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_4b .. :try_end_71} :catch_72

    goto :goto_15

    .line 1255
    :catch_72
    move-exception v1

    .line 1256
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "cant.access"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->sym:Lcom/sun/tools/javac/code/Symbol;

    aput-object v7, v4, v6

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1257
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->reportDeferredDiagnostics()V

    goto :goto_15

    .line 1210
    :cond_8d
    :try_start_8d
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v6

    :goto_92
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_115

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1211
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/main/JavaCompiler;->resolveBinaryNameOrIdent(Ljava/lang/String;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 1212
    if-eqz v1, :cond_b4

    iget v8, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v8, v5, :cond_ae

    iget-boolean v8, p0, Lcom/sun/tools/javac/main/JavaCompiler;->processPcks:Z

    if-eqz v8, :cond_b4

    :cond_ae
    iget v8, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v10, 0x48

    if-ne v8, v10, :cond_c3

    .line 1215
    :cond_b4
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v7, "proc.cant.find.class"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v1, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c1
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_8d .. :try_end_c1} :catch_72

    move v7, v5

    .line 1217
    goto :goto_92

    .line 1220
    :cond_c3
    :try_start_c3
    iget v8, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v8, v5, :cond_ca

    .line 1221
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->complete()V

    .line 1222
    :cond_ca
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v8

    if-eqz v8, :cond_e6

    .line 1223
    iget v8, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v8, v5, :cond_de

    .line 1224
    check-cast v1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object v1, v3

    :goto_db
    move-object v3, v1

    move-object v4, v2

    .line 1227
    goto :goto_92

    .line 1226
    :cond_de
    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v2, v4

    goto :goto_db

    .line 1229
    :cond_e6
    iget v8, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v8, v5, :cond_102

    move v8, v5

    :goto_eb
    invoke-static {v8}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1230
    iget-object v8, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v10, "proc.package.does.not.exist"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-virtual {v8, v10, v11}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    check-cast v1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    :try_end_100
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_c3 .. :try_end_100} :catch_104

    move-result-object v4

    goto :goto_92

    :cond_102
    move v8, v6

    .line 1229
    goto :goto_eb

    .line 1232
    :catch_104
    move-exception v1

    .line 1233
    :try_start_105
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v7, "proc.cant.find.class"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v1, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v5

    .line 1235
    goto/16 :goto_92

    .line 1238
    :cond_115
    if-eqz v7, :cond_11e

    .line 1239
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->reportDeferredDiagnostics()V
    :try_end_11c
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_105 .. :try_end_11c} :catch_72

    goto/16 :goto_15

    .line 1245
    :cond_11e
    :try_start_11e
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->context:Lcom/sun/tools/javac/util/Context;

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->doProcessing(Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v1

    .line 1246
    if-eq v1, p0, :cond_12e

    .line 1247
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/tools/javac/main/JavaCompiler;->annotationProcessingOccurred:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->annotationProcessingOccurred:Z

    .line 1249
    :cond_12e
    iget-object v2, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget-boolean v2, v2, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    if-nez v2, :cond_14a

    iget-object v2, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    .line 1250
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_14a

    move v2, v5

    .line 1249
    :goto_13f
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V
    :try_end_142
    .catchall {:try_start_11e .. :try_end_142} :catchall_14c

    .line 1251
    :try_start_142
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->close()V

    move-object p0, v1

    goto/16 :goto_15

    :cond_14a
    move v2, v6

    .line 1250
    goto :goto_13f

    .line 1253
    :catchall_14c
    move-exception v1

    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->procEnvImpl:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->close()V

    .line 1254
    throw v1
    :try_end_153
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_142 .. :try_end_153} :catch_72
.end method

.method public readSource(Ljavax/tools/JavaFileObject;)Ljava/lang/CharSequence;
    .registers 7

    const/4 v4, 0x0

    .line 687
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 688
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljavax/tools/JavaFileObject;->getCharContent(Z)Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 691
    :goto_b
    return-object v0

    .line 689
    :catch_c
    move-exception v0

    .line 690
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "error.reading.file"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    const/4 v0, 0x0

    goto :goto_b
.end method

.method removeMethodBodies(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .registers 6

    .line 1624
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 1674
    :goto_e
    new-instance v1, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;-><init>(Lcom/sun/tools/javac/main/JavaCompiler;Z)V

    .line 1675
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->translate(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    return-object v0

    .line 1624
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public reportDeferredDiagnostics()V
    .registers 4

    const/4 v2, 0x0

    .line 1679
    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->annotationProcessingOccurred:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->implicitSourceFilesRead:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->implicitSourcePolicy:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    sget-object v1, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->UNSET:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    if-ne v0, v1, :cond_24

    .line 1683
    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1684
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "proc.use.implicit"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1688
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Check;->reportDeferredDiagnostics()V

    .line 1689
    return-void

    .line 1686
    :cond_2a
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "proc.use.proc.or.implicit"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_24
.end method

.method public resolveBinaryNameOrIdent(Ljava/lang/String;)Lcom/sun/tools/javac/code/Symbol;
    .registers 5

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->loadClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :try_end_13
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 777
    :goto_14
    return-object v0

    .line 776
    :catch_15
    move-exception v0

    .line 777
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/main/JavaCompiler;->resolveIdent(Ljava/lang/String;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_14
.end method

.method public resolveIdent(Ljava/lang/String;)Lcom/sun/tools/javac/code/Symbol;
    .registers 10

    const/4 v2, 0x0

    .line 787
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 788
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 801
    :goto_d
    return-object v0

    .line 789
    :cond_e
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v3

    .line 792
    :try_start_14
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_72

    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    if-ge v1, v5, :cond_51

    aget-object v0, v4, v1

    .line 793
    :try_start_22
    invoke-static {v0}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_32

    .line 794
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_72

    .line 803
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto :goto_d

    .line 795
    :cond_32
    if-nez v2, :cond_44

    :try_start_34
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v6, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 792
    :goto_40
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1e

    .line 796
    :cond_44
    iget-object v6, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v7, p0, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    goto :goto_40

    .line 798
    :cond_51
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 799
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->TopLevel(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    .line 800
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->unnamedPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 801
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/comp/Attr;->attribIdent(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/code/Symbol;
    :try_end_6b
    .catchall {:try_start_34 .. :try_end_6b} :catchall_72

    move-result-object v0

    .line 803
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    goto :goto_d

    :catchall_72
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 804
    throw v0
.end method

.method protected shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 641
    iget-object v2, p0, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStopPolicy:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    if-nez v2, :cond_15

    .line 642
    invoke-virtual {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v2

    if-gtz v2, :cond_12

    invoke-direct {p0}, Lcom/sun/tools/javac/main/JavaCompiler;->unrecoverableError()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 644
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 642
    goto :goto_12

    .line 644
    :cond_15
    invoke-virtual {p1}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStopPolicy:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v3}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method protected final stopIfError(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/main/JavaCompiler$CompileState;",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;)",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 666
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object p2

    :cond_a
    return-object p2
.end method

.method protected final stopIfError(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;Ljava/util/Queue;)Ljava/util/Queue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/main/JavaCompiler$CompileState;",
            "Ljava/util/Queue",
            "<TT;>;)",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .line 662
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStop(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object p2

    :cond_a
    return-object p2
.end method

.method public warningCount()I
    .registers 2

    .line 673
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->delegateCompiler:Lcom/sun/tools/javac/main/JavaCompiler;

    if-eqz v0, :cond_b

    if-eq v0, p0, :cond_b

    .line 674
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->warningCount()I

    move-result v0

    .line 676
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v0, v0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    goto :goto_a
.end method
