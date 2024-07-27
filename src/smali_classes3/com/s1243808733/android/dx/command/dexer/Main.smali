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
.field private static $assertionsDisabled:Z = false

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
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
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
            "Ljava/util/Set",
            "<",
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
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private dexOutputFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private dexRotationLock:Ljava/lang/Object;

.field private errors:Ljava/util/concurrent/atomic/AtomicInteger;

.field private humanOutWriter:Ljava/io/OutputStreamWriter;

.field private final libraryDexBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
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
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "com.s1243808733.android.dx.command.dexer.Main"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/s1243808733/android/dx/command/dexer/Main;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v3, "Created-By"

    invoke-direct {v0, v3}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/command/dexer/Main;->CREATED_BY:Ljava/util/jar/Attributes$Name;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "accessibility"

    aput-object v3, v0, v2

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

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->addToDexFutures:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexRotationLock:Ljava/lang/Object;

    iput v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxMethodIdsInProcess:I

    iput v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxFieldIdsInProcess:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->minimumFileAge:J

    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classesInMainDex:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    check-cast v1, Ljava/io/OutputStreamWriter;

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    .line 232
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-void
.end method

.method static synthetic access$1000030(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->readPathsFromFile(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$1000035(Lcom/s1243808733/android/dx/command/dexer/Main;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->rotateDexFile()V

    return-void
.end method

.method static synthetic access$1000037(Lcom/s1243808733/android/dx/command/dexer/Main;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->updateStatus(Z)V

    return-void
.end method

.method static synthetic access$1000038(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;J[B)Z
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/command/dexer/Main;->processFileBytes(Ljava/lang/String;J[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000040(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[B)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/dexer/Main;->parseClass(Ljava/lang/String;[B)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000041(Lcom/s1243808733/android/dx/command/dexer/Main;[BLcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/dexer/Main;->translateClass([BLcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000042(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->addClassToDex(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000044(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;)[B
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->writeDex(Lcom/s1243808733/android/dx/dex/file/DexFile;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000049(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000006()I
    .registers 1

    sget v0, Lcom/s1243808733/android/dx/command/dexer/Main;->MAX_METHOD_ADDED_DURING_DEX_CREATION:I

    return v0
.end method

.method static synthetic access$L1000007()I
    .registers 1

    sget v0, Lcom/s1243808733/android/dx/command/dexer/Main;->MAX_FIELD_ADDED_DURING_DEX_CREATION:I

    return v0
.end method

.method static synthetic access$L1000008(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$L1000009(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    return-object v0
.end method

.method static synthetic access$L1000010(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    return-object v0
.end method

.method static synthetic access$L1000013(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$L1000014(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$L1000015(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->addToDexFutures:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$L1000018(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexRotationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$L1000019(Lcom/s1243808733/android/dx/command/dexer/Main;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxMethodIdsInProcess:I

    return v0
.end method

.method static synthetic access$L1000020(Lcom/s1243808733/android/dx/command/dexer/Main;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxFieldIdsInProcess:I

    return v0
.end method

.method static synthetic access$L1000023(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classesInMainDex:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-object v0
.end method

.method static synthetic access$S1000006(I)V
    .registers 1

    sput p0, Lcom/s1243808733/android/dx/command/dexer/Main;->MAX_METHOD_ADDED_DURING_DEX_CREATION:I

    return-void
.end method

.method static synthetic access$S1000007(I)V
    .registers 1

    sput p0, Lcom/s1243808733/android/dx/command/dexer/Main;->MAX_FIELD_ADDED_DURING_DEX_CREATION:I

    return-void
.end method

.method static synthetic access$S1000008(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$S1000009(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    return-void
.end method

.method static synthetic access$S1000010(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    return-void
.end method

.method static synthetic access$S1000013(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$S1000014(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$S1000015(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->addToDexFutures:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000018(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexRotationLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$S1000019(Lcom/s1243808733/android/dx/command/dexer/Main;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxMethodIdsInProcess:I

    return-void
.end method

.method static synthetic access$S1000020(Lcom/s1243808733/android/dx/command/dexer/Main;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxFieldIdsInProcess:I

    return-void
.end method

.method static synthetic access$S1000023(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/util/Set;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classesInMainDex:Ljava/util/Set;

    return-void
.end method

.method private addClassToDex(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)Z
    .registers 4

    .line 794
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    monitor-enter v1

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->add(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 797
    const/4 v0, 0x1

    return v0

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkClassName(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 811
    const-string v2, "java/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 824
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 825
    return-void

    .line 813
    :cond_2
    const-string v2, "javax/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 815
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 819
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 820
    sget-object v3, Lcom/s1243808733/android/dx/command/dexer/Main;->JAVAX_CORE:[Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 834
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\ntrouble processing \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\":\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "Ill-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application\'s project, when using an IDE (such as\nEclipse). If you are sure you\'re not intentionally defining a\ncore class, then this is the most likely explanation of what\'s\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 837
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing;-><init>()V

    throw v0
.end method

.method public static clearInternTables()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1003
    if-nez p1, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1009
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    if-eq p1, v0, :cond_0

    .line 1010
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_0
.end method

.method private createDexFile()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 646
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DexFile;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;-><init>(Lcom/s1243808733/android/dx/dex/DexOptions;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 648
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->setDumpWidth(I)V

    :cond_0
    return-void
.end method

.method private createJar(Ljava/lang/String;)Z
    .registers 15

    .line 903
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->makeManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 904
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->openOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    .line 905
    new-instance v3, Ljava/util/jar/JarOutputStream;

    invoke-direct {v3, v2, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 922
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 925
    :try_start_2
    invoke-virtual {v3}, Ljava/util/jar/JarOutputStream;->finish()V

    .line 926
    invoke-virtual {v3}, Ljava/util/jar/JarOutputStream;->flush()V

    .line 927
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 940
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 908
    :cond_0
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 910
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 911
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 912
    new-instance v5, Ljava/util/jar/JarEntry;

    invoke-direct {v5, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 913
    array-length v6, v0

    .line 915
    iget-object v7, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v7, v7, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    if-eqz v7, :cond_1

    .line 916
    iget-object v7, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v7, v7, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "writing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v10, "; size "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, "..."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 919
    :cond_1
    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/jar/JarEntry;->setSize(J)V

    .line 920
    invoke-virtual {v3, v5}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 921
    invoke-virtual {v3, v0}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 922
    invoke-virtual {v3}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 925
    :try_start_4
    invoke-virtual {v3}, Ljava/util/jar/JarOutputStream;->finish()V

    .line 926
    invoke-virtual {v3}, Ljava/util/jar/JarOutputStream;->flush()V

    .line 927
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 930
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz v1, :cond_2

    .line 931
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "\ntrouble writing output:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 932
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 937
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 934
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\ntrouble writing output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private dumpMethod(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStreamWriter;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x2e

    const/4 v2, 0x0

    .line 1061
    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1062
    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1064
    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bogus fully-qualified method name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1145
    :goto_0
    return-void

    .line 1070
    :cond_1
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2f

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 1071
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getClassOrNull(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    move-result-object v4

    .line 1074
    if-nez v4, :cond_2

    .line 1075
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "no such class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :cond_2
    if-eqz v3, :cond_e

    .line 1080
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1083
    :goto_1
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getMethods()Ljava/util/ArrayList;

    move-result-object v0

    .line 1084
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1092
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1096
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1100
    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1101
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "no such method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1092
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    .line 1093
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v7

    .line 1094
    if-eqz v3, :cond_5

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    if-nez v3, :cond_3

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1096
    :cond_6
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1105
    :cond_7
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1107
    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1135
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1145
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_0

    .line 1107
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    .line 1109
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    invoke-virtual {v0, v3, v1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    .line 1115
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 1116
    if-eqz v1, :cond_a

    .line 1117
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "  source file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    :cond_a
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v1

    .line 1122
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v6

    .line 1125
    if-eqz v1, :cond_b

    .line 1126
    const-string v0, "  method annotations:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1128
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1132
    :cond_b
    if-eqz v6, :cond_8

    .line 1133
    const-string v0, "  parameter annotations:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->size()I

    move-result v7

    move v1, v2

    .line 1135
    :goto_4
    if-ge v1, v7, :cond_8

    .line 1136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "    parameter "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v6, v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->get(I)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1139
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1127
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 1128
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1138
    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 1139
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private static fixPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v1, 0x5c

    .line 1034
    sget-char v0, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_0

    .line 1035
    const/16 v0, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1038
    :cond_0
    const-string v0, "/./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1040
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1041
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1048
    :cond_1
    :goto_0
    return-object p0

    .line 1044
    :cond_2
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getDexFileName(I)Ljava/lang/String;
    .registers 4

    .line 425
    if-nez p0, :cond_0

    .line 426
    const-string v0, "classes.dex"

    .line 428
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "classes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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
    invoke-static {v1, p0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->access$1000069(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;[Ljava/lang/String;)V

    .line 244
    new-instance v2, Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->runDx(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;)I

    move-result v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
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

    .line 951
    if-nez v0, :cond_0

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

    move-object v2, v1

    .line 965
    :goto_0
    sget-object v1, Lcom/s1243808733/android/dx/command/dexer/Main;->CREATED_BY:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v1

    .line 966
    if-nez v1, :cond_1

    .line 967
    const-string v1, ""

    .line 971
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "dx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "1.16"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 973
    sget-object v3, Lcom/s1243808733/android/dx/command/dexer/Main;->CREATED_BY:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2, v3, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const-string v1, "Dex-Location"

    const-string v3, "classes.dex"

    invoke-virtual {v2, v1, v3}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 976
    return-object v0

    .line 960
    :cond_0
    new-instance v1, Ljava/util/jar/Manifest;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 961
    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    .line 962
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 969
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private mergeIncremental([BLjava/io/File;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 461
    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dex/Dex;

    move-object v2, v1

    .line 462
    check-cast v2, Lcom/s1243808733/android/dex/Dex;

    .line 464
    if-eqz p1, :cond_0

    .line 465
    new-instance v0, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dex/Dex;-><init>([B)V

    .line 468
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    new-instance v2, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v2, p2}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/io/File;)V

    .line 472
    :cond_1
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 474
    check-cast v1, [B

    .line 485
    :goto_0
    return-object v1

    .line 475
    :cond_2
    if-nez v0, :cond_4

    move-object v0, v2

    .line 483
    :cond_3
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 484
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex;->writeTo(Ljava/io/OutputStream;)V

    .line 485
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 477
    :cond_4
    if-eqz v2, :cond_3

    .line 480
    sget-object v1, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    new-instance v4, Lcom/s1243808733/android/dx/merge/DexMerger;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/s1243808733/android/dex/Dex;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    invoke-direct {v4, v5, v1, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;-><init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/merge/DexMerger;->merge()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    goto :goto_1
.end method

.method private mergeLibraryDexBuffers([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    if-eqz p1, :cond_0

    .line 495
    new-instance v0, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dex/Dex;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 498
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    const/4 v0, 0x0

    check-cast v0, [B

    .line 504
    :goto_1
    return-object v0

    .line 497
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 498
    new-instance v3, Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dex/Dex;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_2
    new-instance v2, Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dex/Dex;

    sget-object v1, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v2, v0, v1, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;-><init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->merge()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getBytes()[B

    move-result-object v0

    goto :goto_1
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

    if-nez v0, :cond_0

    const-string v0, "-."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    .line 991
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
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
    sget-object v1, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 773
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic()I

    .line 774
    return-object v0
.end method

.method private processAllFiles()Z
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 514
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->createDexFile()V

    .line 516
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    .line 520
    :cond_0
    iput-boolean v9, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    .line 521
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v11, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    .line 522
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 525
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v2, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v3, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    int-to-long v4, v9

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v7, v0, v10}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    .line 530
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 536
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/command/dexer/Main$MainDexListFilter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V

    :goto_0
    move v1, v9

    .line 540
    :goto_1
    array-length v2, v11

    if-lt v1, v2, :cond_3

    .line 544
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 545
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Too many classes in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "--main-dex-list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", main dex capacity exceeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :catch_0
    move-exception v0

    .line 586
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 587
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classTranslatorPool:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x258

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 588
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 589
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classDefItemConsumer:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x258

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 591
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->addToDexFutures:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 606
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    if-nez v0, :cond_8

    .line 622
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 623
    if-eqz v0, :cond_c

    .line 624
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-ne v0, v10, :cond_b

    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "; aborting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v9

    .line 642
    :goto_4
    return v0

    .line 536
    :cond_2
    :try_start_2
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/command/dexer/Main$BestEffortMainDexListFilter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V

    goto/16 :goto_0

    .line 541
    :cond_3
    aget-object v2, v11, v1

    invoke-direct {p0, v2, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->processOne(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 549
    :cond_4
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    if-eqz v1, :cond_5

    .line 553
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexRotationLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing; {:try_start_2 .. :try_end_2} :catch_0

    .line 554
    :goto_5
    :try_start_3
    iget v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxMethodIdsInProcess:I

    if-gtz v2, :cond_6

    iget v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->maxFieldIdsInProcess:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gtz v2, :cond_6

    :try_start_4
    monitor-exit v1

    .line 563
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->rotateDexFile()V

    .line 567
    :cond_5
    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/Main$RemoveModuleInfoFilter;

    new-instance v2, Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/command/dexer/Main$RemoveModuleInfoFilter;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V

    move v0, v9

    .line 568
    :goto_6
    array-length v2, v11

    if-ge v0, v2, :cond_1

    .line 569
    aget-object v2, v11, v0

    invoke-direct {p0, v2, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->processOne(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V
    :try_end_4
    .catch Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing; {:try_start_4 .. :try_end_4} :catch_0

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 556
    :cond_6
    :try_start_5
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexRotationLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_5

    .line 554
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0

    .line 573
    :cond_7
    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/Main$RemoveModuleInfoFilter;

    sget-object v0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->acceptAll:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$RemoveModuleInfoFilter;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V

    move v0, v9

    .line 574
    :goto_7
    array-length v2, v11

    if-ge v0, v2, :cond_1

    .line 575
    aget-object v2, v11, v0

    invoke-direct {p0, v2, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->processOne(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V
    :try_end_6
    .catch Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing; {:try_start_6 .. :try_end_6} :catch_0

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 591
    :cond_8
    :try_start_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 593
    :try_start_8
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    :catch_2
    move-exception v0

    .line 597
    :try_start_9
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 598
    const/16 v3, 0xa

    if-ge v2, v3, :cond_a

    .line 599
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz v2, :cond_9

    .line 600
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v3, "Uncaught translation error:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    .line 606
    :catch_3
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

    throw v1

    .line 603
    :cond_9
    :try_start_a
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Uncaught translation error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    .line 614
    :catch_4
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

    .line 606
    :cond_a
    :try_start_b
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Too many errors"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 624
    :cond_b
    const-string v0, "s"

    goto/16 :goto_3

    .line 629
    :cond_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    if-nez v0, :cond_d

    move v0, v10

    .line 630
    goto/16 :goto_4

    .line 633
    :cond_d
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-nez v0, :cond_e

    .line 634
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "no classfiles specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v9

    .line 635
    goto/16 :goto_4

    .line 638
    :cond_e
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->statistics:Z

    if-eqz v0, :cond_f

    .line 639
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dumpStatistics(Ljava/io/PrintStream;)V

    :cond_f
    move v0, v10

    .line 642
    goto/16 :goto_4
.end method

.method private processClass(Ljava/lang/String;[B)Z
    .registers 6

    .line 750
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    if-nez v0, :cond_0

    .line 751
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->checkClassName(Ljava/lang/String;)V

    .line 755
    :cond_0
    :try_start_0
    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V

    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;->call()Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->access$1000072(Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 764
    const/4 v0, 0x1

    return v0

    .line 755
    :catch_0
    move-exception v0

    .line 759
    throw v0

    :catch_1
    move-exception v0

    .line 761
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception parsing classes"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processFileBytes(Ljava/lang/String;J[B)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 697
    const-string v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 698
    const-string v2, "classes.dex"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 699
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    if-nez v2, :cond_1

    move v2, v0

    .line 701
    :goto_0
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    .line 702
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ignored resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 737
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 699
    goto :goto_0

    .line 708
    :cond_2
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v5, v5, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    if-eqz v5, :cond_3

    .line 709
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v5, v5, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "processing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    :cond_3
    invoke-static {p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 714
    if-eqz v3, :cond_6

    .line 716
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    if-eqz v2, :cond_4

    .line 717
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    monitor-enter v2

    .line 718
    :try_start_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    invoke-virtual {v3, v5, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 721
    :cond_4
    iget-wide v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->minimumFileAge:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_5

    move v0, v1

    .line 722
    goto :goto_1

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 724
    :cond_5
    invoke-direct {p0, v5, p4}, Lcom/s1243808733/android/dx/command/dexer/Main;->processClass(Ljava/lang/String;[B)Z

    goto :goto_1

    .line 728
    :cond_6
    if-eqz v4, :cond_7

    .line 729
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    monitor-enter v2

    .line 730
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    move v0, v1

    .line 732
    goto :goto_1

    .line 730
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 734
    :cond_7
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    monitor-enter v2

    .line 735
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    invoke-virtual {v0, v5, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v2

    move v0, v1

    .line 737
    goto :goto_1

    .line 735
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private processOne(Ljava/lang/String;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    .line 674
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;

    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;-><init>(Ljava/lang/String;ZLcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;)V

    .line 678
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->process()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->updateStatus(Z)V

    :cond_0
    return-void
.end method

.method private static readPathsFromFile(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    const/4 v0, 0x0

    check-cast v0, Ljava/io/BufferedReader;

    .line 435
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 436
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 440
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 445
    if-eqz v2, :cond_0

    .line 446
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_0
    return-void

    .line 441
    :cond_1
    :try_start_2
    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 445
    :goto_1
    if-eqz v2, :cond_2

    .line 446
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_2
    throw v1

    .line 440
    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method private rotateDexFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-direct {v2, p0, v3}, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->createDexFile()V

    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->writeDex(Lcom/s1243808733/android/dx/dex/file/DexFile;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

    move-result v0

    return v0
.end method

.method private runMonoDex()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 297
    move-object v0, v1

    check-cast v0, Ljava/io/File;

    .line 298
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-eqz v2, :cond_a

    .line 299
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "error: no incremental output name specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    const/4 v0, -0x1

    .line 351
    :goto_0
    return v0

    .line 304
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->minimumFileAge:J

    :cond_1
    move-object v2, v0

    .line 310
    :goto_1
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->processAllFiles()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    if-nez v0, :cond_3

    move v0, v3

    .line 315
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 319
    check-cast v0, [B

    .line 321
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/DexFile;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v4, v4, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 322
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->writeDex(Lcom/s1243808733/android/dx/dex/file/DexFile;)[B

    move-result-object v0

    .line 324
    if-nez v0, :cond_5

    .line 325
    const/4 v0, 0x2

    goto :goto_0

    .line 329
    :cond_5
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v4, v4, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-eqz v4, :cond_6

    .line 330
    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->mergeIncremental([BLjava/io/File;)[B

    move-result-object v0

    .line 333
    :cond_6
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->mergeLibraryDexBuffers([B)[B

    move-result-object v0

    .line 335
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    if-eqz v2, :cond_8

    .line 337
    check-cast v1, Lcom/s1243808733/android/dx/dex/file/DexFile;

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 339
    if-eqz v0, :cond_7

    .line 340
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    const-string v2, "classes.dex"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->createJar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 343
    const/4 v0, 0x3

    goto :goto_0

    .line 345
    :cond_8
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 346
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->openOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 347
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 348
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    :cond_9
    move v0, v3

    .line 351
    goto/16 :goto_0

    :cond_a
    move-object v2, v0

    goto :goto_1
.end method

.method private runMultiDex()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v0, Lcom/s1243808733/android/dx/command/dexer/Main;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classesInMainDex:Ljava/util/Set;

    .line 360
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->classesInMainDex:Ljava/util/Set;

    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->readPathsFromFile(Ljava/lang/String;Ljava/util/Collection;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    .line 365
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->processAllFiles()Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->libraryDexBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 370
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    const-string v1, "Library dex files are not supported in multi-dex mode"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;

    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-direct {v3, p0, v4}, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/DexFile;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputDex:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 382
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 383
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x258

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timed out waiting for dex writer threads."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    :catch_0
    move-exception v0

    .line 392
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 393
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A dex writer thread has been interrupted."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputFutures:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 388
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_6

    .line 399
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    if-eqz v0, :cond_8

    move v2, v1

    .line 400
    :goto_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_7

    .line 405
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->createJar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 406
    const/4 v0, 0x3

    goto :goto_0

    .line 387
    :cond_6
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 388
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 393
    :catch_1
    move-exception v0

    .line 395
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 396
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected exception in dex writer thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_7
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->outputResources:Ljava/util/TreeMap;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->getDexFileName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 408
    :cond_8
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 409
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/s1243808733/android/dx/command/dexer/Main;->$assertionsDisabled:Z

    if-nez v0, :cond_9

    .line 410
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    move v2, v1

    .line 411
    :goto_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 412
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->getDexFileName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 414
    :try_start_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->dexOutputArrays:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    invoke-direct {p0, v4}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    .line 411
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 414
    :catchall_0
    move-exception v0

    .line 416
    invoke-direct {p0, v4}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    throw v0

    :cond_a
    move v0, v1

    goto/16 :goto_0
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
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 790
    :goto_0
    return-object v0

    .line 779
    :catch_0
    move-exception v0

    .line 782
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "\ntrouble processing:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 789
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->errors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 790
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    goto :goto_0

    .line 786
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printContext(Ljava/io/PrintStream;)V

    goto :goto_1
.end method

.method private updateStatus(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 684
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->anyFilesProcessed:Z

    return-void
.end method

.method private writeDex(Lcom/s1243808733/android/dx/dex/file/DexFile;)[B
    .registers 7

    const/4 v1, 0x0

    .line 848
    move-object v0, v1

    check-cast v0, [B

    .line 852
    :try_start_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 858
    const/4 v2, 0x0

    check-cast v2, Ljava/io/Writer;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex(Ljava/io/Writer;Z)[B

    .line 859
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    invoke-direct {p0, p1, v2, v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->dumpMethod(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    .line 868
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->statistics:Z

    if-eqz v2, :cond_0

    .line 869
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStatistics()Lcom/s1243808733/android/dx/dex/file/Statistics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/Statistics;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    if-eqz v2, :cond_1

    .line 873
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v1, v0

    .line 886
    :goto_1
    return-object v1

    .line 865
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    invoke-virtual {p1, v0, v2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex(Ljava/io/Writer;Z)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 869
    :catchall_0
    move-exception v0

    .line 872
    :try_start_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    if-eqz v2, :cond_3

    .line 873
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 877
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v2, v2, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz v2, :cond_4

    .line 878
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v3, "\ntrouble writing output:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 884
    :goto_2
    check-cast v1, [B

    goto :goto_1

    .line 881
    :cond_4
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\ntrouble writing output: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
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
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->makeOptionsObjects()V

    .line 278
    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    .line 279
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->openOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->humanOutWriter:Ljava/io/OutputStreamWriter;

    :cond_0
    move-object v1, v0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main;->args:Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->runMultiDex()I

    move-result v0

    .line 291
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    :goto_0
    return v0

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->runMonoDex()I

    move-result v0

    .line 291
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->closeOutput(Ljava/io/OutputStream;)V

    throw v0
.end method
