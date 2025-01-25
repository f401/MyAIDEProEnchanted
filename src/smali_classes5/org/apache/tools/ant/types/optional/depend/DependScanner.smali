.class public Lorg/apache/tools/ant/types/optional/depend/DependScanner;
.super Lorg/apache/tools/ant/DirectoryScanner;
.source "DependScanner.java"


# static fields
.field public static final DEFAULT_ANALYZER_CLASS:Ljava/lang/String; = "org.apache.tools.ant.util.depend.bcel.FullAnalyzer"


# instance fields
.field private additionalBaseDirs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private included:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parentScanner:Lorg/apache/tools/ant/DirectoryScanner;

.field private rootClasses:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/DirectoryScanner;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->additionalBaseDirs:Ljava/util/Vector;

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->parentScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 70
    return-void
.end method

.method static synthetic lambda$scan$0(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 121
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$scan$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBasedir(Ljava/io/File;)V
    .registers 3

    .line 221
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->additionalBaseDirs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public addDefaultExcludes()V
    .registers 1

    .line 140
    return-void
.end method

.method public getExcludedDirectories()[Ljava/lang/String;
    .registers 2

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExcludedFiles()[Ljava/lang/String;
    .registers 2

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIncludedDirectories()[Ljava/lang/String;
    .registers 2

    .line 166
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getIncludedDirsCount()I
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getIncludedFiles()[Ljava/lang/String;
    .registers 3

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->included:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->getIncludedFilesCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getIncludedFilesCount()I
    .registers 2

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->included:Ljava/util/Vector;

    if-eqz v0, :cond_b

    .line 97
    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 95
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_11

    .line 93
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNotIncludedDirectories()[Ljava/lang/String;
    .registers 2

    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotIncludedFiles()[Ljava/lang/String;
    .registers 2

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$scan$2$DependScanner(Ljava/util/Set;Ljava/lang/String;)Z
    .registers 5

    .line 131
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->basedir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public synthetic lambda$scan$3$DependScanner(Ljava/lang/String;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->included:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public scan()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->included:Ljava/util/Vector;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a2

    .line 108
    :try_start_8
    const-string v0, "org.apache.tools.ant.util.depend.bcel.FullAnalyzer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    const-class v1, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_88
    .catchall {:try_start_8 .. :try_end_1a} :catchall_a2

    .line 118
    :try_start_1a
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->basedir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addClassPath(Lorg/apache/tools/ant/types/Path;)V

    .line 120
    iget-object v1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->additionalBaseDirs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda3;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda4;

    .line 121
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    iget-object v1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->rootClasses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 125
    iget-object v1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->parentScanner:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 126
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 129
    invoke-interface {v0}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->getClassDependencies()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda5;

    .line 130
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda6;-><init>(Lorg/apache/tools/ant/types/optional/depend/DependScanner;Ljava/util/Set;)V

    .line 131
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/optional/depend/DependScanner;)V

    .line 132
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_86
    .catchall {:try_start_1a .. :try_end_86} :catchall_a2

    .line 133
    monitor-exit p0

    return-void

    .line 115
    :catch_88
    move-exception v0

    .line 116
    :try_start_89
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load dependency analyzer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "org.apache.tools.ant.util.depend.bcel.FullAnalyzer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_a2
    .catchall {:try_start_89 .. :try_end_a2} :catchall_a2

    .line 106
    :catchall_a2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCaseSensitive(Z)V
    .registers 2

    .line 218
    return-void
.end method

.method public setExcludes([Ljava/lang/String;)V
    .registers 2

    .line 202
    return-void
.end method

.method public setIncludes([Ljava/lang/String;)V
    .registers 2

    .line 210
    return-void
.end method

.method public setRootClasses(Ljava/util/Vector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_1
    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->rootClasses:Ljava/util/Vector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
