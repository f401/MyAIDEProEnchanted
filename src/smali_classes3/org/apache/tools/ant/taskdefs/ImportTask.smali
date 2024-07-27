.class public Lorg/apache/tools/ant/taskdefs/ImportTask;
.super Lorg/apache/tools/ant/Task;
.source "ImportTask.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private file:Ljava/lang/String;

.field private optional:Z

.field private prefixSeparator:Ljava/lang/String;

.field private final resources:Lorg/apache/tools/ant/types/resources/Union;

.field private targetPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/ImportTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 71
    const-string v0, "USE_PROJECT_NAME_AS_TARGET_PREFIX"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->targetPrefix:Ljava/lang/String;

    .line 72
    const-string v0, "."

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->prefixSeparator:Ljava/lang/String;

    .line 73
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Union;->setCache(Z)V

    .line 77
    return-void
.end method

.method private getFileAttributeResource()Lorg/apache/tools/ant/types/Resource;
    .registers 6

    .line 241
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->file:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 242
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->isExistingAbsoluteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/ImportTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 265
    :goto_0
    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Location;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    sget-object v0, Lorg/apache/tools/ant/taskdefs/ImportTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->file:Ljava/lang/String;

    .line 251
    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 252
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 256
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Location;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->file:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lorg/apache/tools/ant/types/resources/URLResource;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/URLResource;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ImportTask;->log(Ljava/lang/String;I)V

    .line 262
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->file:Ljava/lang/String;

    .line 263
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "failed to resolve %s relative to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Location;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasAlreadyBeenImported(Lorg/apache/tools/ant/types/Resource;Ljava/util/Vector;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    .line 275
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;

    .line 276
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 278
    const-class v1, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda1;

    .line 279
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 281
    invoke-virtual {p2}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/ImportTask;Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Ljava/net/URL;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private importResource(Lorg/apache/tools/ant/ProjectHelper;Lorg/apache/tools/ant/types/Resource;)V
    .registers 9

    const/4 v3, 0x3

    .line 171
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Importing file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Location;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imported from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Location;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->optional:Z

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 234
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->isInIncludeMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectHelper;->getImportStack()Ljava/util/Vector;

    move-result-object v0

    .line 185
    invoke-direct {p0, p2, v0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->hasAlreadyBeenImported(Lorg/apache/tools/ant/types/Resource;Ljava/util/Vector;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped already imported file:\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentTargetPrefix()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->isInIncludeMode()Z

    move-result v2

    .line 197
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentPrefixSeparator()Ljava/lang/String;

    move-result-object v3

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->isInIncludeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->targetPrefix:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->targetPrefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->prefixSeparator:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->isInIncludeMode()Z

    move-result v5

    .line 210
    invoke-static {v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/ImportTask;->setProjectHelperProps(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/ProjectHelperRepository;->getProjectHelperForBuildFile(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/ProjectHelper;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelper;->getImportStack()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectHelper;->getImportStack()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    const-string v5, "ant.projectHelper"

    invoke-virtual {v4, v5, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lorg/apache/tools/ant/ProjectHelper;->parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    const-string v5, "ant.projectHelper"

    invoke-virtual {v4, v5, p1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectHelper;->getImportStack()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 226
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectHelper;->getImportStack()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelper;->getImportStack()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 228
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-static {v1, v3, v2}, Lorg/apache/tools/ant/taskdefs/ImportTask;->setProjectHelperProps(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 203
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->isInIncludeMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->targetPrefix:Ljava/lang/String;

    goto :goto_1

    .line 205
    :cond_4
    const-string v0, "USE_PROJECT_NAME_AS_TARGET_PREFIX"

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->targetPrefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 206
    goto :goto_1

    .line 208
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->targetPrefix:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/apache/tools/ant/ProjectHelper;->addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :catchall_0
    move-exception v0

    invoke-static {v1, v3, v2}, Lorg/apache/tools/ant/taskdefs/ImportTask;->setProjectHelperProps(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    throw v0
.end method

.method private isExistingAbsoluteFile(Ljava/lang/String;)Z
    .registers 4

    .line 269
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOneOf(Ljava/lang/Object;Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Ljava/net/URL;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 287
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    instance-of v0, p1, Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_4

    .line 292
    if-eqz p3, :cond_2

    move-object v0, p1

    .line 293
    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    const-class v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 294
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :cond_2
    if-eqz p4, :cond_4

    .line 299
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    const-class v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    .line 300
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    .line 303
    goto :goto_0
.end method

.method private static setProjectHelperProps(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 3

    .line 336
    invoke-static {p0}, Lorg/apache/tools/ant/ProjectHelper;->setCurrentTargetPrefix(Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Lorg/apache/tools/ant/ProjectHelper;->setCurrentPrefixSeparator(Ljava/lang/String;)V

    .line 338
    invoke-static {p2}, Lorg/apache/tools/ant/ProjectHelper;->setInIncludeMode(Z)V

    .line 339
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 129
    return-void
.end method

.method public execute()V
    .registers 5

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->file:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 138
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.projectHelper"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    .line 144
    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelper;->getImportStack()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Location;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 159
    new-instance v1, Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/types/resources/Union;-><init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 160
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getFileAttributeResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 164
    :cond_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 165
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ImportTask;->importResource(Lorg/apache/tools/ant/ProjectHelper;Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "import requires file attribute or at least one nested resource"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to get location of import task"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "import requires support in ProjectHelper"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "import requires support in ProjectHelper"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "import only allowed as a top-level task"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_7
    return-void
.end method

.method protected final isInIncludeMode()Z
    .registers 3

    .line 322
    const-string v0, "include"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ImportTask;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$hasAlreadyBeenImported$0$ImportTask(Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Ljava/net/URL;Ljava/lang/Object;)Z
    .registers 6

    .line 282
    invoke-direct {p0, p4, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/ImportTask;->isOneOf(Ljava/lang/Object;Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method public setAs(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->targetPrefix:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->file:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setOptional(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->optional:Z

    .line 87
    return-void
.end method

.method public setPrefixSeparator(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ImportTask;->prefixSeparator:Ljava/lang/String;

    .line 119
    return-void
.end method
