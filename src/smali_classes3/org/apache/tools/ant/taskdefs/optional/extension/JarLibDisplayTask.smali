.class public Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;
.super Lorg/apache/tools/ant/Task;
.source "JarLibDisplayTask.java"


# instance fields
.field private libraryFile:Ljava/io/File;

.field private final libraryFileSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    return-void
.end method

.method private validate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File attribute not specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "\'%s\' is not a file."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 108
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File \'%s\' does not exist."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->validate()V

    .line 81
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;-><init>()V

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->displayLibrary(Ljava/io/File;)V

    .line 95
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 87
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getBasedir()Ljava/io/File;

    move-result-object v3

    .line 90
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 91
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->displayLibrary(Ljava/io/File;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    .line 61
    return-void
.end method
