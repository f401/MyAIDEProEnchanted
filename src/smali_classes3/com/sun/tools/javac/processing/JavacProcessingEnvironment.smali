.class public Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
.super Ljava/lang/Object;
.source "JavacProcessingEnvironment.java"

# interfaces
.implements Ljavax/annotation/processing/ProcessingEnvironment;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;,
        Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;,
        Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;,
        Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;,
        Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;,
        Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;,
        Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;
    }
.end annotation


# static fields
.field private static final allMatches:Ljava/util/regex/Pattern;

.field public static final noMatches:Ljava/util/regex/Pattern;

.field private static treeCleaner:Lcom/sun/tools/javac/tree/TreeScanner;


# instance fields
.field private context:Lcom/sun/tools/javac/util/Context;

.field diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field private discoveredProcs:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

.field private final elementUtils:Lcom/sun/tools/javac/model/JavacElements;

.field private final fatalErrors:Z

.field private final filer:Lcom/sun/tools/javac/processing/JavacFiler;

.field private foundTypeProcessors:Z

.field private final lint:Z

.field log:Lcom/sun/tools/javac/util/Log;

.field private final messager:Lcom/sun/tools/javac/processing/JavacMessager;

.field private messages:Lcom/sun/tools/javac/util/JavacMessages;

.field options:Lcom/sun/tools/javac/util/Options;

.field private final platformAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final printProcessorInfo:Z

.field private final printRounds:Z

.field private final procOnly:Z

.field private processorClassLoader:Ljava/lang/ClassLoader;

.field private final processorOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final showResolveErrors:Z

.field source:Lcom/sun/tools/javac/code/Source;

.field private specifiedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private final typeUtils:Lcom/sun/tools/javac/model/JavacTypes;

.field private final unmatchedProcessorOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final verbose:Z

