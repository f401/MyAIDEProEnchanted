.class public Lorg/apache/tools/ant/taskdefs/MakeUrl;
.super Lorg/apache/tools/ant/Task;
.source "MakeUrl.java"


# static fields
.field public static final ERROR_MISSING_FILE:Ljava/lang/String; = "A source file is missing: "

.field public static final ERROR_NO_FILES:Ljava/lang/String; = "No files defined"

.field public static final ERROR_NO_PROPERTY:Ljava/lang/String; = "No property defined"


# instance fields
.field private file:Ljava/io/File;

.field private filesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Path;",
            ">;"
        }
    .end annotation
.end field

.field private property:Ljava/lang/String;

.field private separator:Ljava/lang/String;

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 65
    const-string v0, " "

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->separator:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->filesets:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->paths:Ljava/util/List;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->validate:Z

    return-void
.end method

.method private filesetsToURL()Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->filesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, ""

    .line 163
    :goto_0
    return-object v0

    .line 149
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->filesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v6

    .line 152
    invoke-virtual {v6}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_1

    aget-object v1, v7, v3

    .line 153
    new-instance v9, Ljava/io/File;

    invoke-virtual {v6}, Lorg/apache/tools/ant/DirectoryScanner;->getBasedir()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, v9}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->validateFile(Ljava/io/File;)V

    .line 155
    invoke-direct {p0, v9}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->toURL(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/4 v9, 0x4

    invoke-virtual {p0, v1, v9}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->log(Ljava/lang/String;I)V

    .line 158
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 152
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 161
    goto :goto_1

    .line 163
    :cond_2
    invoke-direct {p0, v4, v1}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->stripTrailingSeparator(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private pathsToURL()Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, ""

    .line 207
    :goto_0
    return-object v0

    .line 194
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Path;

    .line 196
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_1

    aget-object v1, v6, v3

    .line 197
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, v8}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->validateFile(Ljava/io/File;)V

    .line 199
    invoke-direct {p0, v8}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->toURL(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/4 v8, 0x4

    invoke-virtual {p0, v1, v8}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->log(Ljava/lang/String;I)V

    .line 202
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 196
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 205
    goto :goto_1

    .line 207
    :cond_2
    invoke-direct {p0, v4, v1}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->stripTrailingSeparator(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private stripTrailingSeparator(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 5

    .line 176
    if-lez p2, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->separator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 178
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private toURL(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 283
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private validate()V
    .registers 3

    .line 266
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->property:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->file:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->filesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    return-void

    .line 270
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No files defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No property defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateFile(Ljava/io/File;)V
    .registers 4

    .line 217
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->validate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    return-void

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A source file is missing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addFileSet(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->filesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addPath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->validate()V

    .line 232
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->filesetsToURL()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->file:Ljava/io/File;

    if-nez v1, :cond_2

    .line 248
    :goto_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->pathsToURL()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 256
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->property:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->log(Ljava/lang/String;I)V

    .line 257
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->property:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->validateFile(Ljava/io/File;)V

    .line 241
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->file:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/MakeUrl;->toURL(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 253
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->file:Ljava/io/File;

    .line 98
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->property:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->separator:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setValidate(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MakeUrl;->validate:Z

    .line 127
    return-void
.end method
