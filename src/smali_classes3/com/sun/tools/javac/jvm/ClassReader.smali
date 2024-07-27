.class public Lcom/sun/tools/javac/jvm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/jvm/ClassReader$TypeAnnotationProxy;
    }
.end annotation


# static fields
.field public static final INITIAL_BUFFER_SIZE:I = 0xfff0

.field protected static final classReaderKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassReader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected CLASS_ATTRIBUTE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;"
        }
    .end annotation
.end field

.field protected CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;"
        }
    .end annotation
.end field

.field protected MEMBER_ATTRIBUTE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;"
        }
    .end annotation
.end field

.field allowAnnotations:Z

.field allowGenerics:Z

.field allowSimplifiedVarargs:Z

.field allowVarargs:Z

.field annotate:Lcom/sun/tools/javac/comp/Annotate;

.field protected attributeReaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;",
            ">;"
        }
    .end annotation
.end field

.field bp:I

.field buf:[B

.field private cacheCompletionFailure:Z

.field private cachedCompletionFailure:Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

.field checkClassFile:Z

.field private classes:Ljava/util/Map;
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

.field final completionFailureName:Lcom/sun/tools/javac/util/Name;

.field protected currentClassFile:Ljavax/tools/JavaFileObject;

.field protected currentLoc:Ljavax/tools/JavaFileManager$Location;

.field protected currentOwner:Lcom/sun/tools/javac/code/Symbol;

.field diagFactory:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field private final fileManager:Ljavax/tools/JavaFileManager;

.field private filling:Z

.field private foundTypeVariables:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field haveParameterNameIndices:Z

.field lintClassfile:Z

.field final log:Lcom/sun/tools/javac/util/Log;

.field majorVersion:I

.field minorVersion:I

.field private missingTypeVariables:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final names:Lcom/sun/tools/javac/util/Names;

.field private packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation
.end field

.field parameterNameIndices:[I

.field poolIdx:[I

.field poolObj:[Ljava/lang/Object;

.field public preferSource:Z

.field public readAllOfClassFile:Z

.field private readingClassAttr:Z

.field public saveParameterNames:Z

.field sbp:I

.field sigEnterPhase:Z

.field siglimit:I

.field signature:[B

.field signatureBuffer:[B

.field sigp:I

.field public sourceCompleter:Lcom/sun/tools/javac/jvm/ClassReader$SourceCompleter;

.field private suppressFlush:Z

.field syms:Lcom/sun/tools/javac/code/Symtab;

.field types:Lcom/sun/tools/javac/code/Types;

.field protected typevars:Lcom/sun/tools/javac/code/Scope;

.field verbose:Z

.field private verbosePath:Z

.field warnedAttrs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassReader;->classReaderKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;Z)V
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->readAllOfClassFile:Z

    .line 184
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sourceCompleter:Lcom/sun/tools/javac/jvm/ClassReader$SourceCompleter;

    .line 205
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 210
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    .line 215
    const v0, 0xfff0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    .line 256
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->warnedAttrs:Ljava/util/Set;

    .line 642
    iput-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    .line 750
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    .line 751
    iput v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    .line 1001
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->CLASS:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    .line 1002
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    .line 1003
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->MEMBER:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    .line 1004
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->MEMBER_ATTRIBUTE:Ljava/util/Set;

    .line 1005
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->CLASS:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    sget-object v2, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->MEMBER:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    .line 1006
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->attributeReaders:Ljava/util/Map;

    .line 1362
    iput-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->readingClassAttr:Z

    .line 1363
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 1364
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->foundTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2242
    iput-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->suppressFlush:Z

    .line 2305
    iput-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->filling:Z

    .line 2436
    new-instance v2, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    move-object v0, v1

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-direct {v2, v1, v0}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;-><init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)V

    iput-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->cachedCompletionFailure:Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    .line 2440
    new-array v0, v3, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 2573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->verbosePath:Z

    .line 302
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sun/tools/javac/jvm/ClassReader;->classReaderKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 304
    :cond_0
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    .line 305
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 306
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    .line 307
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->fileManager:Ljavax/tools/JavaFileManager;

    .line 308
    if-eqz v0, :cond_2

    .line 310
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->diagFactory:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 312
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/jvm/ClassReader;->init(Lcom/sun/tools/javac/code/Symtab;Z)V

    .line 313
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    .line 315
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    .line 316
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Annotate;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Annotate;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    .line 317
    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->verbose:Z

    .line 318
    const-string v2, "-checkclassfile"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->checkClassFile:Z

    .line 319
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Source;->allowGenerics()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->allowGenerics:Z

    .line 321
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Source;->allowVarargs()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->allowVarargs:Z

    .line 322
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Source;->allowAnnotations()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->allowAnnotations:Z

    .line 323
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Source;->allowSimplifiedVarargs()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->allowSimplifiedVarargs:Z

    .line 324
    const-string v2, "save-parameter-names"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    .line 325
    const-string v2, "dev"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isUnset(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->cacheCompletionFailure:Z

    .line 326
    const-string v2, "source"

    const-string v3, "-Xprefer"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->preferSource:Z

    .line 328
    const-string v2, "failcomplete"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    const-string v2, "failcomplete"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 331
    :cond_1
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->completionFailureName:Lcom/sun/tools/javac/util/Name;

    .line 333
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    .line 335
    invoke-static {p1}, Lcom/sun/tools/javac/code/Lint;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->CLASSFILE:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->lintClassfile:Z

    .line 337
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->initAttributeReaders()V

    .line 338
    return-void

    .line 309
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FileManager initialization error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/jvm/ClassReader;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/jvm/ClassReader;->createBadClassFileDiagnostic(Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/sun/tools/javac/jvm/ClassReader;Z)Z
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->readingClassAttr:Z

    return p1
.end method

.method private adjustMethodParams(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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

    .line 1871
    const-wide v0, 0x400000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1872
    :goto_0
    if-eqz v0, :cond_3

    .line 1873
    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1874
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v2

    .line 1875
    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 1876
    if-eq v1, v0, :cond_1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 1871
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1878
    :cond_1
    check-cast v1, Lcom/sun/tools/javac/code/Type$ArrayType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type$ArrayType;->makeVarargs()Lcom/sun/tools/javac/code/Type$ArrayType;

    move-result-object v1

    goto :goto_2

    .line 1880
    :cond_2
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object p3

    .line 1882
    :cond_3
    iget-object v0, p3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method private completeEnclosing(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 6

    .line 2288
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2289
    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 2290
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Convert;->shortName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Convert;->enclosingCandidates(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Name;

    .line 2291
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2292
    if-nez v1, :cond_2

    .line 2293
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->formFlatName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 2294
    :goto_1
    if-eqz v0, :cond_0

    .line 2295
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->complete()V

    goto :goto_0

    .line 2298
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private completeOwners(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    .line 2277
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->completeOwners(Lcom/sun/tools/javac/code/Symbol;)V

    .line 2278
    :cond_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->complete()V

    .line 2279
    return-void
.end method

.method private createBadClassFileDiagnostic(Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 7

    .line 363
    invoke-interface {p1}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    sget-object v1, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    if-ne v0, v1, :cond_0

    .line 364
    const-string v0, "bad.source.file.header"

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->diagFactory:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    const-string v0, "bad.class.file.header"

    goto :goto_0
.end method

.method private static ensureCapacity([BI)[B
    .registers 5

    const/4 v2, 0x0

    .line 2408
    array-length v0, p0

    if-gt v0, p1, :cond_0

    .line 2409
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 2411
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 2413
    :cond_0
    return-object p0
.end method

.method private enterMember(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 7

    .line 344
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide v2, 0x80001000L    # 1.060999919E-314

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 346
    :cond_0
    return-void
.end method

.method private fillIn(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2312
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->completionFailureName:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_7

    .line 2315
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    .line 2316
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->warnedAttrs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2317
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    .line 2318
    if-eqz v0, :cond_6

    .line 2319
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 2321
    :try_start_0
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->filling:Z

    if-eqz v2, :cond_0

    .line 2322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->toUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " during "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 2324
    :cond_0
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 2325
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->verbose:Z

    if-eqz v2, :cond_1

    .line 2326
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "loading"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2328
    :cond_1
    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v2

    sget-object v3, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    if-ne v2, v3, :cond_4

    .line 2329
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->filling:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2331
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 2332
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readInputStream([BLjava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    .line 2333
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassFile(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 2334
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->foundTypeVariables:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2335
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2336
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->foundTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2337
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2338
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->foundTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->filling:Z

    .line 2340
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 2341
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 2342
    invoke-virtual {v4, v5, v2, v3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 2343
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 2344
    invoke-virtual {v4, v5, v2, v3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2351
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2352
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->foundTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->filling:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2367
    :goto_0
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 2363
    return-void

    .line 2345
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->foundTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2346
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 2347
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 2348
    const-string v2, "undecl.type.var"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2351
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2352
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->foundTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 2353
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->filling:Z

    .line 2354
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2364
    :catch_0
    move-exception v0

    .line 2365
    :try_start_5
    const-string v2, "unable.to.access.file"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2367
    :catchall_1
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 2368
    throw v0

    .line 2356
    :cond_4
    :try_start_6
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sourceCompleter:Lcom/sun/tools/javac/jvm/ClassReader$SourceCompleter;

    if-eqz v2, :cond_5

    .line 2357
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sourceCompleter:Lcom/sun/tools/javac/jvm/ClassReader$SourceCompleter;

    invoke-interface {v0, p1}, Lcom/sun/tools/javac/jvm/ClassReader$SourceCompleter;->complete(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_0

    .line 2359
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source completer required to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2370
    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->diagFactory:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 2371
    const-string v2, "class.file.not.found"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 2372
    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->newCompletionFailure(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    move-result-object v0

    throw v0

    .line 2313
    :cond_7
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    const-string v1, "user-selected completion failure by class name"

    invoke-direct {v0, p1, v1}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;-><init>(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/String;)V

    throw v0
.end method

.method private fillIn(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2579
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 2580
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2582
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->getPackageFileKinds()Ljava/util/EnumSet;

    move-result-object v4

    .line 2584
    sget-object v0, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->fileManager:Ljavax/tools/JavaFileManager;

    sget-object v2, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    sget-object v5, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    .line 2587
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 2585
    invoke-interface {v1, v2, v3, v5, v12}, Ljavax/tools/JavaFileManager;->list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v1

    .line 2584
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->fillIn(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 2590
    invoke-static {v4}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v5

    .line 2591
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2592
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 2594
    invoke-static {v4}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v7

    .line 2595
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2596
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    .line 2598
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->fileManager:Ljavax/tools/JavaFileManager;

    sget-object v1, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v0, v1}, Ljavax/tools/JavaFileManager;->hasLocation(Ljavax/tools/JavaFileManager$Location;)Z

    move-result v9

    .line 2600
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->verbose:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->verbosePath:Z

    if-eqz v0, :cond_7

    .line 2601
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->fileManager:Ljavax/tools/JavaFileManager;

    instance-of v1, v0, Ljavax/tools/StandardJavaFileManager;

    if-eqz v1, :cond_7

    .line 2602
    check-cast v0, Ljavax/tools/StandardJavaFileManager;

    .line 2603
    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    .line 2604
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2605
    sget-object v2, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v0, v2}, Ljavax/tools/StandardJavaFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v2, v1

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2606
    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v2, v1

    .line 2607
    goto :goto_0

    .line 2608
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    const-string v10, "sourcepath"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-virtual {v1, v10, v11}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2609
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 2617
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2618
    sget-object v2, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v0, v2}, Ljavax/tools/StandardJavaFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v2, v1

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2619
    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v2, v1

    .line 2620
    goto :goto_2

    .line 2609
    :cond_3
    if-eqz v8, :cond_2

    .line 2610
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2611
    sget-object v2, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v0, v2}, Ljavax/tools/StandardJavaFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v2, v1

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2612
    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v2, v1

    .line 2613
    goto :goto_3

    .line 2614
    :cond_4
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    const-string v10, "sourcepath"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-virtual {v1, v10, v11}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2621
    :cond_5
    sget-object v1, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v0, v1}, Ljavax/tools/StandardJavaFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2622
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto :goto_4

    .line 2624
    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "classpath"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v12

    invoke-virtual {v0, v1, v10}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2629
    :cond_7
    if-eqz v8, :cond_9

    if-nez v9, :cond_9

    .line 2630
    sget-object v0, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->fileManager:Ljavax/tools/JavaFileManager;

    sget-object v2, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    .line 2631
    invoke-interface {v1, v2, v3, v4, v12}, Ljavax/tools/JavaFileManager;->list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v1

    .line 2630
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->fillIn(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 2649
    :cond_8
    :goto_5
    iput-boolean v12, p0, Lcom/sun/tools/javac/jvm/ClassReader;->verbosePath:Z

    .line 2650
    return-void

    .line 2636
    :cond_9
    if-eqz v6, :cond_a

    .line 2637
    sget-object v0, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->fileManager:Ljavax/tools/JavaFileManager;

    sget-object v2, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    .line 2638
    invoke-interface {v1, v2, v3, v5, v12}, Ljavax/tools/JavaFileManager;->list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v1

    .line 2637
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->fillIn(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 2642
    :cond_a
    if-eqz v8, :cond_8

    .line 2643
    sget-object v0, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->fileManager:Ljavax/tools/JavaFileManager;

    sget-object v2, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    .line 2644
    invoke-interface {v1, v2, v3, v7, v12}, Ljavax/tools/JavaFileManager;->list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v1

    .line 2643
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->fillIn(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    goto :goto_5
.end method

.method private fillIn(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            "Ljavax/tools/JavaFileManager$Location;",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 2656
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentLoc:Ljavax/tools/JavaFileManager$Location;

    .line 2657
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 2658
    sget-object v2, Lcom/sun/tools/javac/jvm/ClassReader$21;->$SwitchMap$javax$tools$JavaFileObject$Kind:[I

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/tools/JavaFileObject$Kind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 2670
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->extraFileActions(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljavax/tools/JavaFileObject;)V

    goto :goto_0

    .line 2662
    :cond_1
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->fileManager:Ljavax/tools/JavaFileManager;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentLoc:Ljavax/tools/JavaFileManager$Location;

    invoke-interface {v2, v3, v0}, Ljavax/tools/JavaFileManager;->inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v2

    .line 2663
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2664
    invoke-static {v2}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2665
    const-string v3, "package-info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2666
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->includeClassFile(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljavax/tools/JavaFileObject;)V

    goto :goto_0

    .line 2673
    :cond_3
    return-void
.end method

.method private findMethod(Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;Lcom/sun/tools/javac/code/Scope;J)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 12

    const/4 v1, 0x0

    .line 1287
    if-nez p1, :cond_0

    move-object v0, v1

    .line 1313
    :goto_0
    return-object v0

    .line 1290
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->asMethodType()Lcom/sun/tools/javac/code/Type$MethodType;

    move-result-object v2

    .line 1292
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    :goto_1
    iget-object v3, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v3, :cond_2

    .line 1293
    iget-object v3, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v3, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->asMethodType()Lcom/sun/tools/javac/code/Type$MethodType;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->isSameBinaryType(Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Type$MethodType;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1294
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_0

    .line 1292
    :cond_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_1

    .line 1296
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v2, :cond_3

    move-object v0, v1

    .line 1298
    goto :goto_0

    .line 1299
    :cond_3
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 1301
    goto :goto_0

    .line 1302
    :cond_4
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 1304
    goto :goto_0

    .line 1308
    :cond_5
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    .line 1309
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    .line 1310
    new-instance v3, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v3, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    .line 1313
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader;->findMethod(Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;Lcom/sun/tools/javac/code/Scope;J)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    goto :goto_0
.end method

.method private init(Lcom/sun/tools/javac/code/Symtab;Z)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 282
    :cond_0
    if-eqz p2, :cond_5

    .line 283
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->packages:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    if-ne v0, v3, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 284
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->packages:Ljava/util/Map;

    .line 285
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 286
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    .line 292
    :goto_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->packages:Ljava/util/Map;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object p0, v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 294
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symtab;->unnamedPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object p0, v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 283
    goto :goto_1

    .line 288
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->packages:Ljava/util/Map;

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    goto :goto_2
.end method

.method private initAttributeReaders()V
    .registers 8

    const/4 v0, 0x0

    .line 1011
    const/16 v1, 0x13

    new-array v1, v1, [Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;

    new-instance v2, Lcom/sun/tools/javac/jvm/ClassReader$2;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->Code:Lcom/sun/tools/javac/util/Name;

    sget-object v4, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassReader;->MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/sun/tools/javac/jvm/ClassReader$2;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$3;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->ConstantValue:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$3;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$4;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->Deprecated:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$4;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$5;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->Exceptions:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$5;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$6;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->InnerClasses:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$6;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$7;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->LocalVariableTable:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$7;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$8;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->SourceFile:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$8;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$9;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->Synthetic:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$9;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$10;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->EnclosingMethod:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$10;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$11;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->Signature:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$11;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$12;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->AnnotationDefault:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$12;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$13;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->RuntimeInvisibleAnnotations:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$13;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$14;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->RuntimeInvisibleParameterAnnotations:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$14;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$15;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->RuntimeVisibleAnnotations:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$15;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$16;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->RuntimeVisibleParameterAnnotations:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$16;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$17;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->Annotation:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$17;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$18;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->Bridge:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$18;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$19;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->Enum:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$19;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$20;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->Varargs:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->CLASS_OR_MEMBER_ATTRIBUTE:Ljava/util/Set;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sun/tools/javac/jvm/ClassReader$20;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    aput-object v3, v1, v2

    .line 1219
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1220
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->attributeReaders:Ljava/util/Map;

    iget-object v5, v3, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->name:Lcom/sun/tools/javac/util/Name;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1221
    :cond_0
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;
    .registers 3

    .line 262
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassReader;->classReaderKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/ClassReader;

    .line 263
    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassReader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;-><init>(Lcom/sun/tools/javac/util/Context;Z)V

    .line 265
    :cond_0
    return-object v0
.end method

.method private static isAsciiDigit(C)Z
    .registers 2

    .line 1337
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameBinaryType(Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Type$MethodType;)Z
    .registers 8

    const/4 v3, 0x0

    .line 1320
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$MethodType;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    .line 1321
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$MethodType;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1322
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type$MethodType;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type$MethodType;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object v1, v0

    .line 1323
    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1324
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v4, v0, :cond_0

    .line 1329
    :goto_1
    return v3

    .line 1326
    :cond_0
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1327
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_0

    .line 1329
    :cond_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method private newCompletionFailure(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
    .registers 4

    .line 2423
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->cacheCompletionFailure:Z

    if-nez v0, :cond_0

    .line 2427
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;-><init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 2432
    :goto_0
    return-object v0

    .line 2429
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->cachedCompletionFailure:Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    .line 2430
    iput-object p1, v0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2431
    iput-object p2, v0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->diag:Lcom/sun/tools/javac/util/JCDiagnostic;

    goto :goto_0
.end method

.method private printCCF(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 2682
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/util/Log;->printNoteLines(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2683
    return-void
.end method

.method private readClassFile(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2102
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextInt()I

    move-result v0

    .line 2103
    const v1, -0x35014542    # -8346975.0f

    if-ne v0, v1, :cond_5

    .line 2106
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->minorVersion:I

    .line 2107
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->majorVersion:I

    .line 2108
    invoke-static {}, Lcom/sun/tools/javac/jvm/Target;->MAX()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/jvm/Target;->majorVersion:I

    .line 2109
    invoke-static {}, Lcom/sun/tools/javac/jvm/Target;->MAX()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v1

    iget v1, v1, Lcom/sun/tools/javac/jvm/Target;->minorVersion:I

    .line 2110
    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->majorVersion:I

    if-gt v2, v0, :cond_0

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->minorVersion:I

    .line 2112
    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v3

    invoke-static {}, Lcom/sun/tools/javac/jvm/Target;->MIN()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v3

    iget v3, v3, Lcom/sun/tools/javac/jvm/Target;->majorVersion:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {}, Lcom/sun/tools/javac/jvm/Target;->MIN()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v4

    iget v4, v4, Lcom/sun/tools/javac/jvm/Target;->minorVersion:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 2113
    :cond_0
    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->majorVersion:I

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_4

    .line 2114
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 2116
    const-string v4, "big.major.version"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v1, v4, v5}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2130
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->indexPool()V

    .line 2131
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    if-ge v0, v1, :cond_2

    .line 2132
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 2133
    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    .line 2135
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 2136
    return-void

    .line 2124
    :cond_3
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->checkClassFile:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->majorVersion:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->minorVersion:I

    if-le v0, v1, :cond_1

    .line 2127
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "found.later.version"

    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->printCCF(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2119
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->minorVersion:I

    .line 2121
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2122
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2123
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2119
    const-string v4, "wrong.version"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0

    .line 2104
    :cond_5
    const-string v0, "illegal.start.of.class.file"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0
.end method

.method private static readInputStream([BLjava/io/InputStream;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2380
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->ensureCapacity([BI)[B

    move-result-object v2

    .line 2381
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 2382
    const/4 v0, 0x0

    .line 2383
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2384
    add-int/2addr v0, v1

    .line 2385
    invoke-static {v2, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->ensureCapacity([BI)[B

    move-result-object v2

    .line 2386
    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    .line 2388
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v2

    .line 2390
    :catchall_0
    move-exception v0

    .line 2391
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2398
    :goto_2
    throw v0

    .line 2392
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private simpleBinaryName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1276
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1277
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    .line 1280
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1281
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sun/tools/javac/jvm/ClassReader;->isAsciiDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1283
    :cond_0
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0

    .line 1278
    :cond_1
    const-string v1, "bad.enclosing.method"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method adjustClassFlags(J)J
    .registers 6

    .line 2161
    const-wide/16 v0, -0x21

    and-long/2addr v0, p1

    return-wide v0
.end method

.method adjustFieldFlags(J)J
    .registers 4

    .line 2143
    return-wide p1
.end method

.method adjustMethodFlags(J)J
    .registers 10

    const-wide/16 v4, 0x0

    .line 2147
    const-wide/16 v0, 0x40

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 2148
    const-wide/16 v0, -0x41

    and-long/2addr v0, p1

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    .line 2150
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->allowGenerics:Z

    if-nez v2, :cond_0

    .line 2151
    const-wide/16 v2, -0x1001

    and-long/2addr v0, v2

    .line 2153
    :cond_0
    :goto_0
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 2154
    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long/2addr v0, v2

    .line 2157
    :cond_1
    return-wide v0

    :cond_2
    move-wide v0, p1

    goto :goto_0
.end method

.method attachAnnotationDefault(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 1436
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1437
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->readAttributeValue()Lcom/sun/tools/javac/code/Attribute;

    move-result-object v0

    .line 1438
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    new-instance v2, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;

    invoke-direct {v2, p0, p1, v0}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Attribute;)V

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/comp/Annotate;->later(Lcom/sun/tools/javac/comp/Annotate$Annotator;)V

    .line 1439
    return-void
.end method

.method attachAnnotations(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 10

    .line 1395
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    .line 1396
    if-eqz v1, :cond_3

    .line 1397
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1399
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1400
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->readCompoundAnnotation()Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    move-result-object v3

    .line 1401
    iget-object v4, v3, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->proprietaryType:Lcom/sun/tools/javac/code/Type;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v4, v5, :cond_1

    .line 1402
    iget-wide v4, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide v6, 0x4000000000L

    or-long/2addr v4, v6

    iput-wide v4, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 1405
    :goto_1
    iget v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->majorVersion:I

    sget-object v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V51:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget v5, v5, Lcom/sun/tools/javac/jvm/ClassFile$Version;->major:I

    if-lt v4, v5, :cond_0

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->polymorphicSignatureType:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v3, v4, :cond_0

    .line 1407
    iget-wide v4, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide v6, 0x10000000000L

    or-long/2addr v4, v6

    iput-wide v4, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 1399
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1404
    :cond_1
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 1410
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    new-instance v1, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Annotate;->later(Lcom/sun/tools/javac/comp/Annotate$Annotator;)V

    .line 1412
    :cond_3
    return-void
.end method

.method attachParameterAnnotations(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 7

    const/4 v2, 0x0

    .line 1418
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1419
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v4, v0, v1

    .line 1420
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 1422
    :goto_0
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->attachAnnotations(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1424
    iget-object v3, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1425
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1427
    :cond_0
    and-int/lit16 v0, v4, 0xff

    if-ne v1, v0, :cond_1

    .line 1430
    return-void

    .line 1428
    :cond_1
    const-string v0, "bad.runtime.invisible.param.annotations"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0
.end method

.method public varargs badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;
    .registers 7

    .line 369
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    .line 370
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->diagFactory:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 372
    new-instance v3, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    invoke-virtual {v2, p1, p2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v2

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 369
    return-object v3
.end method

.method classSigToType()Lcom/sun/tools/javac/code/Type;
    .registers 10

    const/16 v8, 0x3b

    const/16 v7, 0x24

    const/16 v6, 0x2e

    .line 757
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v2, v0, v1

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_8

    .line 760
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 761
    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    .line 762
    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    .line 765
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v1, v1, v3

    .line 766
    if-eq v1, v6, :cond_7

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_6

    if-eq v1, v8, :cond_4

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_0

    .line 850
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v1, v3, v4

    goto :goto_0

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Lcom/sun/tools/javac/util/Names;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    .line 784
    new-instance v1, Lcom/sun/tools/javac/jvm/ClassReader$1;

    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToTypes(C)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-direct {v1, p0, v0, v4, v3}, Lcom/sun/tools/javac/jvm/ClassReader$1;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 818
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v3, v0, v3

    if-eq v3, v6, :cond_3

    if-ne v3, v8, :cond_2

    .line 820
    array-length v3, v0

    if-ge v4, v3, :cond_1

    aget-byte v0, v0, v4

    if-ne v0, v6, :cond_1

    .line 827
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 829
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v7, v3, v0

    move-object v0, v1

    .line 830
    goto :goto_0

    .line 832
    :cond_1
    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    .line 833
    :goto_1
    return-object v1

    .line 839
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v7, v0, v3

    move-object v0, v1

    .line 837
    goto :goto_0

    .line 769
    :cond_4
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Lcom/sun/tools/javac/util/Names;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    .line 772
    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    if-ne v0, v1, :cond_5

    .line 773
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 776
    :goto_2
    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    move-object v1, v0

    .line 777
    goto :goto_1

    .line 775
    :cond_5
    new-instance v1, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-direct {v1, v0, v4, v3}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v0, v1

    goto :goto_2

    .line 847
    :cond_6
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v6, v1, v3

    goto/16 :goto_0

    .line 844
    :cond_7
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signatureBuffer:[B

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sbp:I

    aput-byte v7, v1, v3

    goto/16 :goto_0

    .line 758
    :cond_8
    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/util/Convert;->utf2string([BII)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad.class.signature"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0
.end method

.method public complete(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    const/4 v2, 0x1

    .line 2249
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2250
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2251
    new-instance v0, Lcom/sun/tools/javac/code/Scope$ErrorScope;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Scope$ErrorScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 2252
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->suppressFlush:Z

    .line 2253
    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->suppressFlush:Z

    .line 2255
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->completeOwners(Lcom/sun/tools/javac/code/Symbol;)V

    .line 2256
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->completeEnclosing(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2258
    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->suppressFlush:Z

    .line 2259
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->fillIn(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 2261
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->filling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->suppressFlush:Z

    if-nez v0, :cond_1

    .line 2270
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Annotate;->flush()V

    .line 2271
    :cond_1
    return-void

    .line 2258
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->suppressFlush:Z

    .line 2259
    throw v0

    .line 2261
    :cond_2
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v0, v2, :cond_0

    move-object v0, p1

    .line 2262
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 2264
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->fillIn(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2265
    :catch_0
    move-exception v0

    .line 2266
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;-><init>(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->initCause(Ljava/lang/Throwable;)Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    move-result-object v0

    throw v0
.end method

.method public defineClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 7

    .line 2172
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2173
    iget v1, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2174
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sun/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2175
    :cond_0
    iput-object p0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 2176
    return-object v0
.end method

.method public enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 3

    .line 2235
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2236
    if-nez v0, :cond_0

    .line 2237
    const/4 v0, 0x0

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 2239
    :cond_0
    return-object v0
.end method

.method public enterClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 6

    .line 2184
    invoke-static {p1, p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->formFlatName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 2185
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2186
    if-nez v0, :cond_1

    .line 2187
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/jvm/ClassReader;->defineClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 2188
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    :cond_0
    :goto_0
    return-object v0

    .line 2189
    :cond_1
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v1, p2, :cond_0

    :cond_2
    iget v1, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2192
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Scope;->remove(Lcom/sun/tools/javac/code/Symbol;)V

    .line 2193
    iput-object p1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 2194
    iput-object p2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 2195
    invoke-static {p1, p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->formFullName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    goto :goto_0
.end method

.method public enterClass(Lcom/sun/tools/javac/util/Name;Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 8

    .line 2211
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2212
    if-nez v0, :cond_1

    .line 2220
    invoke-static {p1}, Lcom/sun/tools/javac/util/Convert;->packagePart(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 2221
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->unnamedPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 2224
    :goto_0
    invoke-static {p1}, Lcom/sun/tools/javac/util/Convert;->shortName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->defineClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 2225
    iput-object p2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    .line 2226
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    return-object v0

    .line 2223
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    goto :goto_0

    .line 2213
    :cond_1
    const-string v1, "%s: completer = %s; class file = %s; source file = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Log;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2218
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    .registers 5

    .line 2476
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->packages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 2477
    if-nez v0, :cond_0

    .line 2478
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "rootPackage missing!"

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    .line 2479
    invoke-static {p1}, Lcom/sun/tools/javac/util/Convert;->shortName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 2481
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-static {p1}, Lcom/sun/tools/javac/util/Convert;->packagePart(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2482
    iput-object p0, v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 2483
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->packages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    :cond_0
    return-object v0
.end method

.method public enterPackage(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    .registers 4

    .line 2492
    invoke-static {p1, p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->formFullName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    return-object v0
.end method

.method protected enterTypevars(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    .line 1996
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1997
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterTypevars(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1998
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterTypevars(Lcom/sun/tools/javac/code/Symbol;)V

    .line 2000
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterTypevars(Lcom/sun/tools/javac/code/Type;)V

    .line 2001
    return-void
.end method

.method protected enterTypevars(Lcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 1989
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1990
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterTypevars(Lcom/sun/tools/javac/code/Type;)V

    .line 1991
    :cond_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1991
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_0

    .line 1993
    :cond_1
    return-void
.end method

.method protected extraFileActions(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljavax/tools/JavaFileObject;)V
    .registers 3

    .line 2569
    return-void
.end method

.method findTypeVar(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 934
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 935
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_0

    .line 936
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 952
    :goto_0
    return-object v0

    .line 938
    :cond_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->readingClassAttr:Z

    if-eqz v0, :cond_1

    .line 949
    new-instance v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, p1, v1, v2}, Lcom/sun/tools/javac/code/Type$TypeVar;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V

    .line 950
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 954
    :cond_1
    const-string v0, "undecl.type.var"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0
.end method

.method getChar(I)C
    .registers 5

    .line 408
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method getDouble(I)D
    .registers 6

    .line 454
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    const/16 v3, 0x8

    invoke-direct {v1, v2, p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 457
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getFloat(I)F
    .registers 6

    .line 441
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    const/4 v3, 0x4

    invoke-direct {v1, v2, p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 444
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getInt(I)I
    .registers 5

    .line 416
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method getLong(I)J
    .registers 6

    .line 428
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    const/16 v3, 0x8

    invoke-direct {v1, v2, p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 431
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected getPackageFileKinds()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Ljavax/tools/JavaFileObject$Kind;",
            ">;"
        }
    .end annotation

    .line 2562
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    sget-object v1, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected includeClassFile(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljavax/tools/JavaFileObject;)V
    .registers 13

    const-wide/32 v8, 0x800000

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    .line 2502
    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->flags_field:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    move-object v0, p1

    .line 2503
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v1, v2, :cond_0

    .line 2504
    iget-wide v4, v0, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v4, v8

    iput-wide v4, v0, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 2503
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0

    .line 2505
    :cond_0
    invoke-interface {p2}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    .line 2507
    sget-object v1, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    if-ne v0, v1, :cond_3

    .line 2508
    const/high16 v0, 0x2000000

    move v1, v0

    .line 2511
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->fileManager:Ljavax/tools/JavaFileManager;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentLoc:Ljavax/tools/JavaFileManager$Location;

    invoke-interface {v0, v3, p2}, Ljavax/tools/JavaFileManager;->inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v0

    .line 2512
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 2513
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    .line 2514
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->package_info:Lcom/sun/tools/javac/util/Name;

    if-ne v3, v0, :cond_4

    .line 2515
    :goto_2
    if-eqz v2, :cond_5

    .line 2516
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2518
    :goto_3
    if-nez v0, :cond_7

    .line 2519
    invoke-virtual {p0, v3, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 2520
    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    if-nez v3, :cond_1

    .line 2521
    iput-object p2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    .line 2522
    :cond_1
    if-eqz v2, :cond_6

    .line 2523
    iput-object v0, p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2536
    :cond_2
    :goto_4
    iget-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    int-to-long v4, v1

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 2537
    return-void

    .line 2510
    :cond_3
    const/high16 v0, 0x4000000

    move v1, v0

    goto :goto_1

    .line 2514
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2

    .line 2517
    :cond_5
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_3

    .line 2525
    :cond_6
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v2, p1, :cond_2

    .line 2526
    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    goto :goto_4

    .line 2528
    :cond_7
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    int-to-long v4, v1

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 2533
    iget-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v4, 0x6000000

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 2534
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    invoke-virtual {p0, p2, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->preferredFileObject(Ljavax/tools/JavaFileObject;Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    goto :goto_4
.end method

.method indexPool()V
    .registers 7

    const/4 v1, 0x1

    .line 472
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolIdx:[I

    .line 473
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    move v0, v1

    .line 475
    :goto_0
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolIdx:[I

    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 476
    add-int/lit8 v2, v0, 0x1

    iget v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    aput v4, v3, v0

    .line 477
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v0, v0, v4

    .line 478
    packed-switch v0, :pswitch_data_0

    .line 508
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 510
    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 508
    const-string v3, "bad.const.pool.tag.at"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0

    .line 491
    :pswitch_1
    add-int/lit8 v0, v3, 0x3

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    :goto_1
    move v0, v2

    .line 483
    goto :goto_0

    .line 488
    :pswitch_2
    add-int/lit8 v0, v3, 0x2

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    goto :goto_1

    .line 504
    :pswitch_3
    add-int/lit8 v0, v3, 0x8

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 505
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 500
    :pswitch_4
    add-int/lit8 v0, v3, 0x4

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    goto :goto_1

    .line 481
    :pswitch_5
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    .line 482
    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    goto :goto_1

    .line 513
    :cond_0
    return-void

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public init(Lcom/sun/tools/javac/code/Symtab;)V
    .registers 3

    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->init(Lcom/sun/tools/javac/code/Symtab;Z)V

    .line 273
    return-void
.end method

.method initParameterNames(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 6

    const/4 v3, 0x0

    .line 1897
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1899
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/util/List;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 1900
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 1902
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    .line 1905
    :goto_0
    iput-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->haveParameterNameIndices:Z

    .line 1906
    return-void

    .line 1904
    :cond_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0
.end method

.method public loadClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    .line 2448
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2449
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    .line 2450
    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v2, :cond_0

    .line 2452
    :try_start_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 2458
    :cond_0
    return-object v1

    .line 2448
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2453
    :catch_0
    move-exception v1

    .line 2454
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    :cond_2
    throw v1
.end method

.method nextByte()B
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v0, v0, v1

    return v0
.end method

.method nextChar()C
    .registers 5

    .line 383
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v1, v0, v1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method nextInt()I
    .registers 7

    .line 397
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v1, v0, v1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v2, v0, v2

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v3, v0, v3

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public packageExists(Lcom/sun/tools/javac/util/Name;)Z
    .registers 3

    .line 2469
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result v0

    return v0
.end method

.method protected preferredFileObject(Ljavax/tools/JavaFileObject;Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    .registers 7

    .line 2547
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->preferSource:Z

    if-eqz v0, :cond_2

    .line 2548
    invoke-interface {p1}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    sget-object v1, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    if-ne v0, v1, :cond_1

    .line 2554
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    move-object p1, p2

    .line 2548
    goto :goto_0

    .line 2550
    :cond_2
    invoke-interface {p1}, Ljavax/tools/JavaFileObject;->getLastModified()J

    move-result-wide v0

    .line 2551
    invoke-interface {p2}, Ljavax/tools/JavaFileObject;->getLastModified()J

    move-result-wide v2

    .line 2554
    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move-object p1, p2

    goto :goto_0
.end method

.method readAttributeValue()Lcom/sun/tools/javac/code/Attribute;
    .registers 5

    .line 1471
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    .line 1472
    const/16 v1, 0x40

    if-eq v0, v1, :cond_a

    const/16 v1, 0x46

    if-eq v0, v1, :cond_9

    const/16 v1, 0x53

    if-eq v0, v1, :cond_8

    const/16 v1, 0x63

    if-eq v0, v1, :cond_7

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    const/16 v1, 0x73

    if-eq v0, v1, :cond_5

    const/16 v1, 0x49

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown annotation tag \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1478
    :pswitch_0
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    .line 1503
    :goto_0
    return-object v0

    .line 1476
    :pswitch_1
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto :goto_0

    .line 1474
    :pswitch_2
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto :goto_0

    .line 1496
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    .line 1497
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1498
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1499
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->readAttributeValue()Lcom/sun/tools/javac/code/Attribute;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1498
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1500
    :cond_1
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;-><init>(Lcom/sun/tools/javac/util/List;)V

    goto :goto_0

    .line 1488
    :cond_2
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto :goto_0

    .line 1484
    :cond_3
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto :goto_0

    .line 1482
    :cond_4
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto :goto_0

    .line 1490
    :cond_5
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1492
    :cond_6
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readEnumType(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;)V

    goto/16 :goto_0

    .line 1494
    :cond_7
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Class;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readTypeOrClassSymbol(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Class;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 1486
    :cond_8
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1480
    :cond_9
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1503
    :cond_a
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->readCompoundAnnotation()Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    move-result-object v0

    goto/16 :goto_0

    .line 1472
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readAttrs(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;)V
    .registers 9

    .line 1348
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    .line 1349
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1350
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    .line 1351
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextInt()I

    move-result v4

    .line 1352
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->attributeReaders:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;

    .line 1353
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->accepts(Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1354
    invoke-virtual {v0, p1, v4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->read(Lcom/sun/tools/javac/code/Symbol;I)V

    .line 1349
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1356
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/jvm/ClassReader;->unrecognized(Lcom/sun/tools/javac/util/Name;)V

    .line 1357
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    goto :goto_1

    .line 1360
    :cond_1
    return-void
.end method

.method readClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2008
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 2011
    new-instance v1, Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v1, p1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 2014
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/code/Scope;->dup(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    .line 2015
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 2016
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterTypevars(Lcom/sun/tools/javac/code/Type;)V

    .line 2019
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/sun/tools/javac/jvm/ClassReader;->adjustClassFlags(J)J

    move-result-wide v4

    .line 2020
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v1, v2, :cond_1

    iput-wide v4, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 2023
    :cond_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    .line 2024
    if-ne p1, v1, :cond_e

    .line 2030
    iget v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 2031
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    .line 2032
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    .line 2033
    iget v5, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    iput v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 2034
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v5

    move v1, v3

    .line 2035
    :goto_0
    if-ge v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->skipMember()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2036
    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v6

    move v1, v3

    .line 2037
    :goto_1
    if-ge v1, v6, :cond_3

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->skipMember()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2038
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassAttrs(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 2040
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->readAllOfClassFile:Z

    if-eqz v1, :cond_5

    move v1, v2

    .line 2041
    :goto_2
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v1, v7, :cond_4

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2042
    :cond_4
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    new-instance v7, Lcom/sun/tools/javac/jvm/Pool;

    array-length v8, v1

    invoke-direct {v7, v8, v1}, Lcom/sun/tools/javac/jvm/Pool;-><init>(I[Ljava/lang/Object;)V

    iput-object v7, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    .line 2046
    :cond_5
    iput v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 2047
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    .line 2048
    iget-object v4, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    if-nez v4, :cond_6

    .line 2049
    if-nez v1, :cond_7

    .line 2050
    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    .line 2051
    :goto_3
    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 2052
    :cond_6
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v7

    .line 2053
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move v4, v3

    .line 2054
    :goto_4
    if-ge v4, v7, :cond_8

    .line 2055
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v8

    iget-object v9, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v8, v9}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v8

    .line 2056
    invoke-virtual {v1, v8}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2054
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2051
    :cond_7
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    goto :goto_3

    .line 2058
    :cond_8
    iget-object v4, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    if-nez v4, :cond_9

    .line 2059
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 2061
    :cond_9
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    if-ne v5, v0, :cond_a

    move v0, v2

    :goto_5
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    move v0, v3

    .line 2062
    :goto_6
    if-ge v0, v5, :cond_b

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->readField()Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterMember(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move v0, v3

    .line 2061
    goto :goto_5

    .line 2063
    :cond_b
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    if-ne v6, v0, :cond_c

    :goto_7
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 2064
    :goto_8
    if-ge v3, v6, :cond_d

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->readMethod()Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterMember(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    move v2, v3

    .line 2063
    goto :goto_7

    .line 2066
    :cond_d
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    .line 2067
    return-void

    .line 2025
    :cond_e
    const-string v0, "class.file.wrong.class"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0
.end method

.method readClassAttrs(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 3

    .line 1370
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->CLASS:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readAttrs(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;)V

    .line 1371
    return-void
.end method

.method readClassOrType(I)Ljava/lang/Object;
    .registers 8

    const/16 v5, 0x5b

    const/16 v4, 0x3b

    .line 597
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v0, v0, p1

    .line 598
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    .line 599
    add-int/lit8 v2, v0, 0x3

    .line 600
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v3, v0, v2

    if-eq v3, v5, :cond_0

    add-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v0, v3

    if-eq v0, v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 603
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v3, v0, v2

    if-eq v3, v5, :cond_1

    add-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    if-ne v3, v4, :cond_3

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType([BII)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 603
    :goto_1
    return-object v0

    .line 600
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 605
    :cond_3
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    invoke-static {v0, v2, v1}, Lcom/sun/tools/javac/jvm/ClassFile;->internalize([BII)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Names;->fromUtf([B)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    goto :goto_1
.end method

.method readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 3

    .line 621
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    return-object v0
.end method

.method readCode(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/Code;
    .registers 4

    .line 1377
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    .line 1378
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    .line 1379
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextInt()I

    move-result v0

    .line 1380
    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1381
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    .line 1382
    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1383
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readMemberAttrs(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1384
    const/4 v0, 0x0

    return-object v0
.end method

.method readCompoundAnnotation()Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;
    .registers 8

    .line 1458
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readTypeOrClassSymbol(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1459
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    .line 1460
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1462
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1463
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 1464
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->readAttributeValue()Lcom/sun/tools/javac/code/Attribute;

    move-result-object v5

    .line 1465
    new-instance v6, Lcom/sun/tools/javac/util/Pair;

    invoke-direct {v6, v4, v5}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1467
    :cond_0
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    return-object v0
.end method

.method readEnclosingMethodAttr(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1236
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Scope;->remove(Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, p1

    .line 1237
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1238
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    .line 1239
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    .line 1241
    iget-object v2, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_8

    .line 1244
    iget-object v2, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/sun/tools/javac/jvm/ClassReader;->findMethod(Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;Lcom/sun/tools/javac/code/Scope;J)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    .line 1245
    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    .line 1248
    :cond_0
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    iget-object v4, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-direct {p0, v1, v4}, Lcom/sun/tools/javac/jvm/ClassReader;->simpleBinaryName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 1249
    if-eqz v2, :cond_2

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 1250
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1251
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    .line 1255
    :goto_1
    if-eqz v2, :cond_4

    .line 1256
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v1, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type$ClassType;->setEnclosingType(Lcom/sun/tools/javac/code/Type;)V

    .line 1262
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterTypevars(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1263
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1264
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1265
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->missingTypeVariables:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1266
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->findTypeVar(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_3

    .line 1246
    :cond_1
    const-string v1, "bad.enclosing.method"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0

    :cond_2
    move-object v1, v3

    .line 1249
    goto :goto_0

    .line 1253
    :cond_3
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v1, v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->formFullName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    goto :goto_1

    .line 1257
    :cond_4
    iget-wide v4, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    .line 1258
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v1, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v2, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type$ClassType;->setEnclosingType(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2

    .line 1260
    :cond_5
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v1, Lcom/sun/tools/javac/code/Type$ClassType;

    sget-object v2, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type$ClassType;->setEnclosingType(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2

    .line 1268
    :cond_6
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->foundTypeVariables:Lcom/sun/tools/javac/util/List;

    .line 1272
    :goto_4
    return-void

    .line 1270
    :cond_7
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->foundTypeVariables:Lcom/sun/tools/javac/util/List;

    goto :goto_4

    .line 1242
    :cond_8
    const-string v1, "bad.enclosing.class"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0
.end method

.method readEnumType(I)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 1450
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v0, v0, p1

    .line 1451
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    .line 1452
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v2, v0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    .line 1453
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1454
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readType(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0
.end method

.method readField()Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    .registers 8

    .line 1830
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->adjustFieldFlags(J)J

    move-result-wide v2

    .line 1831
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 1832
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readType(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1833
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1834
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readMemberAttrs(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1835
    return-object v1
.end method

.method readInnerClasses(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 14

    .line 2074
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    .line 2075
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    .line 2076
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    .line 2077
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    .line 2078
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 2079
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    .line 2080
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/sun/tools/javac/jvm/ClassReader;->adjustClassFlags(J)J

    move-result-wide v4

    .line 2081
    if-eqz v3, :cond_3

    .line 2082
    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v6, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v6, :cond_1

    .line 2083
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->one:Lcom/sun/tools/javac/util/Name;

    .line 2084
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    .line 2085
    const-wide/16 v8, 0x8

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_2

    .line 2086
    iget-object v0, v6, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v7, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/code/Type$ClassType;->setEnclosingType(Lcom/sun/tools/javac/code/Type;)V

    .line 2087
    iget-object v0, v6, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_2

    .line 2088
    iget-object v0, v6, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v8, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/code/Type$ClassType;->setEnclosingType(Lcom/sun/tools/javac/code/Type;)V

    .line 2090
    :cond_2
    if-ne p1, v3, :cond_3

    .line 2091
    iput-wide v4, v6, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 2092
    invoke-direct {p0, p1, v6}, Lcom/sun/tools/javac/jvm/ClassReader;->enterMember(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2075
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2096
    :cond_4
    return-void
.end method

.method readMemberAttrs(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 3

    .line 1344
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->MEMBER:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readAttrs(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;)V

    .line 1345
    return-void
.end method

.method readMethod()Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 9

    .line 1842
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->adjustMethodFlags(J)J

    move-result-wide v2

    .line 1843
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 1844
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readType(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1845
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1849
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1850
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->adjustMethodParams(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1851
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    .line 1852
    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v1, v6, v0, v7}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1855
    :goto_0
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1856
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    if-eqz v0, :cond_0

    .line 1857
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->initParameterNames(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    .line 1859
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    .line 1861
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readMemberAttrs(Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    .line 1864
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    if-eqz v0, :cond_1

    .line 1866
    invoke-virtual {p0, v1, v5}, Lcom/sun/tools/javac/jvm/ClassReader;->setParameterNames(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;)V

    .line 1867
    :cond_1
    return-object v1

    .line 1863
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    .line 1864
    throw v1

    :cond_2
    move-object v5, v0

    goto :goto_0
.end method

.method readName(I)Lcom/sun/tools/javac/util/Name;
    .registers 3

    .line 628
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method readPool(I)Ljava/lang/Object;
    .registers 10

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 519
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 520
    if-eqz v0, :cond_0

    .line 529
    :goto_0
    return-object v0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v0, v0, p1

    .line 523
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :cond_1
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    aget-byte v5, v4, v0

    .line 526
    packed-switch v5, :pswitch_data_0

    .line 579
    :pswitch_0
    const-string v0, "bad.const.pool.tag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0

    .line 576
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->skipBytes(I)V

    .line 529
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0

    .line 573
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->skipBytes(I)V

    goto :goto_1

    .line 570
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->skipBytes(I)V

    goto :goto_1

    .line 553
    :pswitch_4
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    .line 555
    new-instance v3, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readType(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;)V

    aput-object v3, v1, p1

    goto :goto_1

    .line 547
    :pswitch_5
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    .line 548
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    .line 549
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    aput-object v1, v7, p1

    goto :goto_1

    .line 540
    :pswitch_6
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    .line 541
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    .line 542
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolObj:[Ljava/lang/Object;

    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    aput-object v1, v7, p1

    goto :goto_1

    .line 537
    :pswitch_7
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_1

    .line 533
    :pswitch_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassOrType(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_1

    .line 567
    :pswitch_9
    new-instance v2, Ljava/lang/Double;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getDouble(I)D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v2, v1, p1

    goto/16 :goto_1

    .line 564
    :pswitch_a
    new-instance v2, Ljava/lang/Long;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getLong(I)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v1, p1

    goto/16 :goto_1

    .line 561
    :pswitch_b
    new-instance v2, Ljava/lang/Float;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getFloat(I)F

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Float;-><init>(F)V

    aput-object v2, v1, p1

    goto/16 :goto_1

    .line 558
    :pswitch_c
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_1

    .line 531
    :pswitch_d
    const-string v0, "unicode.str.not.supported"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0

    .line 528
    :pswitch_e
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {v2, v4, v3, v0}, Lcom/sun/tools/javac/util/Names;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_1

    .line 526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method readType(I)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 588
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v0, v0, p1

    .line 589
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType([BII)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method readTypeOrClassSymbol(I)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 1443
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v1, v1, p1

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1444
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1445
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readType(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0
.end method

.method readTypeParams(I)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->poolIdx:[I

    aget v0, v0, p1

    .line 614
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->buf:[B

    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToTypeParams([BII)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method setParameterNames(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;)V
    .registers 10

    const/4 v1, 0x0

    .line 1923
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->haveParameterNameIndices:Z

    if-nez v0, :cond_0

    .line 1962
    :goto_0
    return-void

    .line 1926
    :cond_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1932
    :goto_1
    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1936
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1937
    add-int/lit8 v0, v0, 0x1

    .line 1940
    :cond_1
    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v2, p2, :cond_2

    .line 1948
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/util/List;)I

    move-result v2

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1949
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/util/List;)I

    move-result v3

    .line 1950
    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1952
    :cond_2
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1954
    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1955
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    array-length v6, v4

    if-ge v2, v6, :cond_4

    .line 1956
    aget v4, v4, v2

    .line 1957
    :goto_3
    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    .line 1958
    :goto_4
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1959
    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 1960
    goto :goto_2

    :cond_3
    move v0, v1

    .line 1926
    goto :goto_1

    :cond_4
    move v4, v1

    .line 1956
    goto :goto_3

    .line 1957
    :cond_5
    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    goto :goto_4

    .line 1961
    :cond_6
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->savedParameterNames:Lcom/sun/tools/javac/util/List;

    goto/16 :goto_0
.end method

.method sigToType()Lcom/sun/tools/javac/code/Type;
    .registers 7

    const/4 v4, 0x0

    .line 658
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v2, v0, v1

    int-to-char v2, v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_10

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_f

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_e

    const/16 v3, 0x46

    if-eq v2, v3, :cond_d

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_c

    const/16 v3, 0x56

    if-eq v2, v3, :cond_b

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_a

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_9

    const/16 v3, 0x49

    if-eq v2, v3, :cond_8

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_7

    const/16 v3, 0x53

    if-eq v2, v3, :cond_6

    const/16 v3, 0x54

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 745
    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/util/Convert;->utf2string([BII)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad.signature"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0

    .line 690
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 691
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    .line 743
    :cond_0
    :goto_0
    return-object v0

    .line 687
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 688
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 684
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 685
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 724
    :cond_1
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 725
    new-instance v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto :goto_0

    .line 721
    :cond_2
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 722
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 660
    :cond_3
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 661
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 662
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v3, v1, v2

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_4

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    goto :goto_1

    .line 663
    :cond_4
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 664
    iget-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    if-eqz v3, :cond_5

    .line 665
    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto :goto_0

    .line 666
    :cond_5
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {v3, v1, v0, v2}, Lcom/sun/tools/javac/util/Names;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->findTypeVar(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 715
    :cond_6
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 716
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 699
    :cond_7
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 700
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 696
    :cond_8
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 697
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 668
    :cond_9
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 669
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 670
    new-instance v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto/16 :goto_0

    .line 674
    :cond_a
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 675
    new-instance v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto/16 :goto_0

    .line 718
    :cond_b
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 719
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto/16 :goto_0

    .line 703
    :cond_c
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->classSigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 704
    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->siglimit:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    aget-byte v1, v2, v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    .line 705
    const-string v0, "deprecated inner class signature syntax (please recompile from source)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;

    move-result-object v0

    throw v0

    .line 693
    :cond_d
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 694
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_0

    .line 740
    :cond_e
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->dup(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    .line 741
    new-instance v0, Lcom/sun/tools/javac/code/Type$ForAll;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToTypeParams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ForAll;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    .line 742
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    goto/16 :goto_0

    .line 678
    :cond_f
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 679
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 680
    new-instance v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->SUPER:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto/16 :goto_0

    .line 727
    :cond_10
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 728
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToTypes(C)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 729
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 730
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 731
    :goto_2
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v1, v1, v4

    const/16 v5, 0x5e

    if-ne v1, v5, :cond_11

    .line 732
    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 733
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_2

    .line 735
    :cond_11
    new-instance v1, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 733
    :catchall_0
    move-exception v0

    throw v0

    .line 658
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sigToType([BII)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 648
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    .line 649
    iput p2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 650
    add-int v0, p2, p3

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->siglimit:I

    .line 651
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method sigToTypeParam()Lcom/sun/tools/javac/code/Type;
    .registers 8

    const/16 v6, 0x3a

    .line 904
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 905
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v3, v1, v2

    if-eq v3, v6, :cond_0

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    goto :goto_0

    .line 906
    :cond_0
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->names:Lcom/sun/tools/javac/util/Names;

    sub-int/2addr v2, v0

    invoke-virtual {v3, v1, v0, v2}, Lcom/sun/tools/javac/util/Names;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 908
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    if-eqz v0, :cond_2

    .line 909
    new-instance v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Type$TypeVar;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V

    .line 910
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->typevars:Lcom/sun/tools/javac/code/Scope;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 914
    :goto_1
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 915
    const/4 v2, 0x0

    .line 916
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v5, v3, v4

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v5

    if-ne v3, v6, :cond_1

    .line 917
    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 918
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 920
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v4, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v3, v3, v4

    if-ne v3, v6, :cond_3

    .line 921
    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 922
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    goto :goto_2

    .line 912
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->findTypeVar(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    goto :goto_1

    .line 924
    :cond_3
    iget-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    if-nez v3, :cond_4

    .line 925
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->setBounds(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    .line 927
    :cond_4
    return-object v0
.end method

.method sigToTypeParams()Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    const/16 v4, 0x3e

    .line 884
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 885
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v1, v1, v2

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_2

    .line 886
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 887
    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 888
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    .line 889
    :goto_0
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v2, v2, v3

    if-eq v2, v4, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToTypeParam()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    .line 891
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigEnterPhase:Z

    .line 892
    iput v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 893
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v1, v1, v2

    if-eq v1, v4, :cond_1

    .line 894
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToTypeParam()Lcom/sun/tools/javac/code/Type;

    goto :goto_1

    .line 895
    :cond_1
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 897
    :cond_2
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method sigToTypeParams([BII)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 874
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    .line 875
    iput p2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 876
    add-int v0, p2, p3

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->siglimit:I

    .line 877
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToTypeParams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method sigToTypes(C)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 861
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v0, v1

    .line 863
    :goto_0
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->signature:[B

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    aget-byte v2, v2, v3

    if-eq v2, p1, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/List;->setTail(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    .line 865
    :cond_0
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    .line 866
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method skipBytes(I)V
    .registers 3

    .line 1968
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1969
    return-void
.end method

.method skipMember()V
    .registers 5

    .line 1975
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1976
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    .line 1977
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1978
    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1979
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextInt()I

    move-result v2

    .line 1980
    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1977
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1982
    :cond_0
    return-void
.end method

.method unrecognized(Lcom/sun/tools/javac/util/Name;)V
    .registers 3

    .line 1227
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader;->checkClassFile:Z

    if-eqz v0, :cond_0

    .line 1228
    const-string v0, "ccf.unrecognized.attribute"

    invoke-direct {p0, v0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->printCCF(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1229
    :cond_0
    return-void
.end method