.field private final werror:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1355
    new-instance v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$1;

    invoke-direct {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$1;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->treeCleaner:Lcom/sun/tools/javac/tree/TreeScanner;

    .line 1446
    const-string v0, ".*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->allMatches:Ljava/util/regex/Pattern;

    .line 1447
    const-string v0, "(\\P{all})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->noMatches:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Context;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Context;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->specifiedPackages:Ljava/util/Set;

    .line 163
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->context:Lcom/sun/tools/javac/util/Context;

    .line 164
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    .line 165
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->source:Lcom/sun/tools/javac/code/Source;

    .line 166
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 167
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    .line 168
    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XPRINTPROCESSORINFO:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->printProcessorInfo:Z

    .line 169
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XPRINTROUNDS:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->printRounds:Z

    .line 170
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->verbose:Z

    .line 171
    invoke-static {p1}, Lcom/sun/tools/javac/code/Lint;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->PROCESSING:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->lint:Z

    .line 172
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->PROC:Lcom/sun/tools/javac/main/OptionName;

    const-string v3, "only"

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XPRINT:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->procOnly:Z

    .line 173
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    const-string v2, "fatalEnterError"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->fatalErrors:Z

    .line 174
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    const-string v2, "showResolveErrors"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->showResolveErrors:Z

    .line 175
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->WERROR:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->werror:Z

    .line 176
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->initPlatformAnnotations()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->platformAnnotations:Ljava/util/Set;

    .line 177
    iput-boolean v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->foundTypeProcessors:Z

    .line 181
    new-instance v0, Lcom/sun/tools/javac/processing/JavacFiler;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/processing/JavacFiler;-><init>(Lcom/sun/tools/javac/util/Context;)V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 182
    new-instance v0, Lcom/sun/tools/javac/processing/JavacMessager;

    invoke-direct {v0, p1, p0}, Lcom/sun/tools/javac/processing/JavacMessager;-><init>(Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->messager:Lcom/sun/tools/javac/processing/JavacMessager;

    .line 183
    invoke-static {p1}, Lcom/sun/tools/javac/model/JavacElements;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/model/JavacElements;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->elementUtils:Lcom/sun/tools/javac/model/JavacElements;

    .line 184
    invoke-static {p1}, Lcom/sun/tools/javac/model/JavacTypes;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/model/JavacTypes;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->typeUtils:Lcom/sun/tools/javac/model/JavacTypes;

    .line 185
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->initProcessorOptions(Lcom/sun/tools/javac/util/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->processorOptions:Ljava/util/Map;

    .line 186
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->initUnmatchedProcessorOptions()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->unmatchedProcessorOptions:Ljava/util/Set;

    .line 187
    invoke-static {p1}, Lcom/sun/tools/javac/util/JavacMessages;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JavacMessages;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->initProcessorIterator(Lcom/sun/tools/javac/util/Context;Ljava/lang/Iterable;)V

    .line 189
    return-void

    :cond_1
    move v0, v1

    .line 172
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;
    .registers 4

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->handleServiceLoaderUnavailability(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/annotation/processing/Processor;Lcom/sun/tools/javac/util/Log;)Ljava/util/regex/Pattern;
    .registers 4

    .line 97
    invoke-static {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->importStringToPattern(Ljava/lang/String;Ljavax/annotation/processing/Processor;Lcom/sun/tools/javac/util/Log;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/processing/JavacMessager;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->messager:Lcom/sun/tools/javac/processing/JavacMessager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->werror:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->fatalErrors:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/model/JavacElements;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->elementUtils:Lcom/sun/tools/javac/model/JavacElements;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljavax/tools/JavaFileObject;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 4

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Ljavax/tools/JavaFileObject;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/processing/JavacFiler;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/Context;Ljava/util/Set;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    .registers 5

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->discoverAndRunProcs(Lcom/sun/tools/javac/util/Context;Ljava/util/Set;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->printRounds:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->verbose:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljavax/annotation/processing/Processor;Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .registers 5

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->callProcessor(Ljavax/annotation/processing/Processor;Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/util/JavacMessages;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/model/JavacTypes;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->typeUtils:Lcom/sun/tools/javac/model/JavacTypes;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Context;
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->context:Lcom/sun/tools/javac/util/Context;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3

    .line 97
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getTopLevelClasses(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3

    .line 97
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getPackageInfoFiles(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 2

    .line 97
    invoke-static {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->cleanTrees(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3

    .line 97
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getTopLevelClassesFromClasses(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3

    .line 97
    invoke-static {p0, p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->join(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3

    .line 97
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getPackageInfoFilesFromClasses(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method private callProcessor(Ljavax/annotation/processing/Processor;Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/Processor;",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 793
    :try_start_0
    invoke-interface {p1, p2, p3}, Ljavax/annotation/processing/Processor;->process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    :try_end_0
    .catch Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 801
    :goto_0
    return v0

    .line 804
    :catchall_0
    move-exception v0

    .line 805
    new-instance v1, Lcom/sun/tools/javac/processing/AnnotationProcessingError;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/processing/AnnotationProcessingError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    throw v0

    .line 797
    :catch_1
    move-exception v1

    .line 798
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 799
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 800
    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    const-string v4, "proc.cant.access"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->sym:Lcom/sun/tools/javac/code/Symbol;

    aput-object v6, v5, v0

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 794
    :catch_2
    move-exception v1

    .line 795
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.cant.access.1"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;->sym:Lcom/sun/tools/javac/code/Symbol;

    aput-object v5, v4, v0

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;->getDetailValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static cleanTrees(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;)",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 1350
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1351
    sget-object v2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->treeCleaner:Lcom/sun/tools/javac/tree/TreeScanner;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    goto :goto_0

    .line 1352
    :cond_0
    return-object p0
.end method

.method private discoverAndRunProcs(Lcom/sun/tools/javac/util/Context;Ljava/util/Set;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Context;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            ">;)V"
        }
    .end annotation

    .line 677
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 680
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 681
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 686
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 687
    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->iterator()Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    move-result-object v3

    .line 696
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 697
    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 698
    invoke-interface {v0, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 699
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 701
    new-instance v4, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v0, p0}, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;-><init>(ZZLjava/util/Set;Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 706
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 707
    invoke-virtual {v3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->next()Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    move-result-object v5

    .line 708
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 709
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 711
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 712
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 713
    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->annotationSupported(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 714
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 716
    if-eqz v0, :cond_3

    .line 717
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 721
    :cond_4
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_5

    iget-boolean v0, v5, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->contributed:Z

    if-eqz v0, :cond_2

    .line 722
    :cond_5
    iget-object v0, v5, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    invoke-direct {p0, v0, v7, v4}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->callProcessor(Ljavax/annotation/processing/Processor;Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z

    move-result v0

    .line 723
    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->contributed:Z

    .line 724
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->unmatchedProcessorOptions:Ljava/util/Set;

    invoke-virtual {v5, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->removeSupportedOptions(Ljava/util/Set;)V

    .line 726
    iget-boolean v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->printProcessorInfo:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->verbose:Z

    if-eqz v1, :cond_7

    .line 727
    :cond_6
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v5, v5, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    .line 728
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 729
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 730
    const-string v8, "x.print.processor.info"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v5, 0x1

    aput-object v7, v9, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v5

    invoke-virtual {v1, v8, v9}, Lcom/sun/tools/javac/util/Log;->printNoteLines(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    :cond_7
    if-eqz v0, :cond_2

    .line 734
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 739
    :cond_8
    const-string v0, ""

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->lint:Z

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 743
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->platformAnnotations:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 744
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 745
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    .line 746
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "proc.annotations.without.processors"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v0, v2, v5}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    :cond_9
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->runContributingProcs(Ljavax/annotation/processing/RoundEnvironment;)V

    .line 755
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "displayFilerState"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 756
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacFiler;->displayState()V

    .line 757
    :cond_a
    return-void
.end method

.method private getPackageInfoFiles(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation

    .line 1290
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1291
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 1292
    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    sget-object v4, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v3, v4}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Ljavax/tools/JavaFileObject;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1293
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1295
    goto :goto_0

    .line 1296
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private getPackageInfoFilesFromClasses(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation

    .line 1300
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1301
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1302
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1305
    goto :goto_0

    .line 1306
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private getTopLevelClasses(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    .line 1266
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1267
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 1268
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1269
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1270
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1271
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1274
    goto :goto_0

    .line 1276
    :cond_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getTopLevelClassesFromClasses(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    .line 1280
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1281
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1282
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1283
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1285
    goto :goto_0

    .line 1286
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    const/4 v3, 0x0

    .line 287
    if-eqz p2, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    new-instance v0, Lcom/sun/tools/javac/util/Abort;

    invoke-direct {v0, p2}, Lcom/sun/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    new-instance v0, Lcom/sun/tools/javac/util/Abort;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Abort;-><init>()V

    throw v0
.end method

.method private handleServiceLoaderUnavailability(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->context:Lcom/sun/tools/javac/util/Context;

    const-class v1, Ljavax/tools/JavaFileManager;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    .line 265
    instance-of v1, v0, Lcom/sun/tools/javac/file/JavacFileManager;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 266
    check-cast v1, Lcom/sun/tools/javac/file/JavacFileManager;

    .line 267
    sget-object v2, Ljavax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v0, v2}, Ljavax/tools/JavaFileManager;->hasLocation(Ljavax/tools/JavaFileManager$Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    sget-object v0, Ljavax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v1, v0}, Ljavax/tools/StandardJavaFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->PROCESSOR:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->needClassLoader(Ljava/lang/String;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 278
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 269
    :cond_1
    sget-object v0, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v1, v0}, Ljavax/tools/StandardJavaFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static importStringToPattern(Ljava/lang/String;Ljavax/annotation/processing/Processor;Lcom/sun/tools/javac/util/Log;)Ljava/util/regex/Pattern;
    .registers 7

    .line 1455
    invoke-static {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->isValidImportString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    invoke-static {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->validImportStringToPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1459
    :goto_0
    return-object v0

    .line 1458
    :cond_0
    const-string v0, "proc.malformed.supported.string"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1459
    sget-object v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->noMatches:Ljava/util/regex/Pattern;

    goto :goto_0
.end method

.method private initPlatformAnnotations()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 193
    const-string v1, "java.lang.Deprecated"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v1, "java.lang.Override"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v1, "java.lang.SuppressWarnings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v1, "java.lang.annotation.Documented"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v1, "java.lang.annotation.Inherited"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v1, "java.lang.annotation.Retention"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v1, "java.lang.annotation.Target"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private initProcessorIterator(Lcom/sun/tools/javac/util/Context;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Context;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    .line 207
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XPRINT:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    const-class v0, Lcom/sun/tools/javac/processing/PrintingProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/Processor;

    .line 210
    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 248
    :goto_0
    new-instance v1, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;-><init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/Iterator;)V

    iput-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    .line 249
    return-void

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Problem instantiating PrintingProcessor."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 215
    throw v1

    .line 217
    :cond_0
    if-eqz p2, :cond_1

    .line 218
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->PROCESSOR:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v2

    .line 221
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    .line 224
    :try_start_1
    sget-object v3, Ljavax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v0, v3}, Ljavax/tools/JavaFileManager;->hasLocation(Ljavax/tools/JavaFileManager$Location;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    sget-object v3, Ljavax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v0, v3}, Ljavax/tools/JavaFileManager;->getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 226
    :goto_1
    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    .line 233
    if-eqz v2, :cond_3

    .line 234
    new-instance v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;

    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v2, v3, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/sun/tools/javac/util/Log;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 245
    const-string v1, "proc.cant.create.loader"

    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->handleServiceLoaderUnavailability(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_2
    :try_start_2
    sget-object v3, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v0, v3}, Ljavax/tools/JavaFileManager;->getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 236
    :cond_3
    new-instance v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, p0, v2, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;-><init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljava/lang/ClassLoader;Lcom/sun/tools/javac/util/Log;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private initProcessorOptions(Lcom/sun/tools/javac/util/Context;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x2

    .line 468
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Options;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 470
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 472
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    const-string v2, "-A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_0

    .line 474
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 478
    const/4 v2, -0x1

    if-ne v5, v2, :cond_1

    .line 479
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 485
    :goto_1
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    :cond_1
    const/4 v2, 0x3

    if-lt v5, v2, :cond_4

    .line 481
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 483
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 489
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, v1

    move-object v2, v1

    goto :goto_1
.end method

.method private initUnmatchedProcessorOptions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 494
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->processorOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 495
    return-object v0
.end method

.method private isPkgInfo(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z
    .registers 4

    .line 1319
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    sget-object v1, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Ljavax/tools/JavaFileObject;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPkgInfo(Ljavax/tools/JavaFileObject;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 4

    .line 1315
    const-string v0, "package-info"

    invoke-interface {p1, v0, p2}, Ljavax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v0

    return v0
.end method

.method public static isValidImportString(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1468
    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return v0

    .line 1472
    :cond_1
    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1475
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1477
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    .line 1479
    add-int/lit8 v3, v2, -0x1

    if-ltz v3, :cond_2

    .line 1480
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_3

    .line 1482
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1489
    :cond_2
    if-eqz v0, :cond_0

    .line 1490
    const-string v2, "\\."

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1491
    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1492
    invoke-static {v4}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 1491
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1480
    goto :goto_1

    :cond_4
    move v0, v1

    .line 1485
    goto :goto_0
.end method

.method public static isValidOptionName(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1524
    const-string v1, "\\."

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1525
    invoke-static {v4}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1528
    :goto_1
    return v0

    .line 1524
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1528
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static join(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;)",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 1311
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method private moreToDo()Z
    .registers 2

    .line 1405
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacFiler;->newFiles()Z

    move-result v0

    return v0
.end method

.method private needClassLoader(Ljava/lang/String;Ljava/lang/Iterable;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1327
    if-eqz p1, :cond_0

    move v0, v1

    .line 1346
    :goto_0
    return v0

    .line 1331
    :cond_0
    new-array v3, v1, [Ljava/net/URL;

    .line 1332
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1334
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    aput-object v0, v3, v5

    .line 1335
    const-class v0, Ljavax/annotation/processing/Processor;

    invoke-static {v0, v3}, Lcom/sun/tools/javac/processing/ServiceProxy;->hasService(Ljava/lang/Class;[Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1336
    goto :goto_0

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    const-string v4, "proc.bad.config.file"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1342
    goto :goto_0

    .line 1337
    :catch_1
    move-exception v0

    .line 1338
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2
    move v0, v2

    .line 1346
    goto :goto_0
.end method

.method public static validImportStringToPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 5

    .line 1498
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    sget-object v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->allMatches:Ljava/util/regex/Pattern;

    .line 1507
    :goto_0
    return-object v0

    .line 1501
    :cond_0
    const-string v0, "."

    const-string v1, "\\."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1503
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1507
    :cond_1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_0
.end method

.method private warnIfUnmatchedOptions()V
    .registers 6

    .line 1242
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->unmatchedProcessorOptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "proc.unmatched.processor.options"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->unmatchedProcessorOptions:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1245
    :cond_0
    return-void
.end method


# virtual methods
.method public atLeastOneProcessor()Z
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->iterator()Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public close()V
    .registers 5

    .line 1251
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacFiler;->close()V

    .line 1252
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->close()V

    .line 1254
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    .line 1255
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 1257
    :try_start_0
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :cond_1
    return-void

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const-string v2, "fatal.err.cant.close.loader"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    .line 1260
    new-instance v2, Lcom/sun/tools/javac/util/FatalError;

    invoke-direct {v2, v1, v0}, Lcom/sun/tools/javac/util/FatalError;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public doProcessing(Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)Lcom/sun/tools/javac/main/JavaCompiler;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Context;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            ">;)",
            "Lcom/sun/tools/javac/main/JavaCompiler;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1149
    const-class v0, Lcom/sun/source/util/TaskListener;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/util/TaskListener;

    .line 1150
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    .line 1152
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1153
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 1154
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1155
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->specifiedPackages:Ljava/util/Set;

    .line 1157
    new-instance v1, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;-><init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    .line 1163
    :cond_1
    invoke-virtual {v1, v3, v3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->run(ZZ)V

    .line 1167
    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->unrecoverableError()Z

    move-result v5

    .line 1168
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->moreToDo()Z

    move-result v6

    .line 1170
    if-nez v5, :cond_2

    iget-boolean v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->showResolveErrors:Z

    if-eqz v2, :cond_b

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->showDiagnostics(Z)V

    .line 1174
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 1175
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Lcom/sun/tools/javac/processing/JavacFiler;->getGeneratedSourceFileObjects()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 1176
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/sun/tools/javac/processing/JavacFiler;->getGeneratedClasses()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1174
    invoke-virtual {v1, v7, v8}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->next(Ljava/util/Set;Ljava/util/Map;)Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;

    move-result-object v1

    .line 1179
    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->unrecoverableError()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v4

    .line 1182
    :goto_2
    if-eqz v6, :cond_3

    if-eqz v2, :cond_1

    .line 1185
    :cond_3
    invoke-virtual {v1, v4, v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->run(ZZ)V

    .line 1186
    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->showDiagnostics(Z)V

    .line 1188
    iget-object v5, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    invoke-virtual {v5}, Lcom/sun/tools/javac/processing/JavacFiler;->warnIfUnclosedFiles()V

    .line 1189
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->warnIfUnmatchedOptions()V

    .line 1202
    iget-object v5, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->messager:Lcom/sun/tools/javac/processing/JavacMessager;

    invoke-virtual {v5}, Lcom/sun/tools/javac/processing/JavacMessager;->errorRaised()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->werror:Z

    if-eqz v5, :cond_5

    .line 1203
    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->warningCount()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->errorCount()I

    move-result v5

    if-lez v5, :cond_5

    :cond_4
    move v2, v4

    .line 1206
    :cond_5
    iget-object v5, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 1207
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Lcom/sun/tools/javac/processing/JavacFiler;->getGeneratedSourceFileObjects()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1208
    iget-object v5, v1, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lcom/sun/tools/javac/util/List;

    invoke-static {v5}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->cleanTrees(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 1210
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->finalCompiler(Z)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v1

    .line 1212
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 1213
    invoke-virtual {v1, v6}, Lcom/sun/tools/javac/main/JavaCompiler;->parseFiles(Ljava/lang/Iterable;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 1215
    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v2

    if-lez v2, :cond_8

    :cond_7
    move v3, v4

    .line 1218
    :cond_8
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->close()V

    .line 1220
    if-eqz v0, :cond_9

    .line 1221
    new-instance v2, Lcom/sun/source/util/TaskEvent;

    sget-object v4, Lcom/sun/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v2, v4}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;)V

    invoke-interface {v0, v2}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    .line 1223
    :cond_9
    if-eqz v3, :cond_c

    .line 1224
    invoke-virtual {v1}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 1225
    iget-object v0, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v2, v0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    :cond_a
    move-object v0, v1

    .line 1238
    :goto_3
    return-object v0

    :cond_b
    move v2, v3

    .line 1170
    goto/16 :goto_1

    .line 1229
    :cond_c
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->procOnly:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->foundTypeProcessors:Z

    if-nez v0, :cond_d

    .line 1230
    iget-object v0, v1, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Todo;->clear()V

    :goto_4
    move-object v0, v1

    .line 1238
    goto :goto_3

    .line 1232
    :cond_d
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->procOnly:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->foundTypeProcessors:Z

    if-eqz v0, :cond_e

    .line 1233
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    iput-object v0, v1, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStopPolicy:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 1235
    :cond_e
    invoke-virtual {v1, v5}, Lcom/sun/tools/javac/main/JavaCompiler;->enterTrees(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    goto :goto_4

    :cond_f
    move v2, v5

    goto/16 :goto_2
.end method

.method public getContext()Lcom/sun/tools/javac/util/Context;
    .registers 2

    .line 1516
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->context:Lcom/sun/tools/javac/util/Context;

    return-object v0
.end method

.method public getElementUtils()Lcom/sun/tools/javac/model/JavacElements;
    .registers 2

    .line 1427
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->elementUtils:Lcom/sun/tools/javac/model/JavacElements;

    return-object v0
.end method

.method public bridge synthetic getElementUtils()Ljavax/lang/model/util/Elements;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getElementUtils()Lcom/sun/tools/javac/model/JavacElements;

    move-result-object v0

    return-object v0
.end method

.method public getFiler()Ljavax/annotation/processing/Filer;
    .registers 2

    .line 1423
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->filer:Lcom/sun/tools/javac/processing/JavacFiler;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 1439
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JavacMessages;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getMessager()Ljavax/annotation/processing/Messager;
    .registers 2

    .line 1419
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->messager:Lcom/sun/tools/javac/processing/JavacMessager;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1415
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->processorOptions:Ljava/util/Map;

    return-object v0
.end method

.method public getSourceVersion()Ljavax/lang/model/SourceVersion;
    .registers 2

    .line 1435
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->source:Lcom/sun/tools/javac/code/Source;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Source;->toSourceVersion(Lcom/sun/tools/javac/code/Source;)Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public getSpecifiedPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation

    .line 1443
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->specifiedPackages:Ljava/util/Set;

    return-object v0
.end method

.method public getTypeUtils()Lcom/sun/tools/javac/model/JavacTypes;
    .registers 2

    .line 1431
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->typeUtils:Lcom/sun/tools/javac/model/JavacTypes;

    return-object v0
.end method

.method public bridge synthetic getTypeUtils()Ljavax/lang/model/util/Types;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getTypeUtils()Lcom/sun/tools/javac/model/JavacTypes;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1520
    const-string v0, "javac ProcessingEnvironment"

    return-object v0
.end method
