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
            "Ljava/util/List<",
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
.method static bridge synthetic -$$Nest$mparse(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->parse([Ljava/lang/String;)V

    return-void
.end method

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

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    .line 1272
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->warnings:Z

    .line 1275
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    .line 1278
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    .line 1281
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    .line 1284
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    .line 1287
    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    .line 1290
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1293
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    .line 1296
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    .line 1302
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    .line 1308
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 1314
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    .line 1317
    const/16 v3, 0xd

    iput v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    .line 1320
    const/4 v3, 0x2

    iput v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    .line 1323
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    .line 1326
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    .line 1330
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    .line 1333
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    .line 1339
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 1342
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    .line 1345
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    .line 1357
    iput v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    .line 1360
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    .line 1364
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    .line 1368
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    .line 1370
    const/high16 v1, 0x10000

    iput v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    .line 1373
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    .line 1375
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    .line 1376
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    .line 1379
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-void
.end method

.method private parse([Ljava/lang/String;)V
    .registers 4

    .line 1619
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    .line 1621
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    .line 1623
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getRemaining()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    .line 1624
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    .line 1626
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1627
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    .line 1630
    :cond_33
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_4c

    .line 1631
    iget-boolean p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-eqz p1, :cond_3d

    goto :goto_59

    .line 1632
    :cond_3d
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "no input files specified"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1633
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1635
    :cond_4c
    iget-boolean p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-eqz p1, :cond_59

    .line 1636
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v0, "ignoring input files"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1639
    :cond_59
    :goto_59
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    if-eqz p1, :cond_65

    .line 1640
    const-string p1, "-"

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    .line 1643
    :cond_65
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz p1, :cond_7d

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v0, :cond_6e

    goto :goto_7d

    .line 1644
    :cond_6e
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "--main-dex-list is only supported in combination with --multi-dex"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1646
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1649
    :cond_7d
    :goto_7d
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    if-eqz v0, :cond_97

    if-eqz p1, :cond_88

    iget-boolean p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz p1, :cond_88

    goto :goto_97

    .line 1650
    :cond_88
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "--minimal-main-dex is only supported in combination with --multi-dex and --main-dex-list"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1652
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1655
    :cond_97
    :goto_97
    iget-boolean p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz p1, :cond_af

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-nez v0, :cond_a0

    goto :goto_af

    .line 1656
    :cond_a0
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "--incremental is not supported with --multi-dex"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1658
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    :cond_af
    :goto_af
    if-eqz p1, :cond_d8

    .line 1661
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    if-nez v0, :cond_b6

    goto :goto_d8

    .line 1662
    :cond_b6
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported output \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\". --multi-dex supports only archive or directory output"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1664
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1667
    :cond_d8
    :goto_d8
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    if-eqz v0, :cond_ed

    if-nez p1, :cond_ed

    .line 1668
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v1, "classes.dex"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1671
    :cond_ed
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->makeOptionsObjects()V

    return-void
.end method

.method private parseFlags(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V
    .registers 6

    .line 1489
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getNext()Z

    move-result v0

    if-eqz v0, :cond_2b4

    .line 1490
    const-string v0, "--debug"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 1491
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    goto :goto_1

    .line 1492
    :cond_13
    const-string v0, "--no-warning"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 1493
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->warnings:Z

    goto :goto_1

    .line 1494
    :cond_1f
    const-string v0, "--verbose"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1495
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    goto :goto_1

    .line 1496
    :cond_2a
    const-string v0, "--verbose-dump"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1497
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    goto :goto_1

    .line 1498
    :cond_35
    const-string v0, "--no-files"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1499
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    goto :goto_1

    .line 1500
    :cond_40
    const-string v0, "--no-optimize"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1501
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    goto :goto_1

    .line 1502
    :cond_4b
    const-string v0, "--no-strict"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1503
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    goto :goto_1

    .line 1504
    :cond_56
    const-string v0, "--core-library"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1505
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    goto :goto_1

    .line 1506
    :cond_61
    const-string v0, "--statistics"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1507
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->statistics:Z

    goto :goto_1

    .line 1508
    :cond_6c
    const-string v0, "--optimize-list="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "--optimize-list and --no-optimize-list are incompatible."

    if-eqz v0, :cond_91

    .line 1509
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-nez v0, :cond_84

    .line 1514
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 1515
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    goto/16 :goto_1

    .line 1510
    :cond_84
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1512
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1516
    :cond_91
    const-string v0, "--no-optimize-list="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1517
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-nez v0, :cond_a7

    .line 1522
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 1523
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    goto/16 :goto_1

    .line 1518
    :cond_a7
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1520
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1524
    :cond_b4
    const-string v0, "--keep-classes"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1525
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    goto/16 :goto_1

    .line 1526
    :cond_c0
    const-string v0, "--output="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 1527
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1528
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1529
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 1530
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    goto/16 :goto_1

    .line 1531
    :cond_e1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/android/dex/util/FileUtils;->hasArchiveSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1532
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_1

    .line 1533
    :cond_ed
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v3, ".dex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11f

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1534
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    goto :goto_11f

    .line 1538
    :cond_102
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown output extension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1540
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1535
    :cond_11f
    :goto_11f
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 1536
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    goto/16 :goto_1

    .line 1542
    :cond_125
    const-string v0, "--dump-to="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 1543
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1544
    :cond_135
    const-string v0, "--dump-width="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 1545
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    goto/16 :goto_1

    .line 1546
    :cond_149
    const-string v0, "--dump-method="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1547
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    .line 1548
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_1

    .line 1549
    :cond_15b
    const-string v0, "--positions="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 1550
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1551
    const-string v2, "none"

    if-ne v0, v2, :cond_173

    .line 1552
    iput v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_1

    .line 1553
    :cond_173
    const-string v1, "important"

    if-ne v0, v1, :cond_17c

    .line 1554
    const/4 v0, 0x3

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_1

    .line 1555
    :cond_17c
    const-string v1, "lines"

    if-ne v0, v1, :cond_185

    .line 1556
    const/4 v0, 0x2

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_1

    .line 1558
    :cond_185
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown positions option: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1560
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1562
    :cond_1a0
    const-string v0, "--no-locals"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 1563
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    goto/16 :goto_1

    .line 1564
    :cond_1ac
    const-string v0, "--num-threads="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 1565
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->numThreads:I

    goto/16 :goto_1

    .line 1566
    :cond_1c0
    const-string v0, "--incremental"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 1567
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->incremental:Z

    goto/16 :goto_1

    .line 1568
    :cond_1cc
    const-string v0, "--force-jumbo"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    .line 1569
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    goto/16 :goto_1

    .line 1570
    :cond_1d8
    const-string v0, "--multi-dex"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 1571
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    goto/16 :goto_1

    .line 1572
    :cond_1e4
    const-string v0, "--main-dex-list="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 1573
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    goto/16 :goto_1

    .line 1574
    :cond_1f4
    const-string v0, "--minimal-main-dex"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_200

    .line 1575
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    goto/16 :goto_1

    .line 1576
    :cond_200
    const-string v0, "--set-max-idx-number="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_214

    .line 1577
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    goto/16 :goto_1

    .line 1578
    :cond_214
    const-string v0, "--input-list="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_257

    .line 1579
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1581
    :try_start_225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    .line 1582
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$smreadPathsFromFile(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_235
    .catch Ljava/io/IOException; {:try_start_225 .. :try_end_235} :catch_237

    goto/16 :goto_1

    .line 1584
    :catch_237
    move-exception p1

    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read input list file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1584
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1587
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1589
    :cond_257
    const-string v0, "--min-sdk-version="

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 1590
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    .line 1593
    :try_start_263
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_267
    .catch Ljava/lang/NumberFormatException; {:try_start_263 .. :try_end_267} :catch_268

    goto :goto_26a

    :catch_268
    move-exception v2

    const/4 v2, -0x1

    :goto_26a
    if-lt v2, v1, :cond_270

    .line 1601
    iput v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    goto/16 :goto_1

    .line 1598
    :cond_270
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "improper min-sdk-version option: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1599
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 1602
    :cond_289
    const-string v0, "--allow-all-interface-method-invokes"

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_295

    .line 1603
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    goto/16 :goto_1

    .line 1605
    :cond_295
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown option: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getCurrent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1606
    new-instance p1, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw p1

    :cond_2b4
    return-void
.end method


# virtual methods
.method public makeOptionsObjects()V
    .registers 3

    .line 1688
    new-instance v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/cf/CfOptions;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    .line 1689
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

    if-eqz v0, :cond_3c

    .line 1698
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    goto :goto_44

    .line 1700
    :cond_3c
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/s1243808733/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->noop:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    .line 1703
    :goto_44
    new-instance v0, Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/DexOptions;-><init>(Ljava/io/PrintStream;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 1704
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
.end method

.method public parseFlags([Ljava/lang/String;)V
    .registers 3

    .line 1681
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    return-void
.end method
