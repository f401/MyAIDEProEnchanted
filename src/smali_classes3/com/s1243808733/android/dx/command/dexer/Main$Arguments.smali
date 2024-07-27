.class public Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;
    }
.end annotation


# static fields
.field private static final INCREMENTAL_OPTION:Ljava/lang/String; = "--incremental"

.field private static final INPUT_LIST_OPTION:Ljava/lang/String; = "--input-list"

.field private static final MAIN_DEX_LIST_OPTION:Ljava/lang/String; = "--main-dex-list"

.field private static final MINIMAL_MAIN_DEX_OPTION:Ljava/lang/String; = "--minimal-main-dex"

.field private static final MULTI_DEX_OPTION:Ljava/lang/String; = "--multi-dex"

.field private static final NUM_THREADS_OPTION:Ljava/lang/String; = "--num-threads"


# instance fields
.field public allowAllInterfaceMethodInvokes:Z

.field public cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

.field public final context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

.field public coreLibrary:Z

.field public debug:Z

.field public dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

.field public dontOptimizeListFile:Ljava/lang/String;

.field public dumpWidth:I

.field public emptyOk:Z

.field public fileNames:[Ljava/lang/String;

.field public forceJumbo:Z

.field public humanOutName:Ljava/lang/String;

.field public incremental:Z

.field private inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jarOutput:Z

.field public keepClassesInJar:Z

.field public localInfo:Z

.field public mainDexListFile:Ljava/lang/String;

.field public maxNumberOfIdxPerDex:I

.field public methodToDump:Ljava/lang/String;

.field public minSdkVersion:I

.field public minimalMainDex:Z

.field public multiDex:Z

.field public numThreads:I

.field public optimize:Z

.field public optimizeListFile:Ljava/lang/String;

.field public outName:Ljava/lang/String;

.field private outputIsDirectDex:Z

.field private outputIsDirectory:Z

.field public positionInfo:I

.field public statistics:Z

.field public strictNameCheck:Z

.field public verbose:Z

.field public verboseDump:Z

.field public warnings:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1383
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dexer/DxContext;-><init>()V

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->warnings:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    iput v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    const/16 v0, 0xd

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    iput v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    .line 1379
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-void
.end method

.method static synthetic access$1000069(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->parse([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$L1000055()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->MAIN_DEX_LIST_OPTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000055(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->MAIN_DEX_LIST_OPTION:Ljava/lang/String;

    return-void
.end method

.method private parse([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1619
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    .line 1621
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    .line 1623
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getRemaining()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    .line 1624
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1627
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1631
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-nez v0, :cond_2

    .line 1632
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "no input files specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1633
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1635
    :cond_1
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-eqz v0, :cond_2

    .line 1636
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v1, "ignoring input files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1639
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1640
    const-string v0, "-"

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    .line 1643
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-nez v0, :cond_4

    .line 1644
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "--main-dex-list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is only supported in combination with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "--multi-dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1646
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1649
    :cond_4
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-nez v0, :cond_6

    .line 1650
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "--minimal-main-dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " is only supported in combination with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "--multi-dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "--main-dex-list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1652
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1655
    :cond_6
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-eqz v0, :cond_7

    .line 1656
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "--incremental"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not supported with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "--multi-dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1658
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1661
    :cond_7
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    if-eqz v0, :cond_8

    .line 1662
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unsupported output \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "--multi-dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " supports only archive or directory output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1664
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1667
    :cond_8
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-nez v0, :cond_9

    .line 1668
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v2, "classes.dex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1671
    :cond_9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->makeOptionsObjects()V

    return-void
.end method

.method private parseFlags(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1489
    :goto_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1490
    :cond_0
    const-string v0, "--debug"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1491
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    goto :goto_0

    .line 1492
    :cond_1
    const-string v0, "--no-warning"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1493
    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->warnings:Z

    goto :goto_0

    .line 1494
    :cond_2
    const-string v0, "--verbose"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1495
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    goto :goto_0

    .line 1496
    :cond_3
    const-string v0, "--verbose-dump"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1497
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    goto :goto_0

    .line 1498
    :cond_4
    const-string v0, "--no-files"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1499
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    goto :goto_0

    .line 1500
    :cond_5
    const-string v0, "--no-optimize"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1501
    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    goto :goto_0

    .line 1502
    :cond_6
    const-string v0, "--no-strict"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1503
    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    goto :goto_0

    .line 1504
    :cond_7
    const-string v0, "--core-library"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1505
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    goto :goto_0

    .line 1506
    :cond_8
    const-string v0, "--statistics"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1507
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->statistics:Z

    goto :goto_0

    .line 1508
    :cond_9
    const-string v0, "--optimize-list="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1509
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1510
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "--optimize-list and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "--no-optimize-list are incompatible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1512
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1514
    :cond_a
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 1515
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 1516
    :cond_b
    const-string v0, "--no-optimize-list="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1517
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1518
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "--optimize-list and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "--no-optimize-list are incompatible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1522
    :cond_c
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 1523
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 1524
    :cond_d
    const-string v0, "--keep-classes"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1525
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    goto/16 :goto_0

    .line 1526
    :cond_e
    const-string v0, "--output="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1527
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1528
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1529
    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 1530
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    goto/16 :goto_0

    .line 1531
    :cond_f
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/android/dex/util/FileUtils;->hasArchiveSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1532
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_0

    .line 1533
    :cond_10
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1535
    :cond_11
    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 1536
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    goto/16 :goto_0

    .line 1538
    :cond_12
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown output extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1540
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1542
    :cond_13
    const-string v0, "--dump-to="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1543
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1544
    :cond_14
    const-string v0, "--dump-width="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1545
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    goto/16 :goto_0

    .line 1546
    :cond_15
    const-string v0, "--dump-method="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1547
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    .line 1548
    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_0

    .line 1549
    :cond_16
    const-string v0, "--positions="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1550
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1551
    const-string v1, "none"

    if-ne v0, v1, :cond_17

    .line 1552
    iput v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_0

    .line 1553
    :cond_17
    const-string v1, "important"

    if-ne v0, v1, :cond_18

    .line 1554
    const/4 v0, 0x3

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_0

    .line 1555
    :cond_18
    const-string v1, "lines"

    if-ne v0, v1, :cond_19

    .line 1556
    const/4 v0, 0x2

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_0

    .line 1558
    :cond_19
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown positions option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1560
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1562
    :cond_1a
    const-string v0, "--no-locals"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1563
    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    goto/16 :goto_0

    .line 1564
    :cond_1b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--num-threads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1565
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    goto/16 :goto_0

    .line 1566
    :cond_1c
    const-string v0, "--incremental"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1567
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    goto/16 :goto_0

    .line 1568
    :cond_1d
    const-string v0, "--force-jumbo"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1569
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    goto/16 :goto_0

    .line 1570
    :cond_1e
    const-string v0, "--multi-dex"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1571
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    goto/16 :goto_0

    .line 1572
    :cond_1f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--main-dex-list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1573
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 1574
    :cond_20
    const-string v0, "--minimal-main-dex"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1575
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    goto/16 :goto_0

    .line 1576
    :cond_21
    const-string v0, "--set-max-idx-number="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1577
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    goto/16 :goto_0

    .line 1578
    :cond_22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--input-list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1579
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1581
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    .line 1582
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$1000030(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 1584
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to read input list file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1587
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1589
    :cond_23
    const-string v0, "--min-sdk-version="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1590
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v1

    .line 1591
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1597
    :goto_1
    if-ge v0, v3, :cond_24

    .line 1598
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "improper min-sdk-version option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1599
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1591
    :catch_1
    move-exception v0

    .line 1595
    const/4 v0, -0x1

    goto :goto_1

    .line 1601
    :cond_24
    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    goto/16 :goto_0

    .line 1602
    :cond_25
    const-string v0, "--allow-all-interface-method-invokes"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1603
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    goto/16 :goto_0

    .line 1605
    :cond_26
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1606
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0
.end method


# virtual methods
.method public makeOptionsObjects()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1688
    new-instance v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/cf/CfOptions;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    .line 1689
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    iput v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    .line 1690
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    iput-boolean v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->localInfo:Z

    .line 1691
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    iput-boolean v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->strictNameCheck:Z

    .line 1692
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    iput-boolean v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->optimize:Z

    .line 1693
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->optimizeListFile:Ljava/lang/String;

    .line 1694
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->dontOptimizeListFile:Ljava/lang/String;

    .line 1695
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->statistics:Z

    iput-boolean v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->statistics:Z

    .line 1697
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->warnings:Z

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    .line 1703
    :goto_0
    new-instance v0, Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/DexOptions;-><init>(Ljava/io/PrintStream;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 1704
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    iput v1, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 1705
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    iput-boolean v1, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->forceJumbo:Z

    .line 1706
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    iput-boolean v1, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    return-void

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->noop:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public parseFlags([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1681
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    return-void
.end method
