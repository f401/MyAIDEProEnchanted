.class public Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;
.super Lorg/apache/tools/ant/types/FileSet;
.source "ClassfileSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/optional/depend/ClassfileSet$ClassRoot;
    }
.end annotation


# instance fields
.field private rootClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rootFileSets:Ljava/util/List;
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

    .line 80
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootClasses:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootFileSets:Ljava/util/List;

    .line 81
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;)V
    .registers 4

    .line 89
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootClasses:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootFileSets:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootClasses:Ljava/util/List;

    iget-object v1, p1, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootClasses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;
    .registers 2

    .line 186
    const-class v0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;

    return-object v0
.end method


# virtual methods
.method public addConfiguredRoot(Lorg/apache/tools/ant/types/optional/depend/ClassfileSet$ClassRoot;)V
    .registers 4

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootClasses:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet$ClassRoot;->getClassname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public addRootFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootFileSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->setChecked(Z)V

    .line 103
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->getRef()Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;

    move-result-object p0

    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;-><init>(Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;)V

    return-object v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->isChecked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    monitor-exit p0

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/FileSet;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 177
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 179
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->setChecked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :cond_2
    monitor-exit p0

    goto :goto_0
.end method

.method public getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;
    .registers 12

    const/16 v9, 0x2e

    .line 123
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 127
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 128
    new-instance v1, Lorg/apache/tools/ant/types/optional/depend/DependScanner;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner;-><init>(Lorg/apache/tools/ant/DirectoryScanner;)V

    .line 129
    new-instance v3, Ljava/util/Vector;

    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootClasses:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 131
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    .line 134
    const-string v8, ".class"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 135
    const-string v8, ".class"

    invoke-static {v7, v8}, Lorg/apache/tools/ant/util/StringUtils;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    const/16 v8, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5c

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 138
    invoke-virtual {v3, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 133
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->addBasedir(Ljava/io/File;)V

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->setBasedir(Ljava/io/File;)V

    .line 144
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->setRootClasses(Ljava/util/Vector;)V

    .line 145
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->scan()V

    move-object v0, v1

    .line 146
    goto :goto_0
.end method

.method public setRootClass(Ljava/lang/String;)V
    .registers 3

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;->rootClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method
