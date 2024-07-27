.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "WLJspc.java"


# instance fields
.field private compileClasspath:Lorg/apache/tools/ant/types/Path;

.field private destinationDirectory:Ljava/io/File;

.field private destinationPackage:Ljava/lang/String;

.field private filesToDo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pathToPackage:Ljava/lang/String;

.field private sourceDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->pathToPackage:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->filesToDo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public execute()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/16 v11, 0xc

    const/16 v10, 0xa

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationPackage:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 125
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 126
    const/16 v3, 0x2e

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->pathToPackage:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 135
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 141
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 142
    invoke-virtual {v3, v9}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 143
    const-string v1, "weblogic.jspc"

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    .line 146
    new-array v4, v11, [Ljava/lang/String;

    .line 149
    const-string v1, "-d"

    aput-object v1, v4, v2

    .line 152
    const/4 v1, 0x2

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 153
    const/4 v5, 0x3

    const-string v6, "-docroot"

    aput-object v6, v4, v1

    .line 154
    const/4 v1, 0x4

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 155
    const/4 v5, 0x5

    const-string v6, "-keepgenerated"

    aput-object v6, v4, v1

    .line 158
    const/4 v1, 0x6

    const-string v6, "-compilerclass"

    aput-object v6, v4, v5

    .line 159
    const/4 v5, 0x7

    const-string v6, "sun.tools.javac.Main"

    aput-object v6, v4, v1

    .line 163
    const/16 v1, 0x8

    const-string v6, "-classpath"

    aput-object v6, v4, v5

    .line 164
    const/16 v5, 0x9

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 166
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->scanDir([Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compiling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->filesToDo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " JSP files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->filesToDo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    const-string v7, "-package"

    aput-object v7, v4, v5

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 178
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationPackage:Ljava/lang/String;

    aput-object v1, v4, v10

    .line 184
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xb

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    .line 185
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Java;->clearArgs()V

    move v1, v2

    .line 188
    :goto_2
    if-ge v1, v11, :cond_4

    .line 189
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v7

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    :cond_3
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v8, "_."

    invoke-virtual {p0, v1, v7, v8}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "._"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    goto :goto_1

    .line 193
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 194
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava()I

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed to compile"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 121
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "package attribute must be present."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 116
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    .line 117
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v3, "src directory %s is not valid"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-direct {v1, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 111
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    .line 112
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v3, "destination directory %s is not valid"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-direct {v1, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 198
    :cond_8
    return-void
.end method

.method protected replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    new-instance v3, Ljava/util/StringTokenizer;

    const/4 v0, 0x1

    invoke-direct {v3, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    .line 312
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 313
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, p3

    .line 315
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected scanDir([Ljava/lang/String;)V
    .registers 16

    const/4 v13, 0x3

    const/4 v1, 0x0

    const/4 v12, -0x1

    .line 258
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 259
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v6, p1, v2

    .line 260
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->pathToPackage:Ljava/lang/String;

    .line 275
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 276
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v12, :cond_3

    .line 277
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 278
    :goto_2
    const-string v9, ".jsp"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 279
    if-ne v9, v12, :cond_4

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Not a JSP"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v13}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;I)V

    .line 259
    :cond_1
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 271
    :cond_2
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v9, "_/"

    invoke-virtual {p0, v0, v8, v9}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->pathToPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 277
    goto :goto_2

    .line 285
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    invoke-direct {v8, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-lez v0, :cond_5

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: file modified in the future: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;I)V

    .line 293
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v0, v10, v8

    if-lez v0, :cond_1

    .line 294
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->filesToDo:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recompiling File "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v13}, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->log(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 298
    :cond_6
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationDirectory:Ljava/io/File;

    .line 241
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->destinationPackage:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/WLJspc;->sourceDirectory:Ljava/io/File;

    .line 231
    return-void
.end method
