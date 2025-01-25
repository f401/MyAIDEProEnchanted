.class public Lcom/s1243808733/android/dx/command/dexer/Main;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;,
        Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;,
        Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;,
        Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;,
        Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;,
        Lcom/s1243808733/android/dx/command/dexer/Main$ClassTranslatorTask;,
        Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;,
        Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;,
        Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;,
        Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;,
        Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter;,
        Lcom/s1243808733/android/dx/command/dexer/Main$RemoveModuleInfoFilter;,
        Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final CREATED_BY:Ljava/util/jar/Attributes$Name;

.field private static final DEX_EXTENSION:Ljava/lang/String; = ".dex"

.field private static final DEX_PREFIX:Ljava/lang/String; = "classes"

.field private static final IN_RE_CORE_CLASSES:Ljava/lang/String; = "Ill-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application\'s project, when using an IDE (such as\nEclipse). If you are sure you\'re not intentionally defining a\ncore class, then this is the most likely explanation of what\'s\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n"

.field private static final JAVAX_CORE:[Ljava/lang/String;

.field private static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field private static final MAX_FIELD_ADDED_DURING_DEX_CREATION:I = 0x9

.field private static final MAX_METHOD_ADDED_DURING_DEX_CREATION:I = 0x2


# instance fields
.field private addToDexFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile anyFilesProcessed:Z

.field private args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

.field private classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

.field private classTranslatorPool:Ljava/util/concurrent/ExecutorService;

.field private classesInMainDex:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

.field private dexOutPool:Ljava/util/concurrent/ExecutorService;

.field private dexOutputArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private dexOutputFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private dexRotationLock:Ljava/lang/Object;

.field private errors:Ljava/util/concurrent/atomic/AtomicInteger;

.field private humanOutWriter:Ljava/io/OutputStreamWriter;

.field private final libraryDexBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private maxFieldIdsInProcess:I

.field private maxMethodIdsInProcess:I

.field private minimumFileAge:J

.field private outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

.field private outputResources:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetaddToDexFutures(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->addToDexFutures:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetargs(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclassDefItemConsumer(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclassTranslatorPool(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclassesInMainDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classesInMainDex:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdexRotationLock(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexRotationLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeterrors(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I
    .registers 1

    iget p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxFieldIdsInProcess:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I
    .registers 1

    iget p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxMethodIdsInProcess:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxFieldIdsInProcess:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxMethodIdsInProcess:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddClassToDex(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->addClassToDex(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mparseClass(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[B)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/dexer/Main;->parseClass(Ljava/lang/String;[B)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprocessFileBytes(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;J[B)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/command/dexer/Main;->processFileBytes(Ljava/lang/String;J[B)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrotateDexFile(Lcom/s1243808733/android/dx/command/dexer/Main;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->rotateDexFile()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtranslateClass(Lcom/s1243808733/android/dx/command/dexer/Main;[BLcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/dexer/Main;->translateClass([BLcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateStatus(Lcom/s1243808733/android/dx/command/dexer/Main;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->updateStatus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteDex(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;)[B
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->writeDex(Lcom/s1243808733/android/dx/dex/file/DexFile;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfixPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smreadPathsFromFile(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->readPathsFromFile(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 145
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Created-By"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/command/dexer/Main;->CREATED_BY:Ljava/util/jar/Attributes$Name;

    .line 153
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accessibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "crypto"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "imageio"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "management"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "naming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "net"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "print"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rmi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "security"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sound"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sql"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "swing"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "transaction"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "xml"

    aput-object v2, v0, v1

    sput-object v0, Lcom/s1243808733/android/dx/command/dexer/Main;->JAVAX_CORE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V
    .registers 4

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->addToDexFutures:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexRotationLock:Ljava/lang/Object;

    .line 210
    iput v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxMethodIdsInProcess:I

    .line 215
    iput v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxFieldIdsInProcess:I

    .line 221
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->minimumFileAge:J

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classesInMainDex:Ljava/util/Set;

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    .line 227
    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    .line 232
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-void
.end method

.method private addClassToDex(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)Z
    .registers 4

    .line 794
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    monitor-enter v0

    .line 795
    :try_start_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->add(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)V

    .line 796
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method private checkClassName(Ljava/lang/String;)V
    .registers 5

    .line 811
    const-string v0, "java/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 813
    const-string v0, "javax/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 814
    const/16 v0, 0x2f

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    .line 819
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 820
    sget-object v1, Lcom/s1243808733/android/dx/command/dexer/Main;->JAVAX_CORE:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_27

    :cond_26
    return-void

    .line 834
    :cond_27
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ntrouble processing \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\":\n\nIll-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application\'s project, when using an IDE (such as\nEclipse). If you are sure you\'re not intentionally defining a\ncore class, then this is the most likely explanation of what\'s\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 837
    new-instance p1, Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing-IA;)V

    throw p1
.end method

.method public static clearInternTables()V
    .registers 0

    .line 252
    invoke-static {}, Lcom/s1243808733/android/dx/rop/type/Prototype;->clearInternTable()V

    .line 253
    invoke-static {}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->clearInternTable()V

    .line 254
    invoke-static {}, Lcom/s1243808733/android/dx/rop/cst/CstType;->clearInternTable()V

    .line 255
    invoke-static {}, Lcom/s1243808733/android/dx/rop/type/Type;->clearInternTable()V

    return-void
.end method

.method private closeOutput(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1007
    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1009
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    if-eq p1, v0, :cond_f

    .line 1010
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_f
    return-void
.end method

.method private createDexFile()V
    .registers 3

    .line 646
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DexFile;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;-><init>(Lcom/s1243808733/android/dx/dex/DexOptions;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 648
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    if-eqz v0, :cond_1a

    .line 649
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->setDumpWidth(I)V

    :cond_1a
    return-void
.end method

.method private createJar(Ljava/lang/String;)Z
    .registers 11

    .line 903
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->makeManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 904
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->openOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    .line 905
    new-instance v1, Ljava/util/jar/JarOutputStream;

    invoke-direct {v1, p1, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_84

    .line 909
    :try_start_d
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 910
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 911
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 912
    new-instance v4, Ljava/util/jar/JarEntry;

    invoke-direct {v4, v3}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 913
    array-length v5, v2

    .line 915
    iget-object v6, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v6, v6, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    if-eqz v6, :cond_60

    .line 916
    iget-object v6, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v6, v6, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; size "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_60
    int-to-long v5, v5

    .line 919
    invoke-virtual {v4, v5, v6}, Ljava/util/jar/JarEntry;->setSize(J)V

    .line 920
    invoke-virtual {v1, v4}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 921
    invoke-virtual {v1, v2}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 922
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_6d
    .catchall {:try_start_d .. :try_end_6d} :catchall_79

    goto :goto_17

    .line 925
    :cond_6e
    :try_start_6e
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->finish()V

    .line 926
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->flush()V

    .line 927
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    return p1

    :catchall_79
    move-exception v0

    .line 925
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->finish()V

    .line 926
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->flush()V

    .line 927
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    .line 928
    throw v0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_84} :catch_84

    :catch_84
    move-exception p1

    .line 930
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz v0, :cond_9c

    .line 931
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "\ntrouble writing output:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_b5

    .line 934
    :cond_9c
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ntrouble writing output: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 934
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_b5
    const/4 p1, 0x0

    return p1
.end method

.method private dumpMethod(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .registers 12

    .line 1061
    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1062
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_172

    .line 1064
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_18

    goto/16 :goto_172

    .line 1070
    :cond_18
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 1071
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getClassOrNull(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    move-result-object p1

    if-nez p1, :cond_45

    .line 1075
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "no such class: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_45
    if-eqz v0, :cond_51

    .line 1080
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1083
    :cond_51
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getMethods()Ljava/util/ArrayList;

    move-result-object v1

    .line 1084
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1092
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5e
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    .line 1093
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_7a

    .line 1094
    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_82

    :cond_7a
    if-nez v0, :cond_5e

    .line 1095
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1096
    :cond_82
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 1100
    :cond_8e
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_aa

    .line 1101
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "no such method: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 1105
    :cond_aa
    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1107
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_b7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    .line 1109
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    invoke-virtual {v0, p2, v1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    .line 1115
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    if-eqz v1, :cond_e5

    .line 1117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  source file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    :cond_e5
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v1

    .line 1123
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    if-eqz v1, :cond_122

    .line 1126
    const-string v2, "  method annotations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_104
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_122

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 1128
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_104

    :cond_122
    if-eqz v0, :cond_b7

    .line 1133
    const-string v1, "  parameter annotations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12e
    if-ge v2, v1, :cond_b7

    .line 1136
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    parameter "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->get(I)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v4

    .line 1138
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 1139
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "      "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14d

    :cond_16b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12e

    .line 1145
    :cond_16e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void

    .line 1065
    :cond_172
    :goto_172
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "bogus fully-qualified method name: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static fixPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1034
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_c

    .line 1035
    const/16 v0, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1038
    :cond_c
    const-string v0, "/./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 1041
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1044
    :cond_1c
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1045
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_29
    return-object p0
.end method

.method private static getDexFileName(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 426
    const-string p0, "classes.dex"

    return-object p0

    .line 428
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "classes"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".dex"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dexer/DxContext;-><init>()V

    .line 241
    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    .line 242
    invoke-static {v1, p0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->-$$Nest$mparse(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;[Ljava/lang/String;)V

    .line 244
    new-instance p0, Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->runDx(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;)I

    move-result p0

    if-eqz p0, :cond_1b

    .line 247
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_1b
    return-void
.end method

.method private makeManifest()Ljava/util/jar/Manifest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1d

    .line 956
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0}, Ljava/util/jar/Manifest;-><init>()V

    .line 957
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 958
    sget-object v2, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 960
    :cond_1d
    new-instance v2, Ljava/util/jar/Manifest;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 961
    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 962
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    move-object v0, v2

    .line 965
    :goto_32
    sget-object v2, Lcom/s1243808733/android/dx/command/dexer/Main;->CREATED_BY:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 967
    const-string v3, ""

    goto :goto_4e

    .line 969
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " + "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 971
    :goto_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dx 1.16"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 973
    invoke-virtual {v1, v2, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const-string v2, "Dex-Location"

    const-string v3, "classes.dex"

    invoke-virtual {v1, v2, v3}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method private mergeIncremental([BLjava/io/File;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 465
    new-instance v1, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dex/Dex;-><init>([B)V

    goto :goto_a

    :cond_9
    move-object v1, v0

    .line 468
    :goto_a
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 469
    new-instance p1, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/io/File;)V

    goto :goto_17

    :cond_16
    move-object p1, v0

    :goto_17
    if-nez v1, :cond_1c

    if-nez p1, :cond_1c

    return-object v0

    :cond_1c
    if-nez v1, :cond_20

    move-object v1, p1

    goto :goto_39

    :cond_20
    if-nez p1, :cond_23

    goto :goto_39

    .line 480
    :cond_23
    sget-object p2, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    new-instance v2, Lcom/s1243808733/android/dx/merge/DexMerger;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/s1243808733/android/dex/Dex;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-direct {v2, v3, p2, v0}, Lcom/s1243808733/android/dx/merge/DexMerger;-><init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->merge()Lcom/s1243808733/android/dex/Dex;

    move-result-object v1

    .line 483
    :goto_39
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 484
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dex/Dex;->writeTo(Ljava/io/OutputStream;)V

    .line 485
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private mergeLibraryDexBuffers([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_f

    .line 495
    new-instance v1, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dex/Dex;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_f
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 498
    new-instance v2, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dex/Dex;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 500
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    return-object p1

    .line 503
    :cond_32
    new-instance p1, Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dex/Dex;

    sget-object v1, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;-><init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->merge()Lcom/s1243808733/android/dex/Dex;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private openOutput(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 986
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 987
    const-string v0, "-."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 991
    :cond_11
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 988
    :cond_17
    :goto_17
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    return-object p1
.end method

.method private parseClass(Ljava/lang/String;[B)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;
    .registers 5

    .line 770
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->strictNameCheck:Z

    invoke-direct {v0, p2, p1, v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>([BLjava/lang/String;Z)V

    .line 772
    sget-object p1, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 773
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic()I

    return-object v0
.end method

.method private processAllFiles()Z
    .registers 13

    .line 514
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->createDexFile()V

    .line 516
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    if-eqz v0, :cond_10

    .line 517
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    .line 520
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    .line 521
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    .line 522
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 525
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v3, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v4, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v11, 0x1

    invoke-direct {v8, v2, v11}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v10, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    .line 530
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    .line 534
    :try_start_45
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz v2, :cond_b1

    .line 536
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_58

    new-instance v2, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;

    invoke-direct {v2, p0, v3}, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter-IA;)V

    goto :goto_5d

    .line 537
    :cond_58
    new-instance v2, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;

    invoke-direct {v2, p0}, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V

    :goto_5d
    const/4 v4, 0x0

    .line 540
    :goto_5e
    array-length v5, v1

    if-ge v4, v5, :cond_69

    .line 541
    aget-object v5, v1, v4

    invoke-direct {p0, v5, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->processOne(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 544
    :cond_69
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_a9

    .line 549
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v4, v4, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    if-eqz v4, :cond_93

    .line 553
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexRotationLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7a
    .catch Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing; {:try_start_45 .. :try_end_7a} :catch_c4

    .line 554
    :goto_7a
    :try_start_7a
    iget v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxMethodIdsInProcess:I

    if-gtz v5, :cond_88

    iget v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxFieldIdsInProcess:I

    if-lez v5, :cond_83

    goto :goto_88

    .line 561
    :cond_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_90

    .line 563
    :try_start_84
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->rotateDexFile()V
    :try_end_87
    .catch Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing; {:try_start_84 .. :try_end_87} :catch_c4

    goto :goto_93

    .line 556
    :cond_88
    :goto_88
    :try_start_88
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexRotationLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_8d} :catch_8e
    .catchall {:try_start_88 .. :try_end_8d} :catchall_90

    goto :goto_7a

    .line 614
    :catch_8e
    move-exception v5

    goto :goto_7a

    .line 556
    :catchall_90
    move-exception v1

    .line 561
    :try_start_91
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw v1

    .line 567
    :cond_93
    :goto_93
    new-instance v4, Lcom/s1243808733/android/dx/command/dexer/Main$RemoveModuleInfoFilter;

    new-instance v5, Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter;

    invoke-direct {v5, v2, v3}, Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter-IA;)V

    invoke-direct {v4, v5}, Lcom/s1243808733/android/dx/command/dexer/Main$RemoveModuleInfoFilter;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V

    const/4 v2, 0x0

    .line 568
    :goto_9e
    array-length v3, v1

    if-ge v2, v3, :cond_c5

    .line 569
    aget-object v3, v1, v2

    invoke-direct {p0, v3, v4}, Lcom/s1243808733/android/dx/command/dexer/Main;->processOne(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 545
    :cond_a9
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    const-string v2, "Too many classes in --main-dex-list, main dex capacity exceeded"

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :cond_b1
    new-instance v2, Lcom/s1243808733/android/dx/command/dexer/Main$RemoveModuleInfoFilter;

    sget-object v3, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->acceptAll:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/command/dexer/Main$RemoveModuleInfoFilter;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V

    const/4 v3, 0x0

    .line 574
    :goto_b9
    array-length v4, v1

    if-ge v3, v4, :cond_c5

    .line 575
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->processOne(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V
    :try_end_c1
    .catch Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing; {:try_start_92 .. :try_end_c1} :catch_c4

    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    .line 614
    :catch_c4
    move-exception v1

    .line 586
    :cond_c5
    :try_start_c5
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 587
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x258

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 588
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 589
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 591
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->addToDexFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_140

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;
    :try_end_f1
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_f1} :catch_1c1
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_f1} :catch_1a7

    .line 593
    :try_start_f1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_f4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f1 .. :try_end_f4} :catch_f5
    .catch Ljava/lang/InterruptedException; {:try_start_f1 .. :try_end_f4} :catch_1c1
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_1a7

    goto :goto_e5

    :catch_f5
    move-exception v2

    .line 597
    :try_start_f6
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_138

    .line 599
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v3, v3, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz v3, :cond_11b

    .line 600
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v3, v3, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v4, "Uncaught translation error:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v3, v3, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_e5

    .line 603
    :cond_11b
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v3, v3, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncaught translation error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e5

    .line 606
    :cond_138
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Too many errors"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_140
    .catch Ljava/lang/InterruptedException; {:try_start_f6 .. :try_end_140} :catch_1c1
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_140} :catch_1a7

    .line 622
    :cond_140
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_170

    .line 624
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v11, :cond_15e

    .line 625
    const-string v1, ""

    goto :goto_160

    :cond_15e
    const-string v1, "s"

    :goto_160
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; aborting"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    .line 629
    :cond_170
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-eqz v1, :cond_17b

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    if-nez v1, :cond_17b

    return v11

    .line 633
    :cond_17b
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    if-nez v1, :cond_18f

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-nez v1, :cond_18f

    .line 634
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "no classfiles specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    .line 638
    :cond_18f
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->statistics:Z

    if-eqz v0, :cond_1a6

    .line 639
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dumpStatistics(Ljava/io/PrintStream;)V

    :cond_1a6
    return v11

    :catch_1a7
    move-exception v0

    .line 616
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 617
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 618
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 619
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception in translator thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1c1
    move-exception v0

    .line 612
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 613
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 614
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Translation has been interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d5

    :goto_1d4
    throw v1

    :goto_1d5
    goto :goto_1d4
.end method

.method private processClass(Ljava/lang/String;[B)Z
    .registers 10

    .line 750
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    if-nez v0, :cond_9

    .line 751
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->checkClassName(Ljava/lang/String;)V

    .line 755
    :cond_9
    :try_start_9
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer-IA;)V

    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask-IA;)V

    .line 756
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;->call()Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    move-result-object p1

    .line 755
    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->-$$Nest$mcall(Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    :try_end_21
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_9 .. :try_end_21} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_23

    const/4 p1, 0x1

    return p1

    :catch_23
    move-exception p1

    .line 761
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Exception parsing classes"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2c
    move-exception p1

    .line 759
    throw p1
.end method

.method private processFileBytes(Ljava/lang/String;J[B)Z
    .registers 13

    .line 697
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 698
    const-string v1, "classes.dex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 699
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    if-nez v0, :cond_37

    if-nez v1, :cond_37

    if-nez v2, :cond_37

    .line 702
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean p2, p2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    if-eqz p2, :cond_36

    .line 703
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p2, p2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ignored resource "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_36
    return v3

    .line 708
    :cond_37
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v5, v5, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    if-eqz v5, :cond_57

    .line 709
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v5, v5, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    :cond_57
    invoke-static {p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_7d

    if-eqz v2, :cond_72

    .line 716
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    if-eqz v0, :cond_72

    .line 717
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    monitor-enter v0

    .line 718
    :try_start_68
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    monitor-exit v0

    goto :goto_72

    :catchall_6f
    move-exception p1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    throw p1

    .line 721
    :cond_72
    :goto_72
    iget-wide v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->minimumFileAge:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_79

    return v4

    .line 724
    :cond_79
    invoke-direct {p0, p1, p4}, Lcom/s1243808733/android/dx/command/dexer/Main;->processClass(Ljava/lang/String;[B)Z

    return v3

    :cond_7d
    if-eqz v1, :cond_8c

    .line 729
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    monitor-enter p2

    .line 730
    :try_start_82
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    monitor-exit p2

    return v4

    :catchall_89
    move-exception p1

    monitor-exit p2
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_89

    throw p1

    .line 734
    :cond_8c
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    monitor-enter p2

    .line 735
    :try_start_8f
    iget-object p3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    invoke-virtual {p3, p1, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    monitor-exit p2

    return v4

    :catchall_96
    move-exception p1

    monitor-exit p2
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_96

    throw p1
.end method

.method private processOne(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V
    .registers 6

    .line 676
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;

    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer-IA;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;-><init>(Ljava/lang/String;ZLcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;)V

    .line 678
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->process()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 679
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->updateStatus(Z)V

    :cond_15
    return-void
.end method

.method private static readPathsFromFile(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 436
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_1e

    .line 440
    :goto_a
    :try_start_a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 441
    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1c

    goto :goto_a

    .line 446
    :cond_18
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_1c
    move-exception p1

    goto :goto_21

    :catchall_1e
    move-exception p0

    move-object p1, p0

    const/4 p0, 0x0

    :goto_21
    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 448
    :cond_26
    goto :goto_28

    :goto_27
    throw p1

    :goto_28
    goto :goto_27
.end method

.method private rotateDexFile()V
    .registers 6

    .line 654
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-eqz v0, :cond_21

    .line 655
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_18

    .line 656
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    new-instance v3, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter-IA;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 658
    :cond_18
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->writeDex(Lcom/s1243808733/android/dx/dex/file/DexFile;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_21
    :goto_21
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->createDexFile()V

    return-void
.end method

.method public static run(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main;

    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v1}, Lcom/s1243808733/android/dx/command/dexer/DxContext;-><init>()V

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->runDx(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;)I

    move-result p0

    return p0
.end method

.method private runMonoDex()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 299
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 300
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "error: no incremental output name specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 304
    :cond_18
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->minimumFileAge:J

    goto :goto_2f

    :cond_2e
    move-object v0, v1

    .line 310
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->processAllFiles()Z

    move-result v2

    if-nez v2, :cond_37

    const/4 v0, 0x1

    return v0

    .line 314
    :cond_37
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    iget-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    if-nez v2, :cond_43

    return v3

    .line 321
    :cond_43
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    if-eqz v2, :cond_52

    goto :goto_54

    :cond_52
    move-object v2, v1

    goto :goto_5e

    .line 322
    :cond_54
    :goto_54
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->writeDex(Lcom/s1243808733/android/dx/dex/file/DexFile;)[B

    move-result-object v2

    if-nez v2, :cond_5e

    const/4 v0, 0x2

    return v0

    .line 329
    :cond_5e
    :goto_5e
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v4, v4, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-eqz v4, :cond_68

    .line 330
    invoke-direct {p0, v2, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->mergeIncremental([BLjava/io/File;)[B

    move-result-object v2

    .line 333
    :cond_68
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->mergeLibraryDexBuffers([B)[B

    move-result-object v0

    .line 335
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    if-eqz v2, :cond_89

    .line 337
    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-eqz v0, :cond_7d

    .line 340
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    const-string v2, "classes.dex"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_7d
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->createJar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9f

    const/4 v0, 0x3

    return v0

    :cond_89
    if-eqz v0, :cond_9f

    .line 345
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    if-eqz v1, :cond_9f

    .line 346
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->openOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 347
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 348
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    :cond_9f
    return v3
.end method

.method private runMultiDex()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 359
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classesInMainDex:Ljava/util/Set;

    .line 360
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classesInMainDex:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->readPathsFromFile(Ljava/lang/String;Ljava/util/Collection;)V

    .line 363
    :cond_16
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    .line 365
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->processAllFiles()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    return v0

    .line 369
    :cond_28
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 373
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-eqz v0, :cond_47

    .line 376
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter-IA;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iput-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 382
    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 383
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x258

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 387
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 388
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_75} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_75} :catch_eb

    goto :goto_5e

    .line 399
    :cond_76
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a6

    const/4 v0, 0x0

    .line 400
    :goto_7e
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9a

    .line 401
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->getDexFileName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    .line 402
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 401
    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 405
    :cond_9a
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->createJar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e2

    const/4 v0, 0x3

    return v0

    .line 408
    :cond_a6
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    if-eqz v0, :cond_e2

    .line 409
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 411
    :goto_b6
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e2

    .line 412
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->getDexFileName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 414
    :try_start_cc
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_d7
    .catchall {:try_start_cc .. :try_end_d7} :catchall_dd

    .line 416
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    :catchall_dd
    move-exception v0

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    .line 417
    throw v0

    :cond_e2
    return v1

    .line 384
    :cond_e3
    :try_start_e3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timed out waiting for dex writer threads."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_eb
    .catch Ljava/lang/InterruptedException; {:try_start_e3 .. :try_end_eb} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_eb} :catch_eb

    .line 395
    :catch_eb
    move-exception v0

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 396
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected exception in dex writer thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :catch_f9
    move-exception v0

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 393
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A dex writer thread has been interrupted."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_107
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    const-string v1, "Library dex files are not supported in multi-dex mode"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    goto :goto_110

    :goto_10f
    throw v0

    :goto_110
    goto :goto_10f
.end method

.method private translateClass([BLcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    .registers 9

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v3, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v4, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->translate(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;[BLcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/DexFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    move-result-object p1
    :try_end_12
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 782
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p2, p2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "\ntrouble processing:"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean p2, p2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz p2, :cond_2b

    .line 784
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p2, p2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_32

    .line 786
    :cond_2b
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p2, p2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printContext(Ljava/io/PrintStream;)V

    .line 789
    :goto_32
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 p1, 0x0

    return-object p1
.end method

.method private updateStatus(Z)V
    .registers 3

    .line 684
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    return-void
.end method

.method private writeDex(Lcom/s1243808733/android/dx/dex/file/DexFile;)[B
    .registers 6

    .line 852
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 858
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex(Ljava/io/Writer;Z)[B

    .line 859
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    invoke-direct {p0, p1, v1, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->dumpMethod(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    move-object v1, v0

    goto :goto_20

    .line 865
    :cond_16
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    invoke-virtual {p1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex(Ljava/io/Writer;Z)[B

    move-result-object v1

    .line 868
    :goto_20
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->statistics:Z

    if-eqz v2, :cond_35

    .line 869
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStatistics()Lcom/s1243808733/android/dx/dex/file/Statistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Statistics;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_3d

    .line 872
    :cond_35
    :try_start_35
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    if-eqz p1, :cond_3c

    .line 873
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_3c
    return-object v1

    :catchall_3d
    move-exception p1

    .line 872
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_45

    .line 873
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 875
    :cond_45
    throw p1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_46} :catch_46

    :catch_46
    move-exception p1

    .line 877
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz v1, :cond_5e

    .line 878
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "\ntrouble writing output:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_77

    .line 881
    :cond_5e
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ntrouble writing output: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 881
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_77
    return-object v0
.end method


# virtual methods
.method public runDx(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 273
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    .line 276
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->makeOptionsObjects()V

    .line 279
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    if-eqz p1, :cond_26

    .line 280
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->openOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    .line 281
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 285
    :goto_27
    :try_start_27
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v0, :cond_35

    .line 286
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->runMultiDex()I

    move-result v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3a

    .line 291
    :goto_31
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    return v0

    .line 288
    :cond_35
    :try_start_35
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->runMonoDex()I

    move-result v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3a

    goto :goto_31

    .line 291
    :catchall_3a
    move-exception v0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    .line 292
    goto :goto_40

    :goto_3f
    throw v0

    :goto_40
    goto :goto_3f
.end method
