.class public Lorg/apache/tools/ant/taskdefs/Replace;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Replace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Replace$FileInput;,
        Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;,
        Lorg/apache/tools/ant/taskdefs/Replace$NestedString;,
        Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private dir:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private failOnNoReplacements:Z

.field private fileCount:I

.field private preserveLastModified:Z

.field private properties:Ljava/util/Properties;

.field private propertyResource:Lorg/apache/tools/ant/types/Resource;

.field private replaceCount:I

.field private replaceFilterResource:Lorg/apache/tools/ant/types/Resource;

.field private replacefilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private sourceFile:Ljava/io/File;

.field private summary:Z

.field private token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

.field private value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Replace;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 64
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->sourceFile:Ljava/io/File;

    .line 65
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    .line 66
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    .line 68
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    .line 69
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceFilterResource:Lorg/apache/tools/ant/types/Resource;

    .line 70
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    .line 73
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    .line 77
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->summary:Z

    .line 80
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->encoding:Ljava/lang/String;

    .line 84
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->preserveLastModified:Z

    .line 85
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->failOnNoReplacements:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Replace;)Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/util/Properties;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Replace;)Lorg/apache/tools/ant/taskdefs/Replace$NestedString;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    return-object v0
.end method

.method static synthetic access$304(Lorg/apache/tools/ant/taskdefs/Replace;)I
    .registers 2

    .line 60
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method private buildFilterChain(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4

    .line 712
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    .line 714
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setInputBuffer(Ljava/lang/StringBuffer;)V

    .line 715
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->getOutputBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    goto :goto_0

    .line 717
    :cond_0
    return-object p1
.end method

.method private createPrimaryfilter()Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;
    .registers 4

    .line 909
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    .line 910
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 911
    return-object v0
.end method

.method private flushFilterChain()V
    .registers 3

    .line 694
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 695
    return-void
.end method

.method private getOrderedIterator(Ljava/util/Properties;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 938
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 939
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 940
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private logFilterChain(Ljava/lang/String;)V
    .registers 4

    .line 725
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/lang/String;)V

    .line 726
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 731
    return-void
.end method

.method private processFile(Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 643
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 648
    iget v9, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    .line 649
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->logFilterChain(Ljava/lang/String;)V

    .line 652
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Replace;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 653
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 652
    const-string v2, "rep"

    const-string v3, ".tmp"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 655
    :try_start_1
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;

    invoke-direct {v2, p0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 656
    :try_start_2
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;

    invoke-direct {v3, p0, v1}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 657
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->getOutputBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->buildFilterChain(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->setInputBuffer(Ljava/lang/StringBuffer;)V

    .line 659
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->readChunk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->processFilterChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->process()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 679
    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 680
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 682
    :cond_1
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 665
    :cond_2
    :try_start_9
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->flushFilterChain()V

    .line 667
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 668
    :try_start_a
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->close()V

    .line 669
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    if-eq v0, v9, :cond_5

    move v0, v7

    .line 670
    :goto_3
    if-eqz v0, :cond_3

    .line 671
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->fileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->fileCount:I

    .line 672
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 673
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Replace;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 674
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Replace;->preserveLastModified:Z

    if-eqz v4, :cond_3

    .line 675
    invoke-virtual {v0, p1, v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 679
    :cond_3
    :try_start_c
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 680
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 687
    :cond_4
    return-void

    :cond_5
    move v0, v8

    .line 669
    goto :goto_3

    .line 644
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replace: source file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 655
    :catchall_3
    move-exception v3

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    goto/16 :goto_2
.end method

.method private processFilterChain()Z
    .registers 3

    .line 702
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 922
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 923
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 924
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 925
    :goto_0
    if-ltz v0, :cond_0

    .line 926
    add-int v3, v0, v1

    invoke-virtual {p1, v0, v3, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    add-int/2addr v0, v2

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 929
    :cond_0
    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 873
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 879
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 880
    return-void

    .line 874
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only filesystem resources are supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createReplaceToken()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;
    .registers 2

    .line 819
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    .line 822
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    return-object v0
.end method

.method public createReplaceValue()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;
    .registers 2

    .line 830
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    return-object v0
.end method

.method public createReplacefilter()Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;
    .registers 3

    .line 861
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    .line 862
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    return-object v0
.end method

.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 493
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 495
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move-object v1, v0

    .line 497
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Replace;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    const-string v4, "\r\n"

    const-string v5, "\n"

    invoke-direct {p0, v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/Replace;->stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v4, "\n"

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/Replace;->stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/tools/ant/taskdefs/Replace;->stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v5, "\n"

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/tools/ant/taskdefs/Replace;->stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->createPrimaryfilter()Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    move-result-object v5

    .line 508
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setValue(Ljava/lang/String;)V

    .line 513
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceFilterResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;

    move-result-object v0

    .line 515
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->getOrderedIterator(Ljava/util/Properties;)Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/tools/ant/util/StreamUtils;->iteratorAsStream(Ljava/util/Iterator;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/util/Properties;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 522
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->validateAttributes()V

    .line 524
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    .line 528
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->validateReplacefilters()V

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->fileCount:I

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    .line 532
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->sourceFile:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 533
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->processFile(Ljava/io/File;)V

    .line 536
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 537
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_5

    aget-object v2, v4, v0

    .line 539
    :try_start_1
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/Replace;->processFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    :cond_4
    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    move-object v1, v0

    goto/16 :goto_0

    .line 544
    :cond_5
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_6

    .line 545
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 546
    const-class v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->processFile(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 558
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    .line 559
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    .line 560
    throw v0

    .line 550
    :cond_6
    :try_start_3
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->summary:Z

    if-eqz v0, :cond_7

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replaced "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " occurrences in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->fileCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " files."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Replace;->log(Ljava/lang/String;I)V

    .line 554
    :cond_7
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->failOnNoReplacements:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_9

    .line 558
    :cond_8
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    .line 559
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    .line 560
    return-void

    .line 555
    :cond_9
    :try_start_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "didn\'t replace anything"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getProperties(Ljava/io/File;)Ljava/util/Properties;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 611
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 623
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 625
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 626
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 630
    :cond_0
    return-object v0

    .line 625
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property resource (%s) cannot be loaded."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 625
    :catchall_1
    move-exception v1

    goto :goto_0
.end method

.method public synthetic lambda$execute$0$Replace(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5

    .line 516
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->createReplacefilter()Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setToken(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setValue(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public synthetic lambda$logFilterChain$1$Replace(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;)V
    .registers 5

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replacing in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->getReplaceValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Replace;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .registers 2

    .line 782
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    .line 783
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 811
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->encoding:Ljava/lang/String;

    .line 812
    return-void
.end method

.method public setFailOnNoReplacements(Z)V
    .registers 2

    .line 900
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->failOnNoReplacements:Z

    .line 901
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 738
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->sourceFile:Ljava/io/File;

    .line 739
    return-void
.end method

.method public setPreserveLastModified(Z)V
    .registers 2

    .line 890
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->preserveLastModified:Z

    .line 891
    return-void
.end method

.method public setPropertyFile(Ljava/io/File;)V
    .registers 3

    .line 840
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->setPropertyResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 841
    return-void
.end method

.method public setPropertyResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 2

    .line 853
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    .line 854
    return-void
.end method

.method public setReplaceFilterFile(Ljava/io/File;)V
    .registers 4

    .line 761
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->setReplaceFilterResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 763
    return-void
.end method

.method public setReplaceFilterResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 2

    .line 773
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceFilterResource:Lorg/apache/tools/ant/types/Resource;

    .line 774
    return-void
.end method

.method public setSummary(Z)V
    .registers 2

    .line 750
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->summary:Z

    .line 751
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 3

    .line 792
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->createReplaceToken()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->addText(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3

    .line 801
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->createReplaceValue()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->addText(Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method public validateAttributes()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->sourceFile:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_4

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 581
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 586
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 591
    :cond_3
    return-void

    .line 572
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Either the file or the dir attribute or nested resources must be specified"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 577
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    .line 578
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 582
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Either token or a nested replacefilter must be specified"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 587
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The token attribute must not be an empty string."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public validateReplacefilters()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 602
    return-void
.end method
