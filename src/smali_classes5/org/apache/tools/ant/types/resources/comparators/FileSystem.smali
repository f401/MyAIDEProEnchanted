.class public Lorg/apache/tools/ant/types/resources/comparators/FileSystem;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "FileSystem.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    return-void
.end method

.method private compare(Ljava/io/File;Ljava/io/File;)I
    .registers 6

    .line 57
    invoke-static {p1, p2}, Lorg/apache/tools/ant/UnknownElement$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    const/4 v0, 0x0

    .line 66
    :goto_7
    return v0

    .line 60
    :cond_8
    sget-object v0, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->isLeadingPath(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 61
    const/4 v0, -0x1

    goto :goto_7

    .line 63
    :cond_12
    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/util/FileUtils;->isLeadingPath(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 64
    const/4 v0, 0x1

    goto :goto_7

    .line 66
    :cond_1a
    sget-object v1, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda2;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/util/FileUtils;)V

    invoke-interface {v1, v2}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 69
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_7
.end method

.method private file(Lorg/apache/tools/ant/types/Resource;)Ljava/io/File;
    .registers 4

    .line 50
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/Resource;)V

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 53
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method static synthetic lambda$file$0(Lorg/apache/tools/ant/types/Resource;)Ljava/lang/ClassCastException;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t provide files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method protected resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .registers 5

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->file(Lorg/apache/tools/ant/types/Resource;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->file(Lorg/apache/tools/ant/types/Resource;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
