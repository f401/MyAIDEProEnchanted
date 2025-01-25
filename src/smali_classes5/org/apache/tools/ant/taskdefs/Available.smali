.class public Lorg/apache/tools/ant/taskdefs/Available;
.super Lorg/apache/tools/ant/Task;
.source "Available.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Available$FileDir;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private classname:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private filepath:Lorg/apache/tools/ant/types/Path;

.field private ignoreSystemclasses:Z

.field private isTask:Z

.field private loader:Lorg/apache/tools/ant/AntClassLoader;

.field private property:Ljava/lang/String;

.field private resource:Ljava/lang/String;

.field private searchParents:Z

.field private type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Available;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 55
    const-string v0, "true"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->value:Ljava/lang/Object;

    .line 56
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    .line 57
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->ignoreSystemclasses:Z

    .line 58
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->searchParents:Z

    return-void
.end method

.method private checkClass(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 450
    :try_start_3
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->ignoreSystemclasses:Z

    if-eqz v2, :cond_22

    .line 451
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 452
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 453
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v2}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_1c} :catch_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_1c} :catch_55

    .line 455
    :try_start_1c
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_21} :catch_81
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_21} :catch_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1c .. :try_end_21} :catch_55

    .line 483
    :goto_21
    return v0

    .line 462
    :cond_22
    :try_start_22
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v2, :cond_46

    .line 463
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_29} :catch_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_22 .. :try_end_29} :catch_55

    goto :goto_21

    .line 475
    :catch_2a
    move-exception v0

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" was not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 478
    goto :goto_21

    .line 465
    :cond_46
    :try_start_46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 468
    if-eqz v2, :cond_7d

    .line 469
    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_54} :catch_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_46 .. :try_end_54} :catch_55

    goto :goto_21

    .line 479
    :catch_55
    move-exception v0

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load dependent class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" for class \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 483
    goto :goto_21

    .line 471
    :cond_7d
    :try_start_7d
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_80
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7d .. :try_end_80} :catch_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7d .. :try_end_80} :catch_55

    goto :goto_21

    .line 456
    :catch_81
    move-exception v1

    goto :goto_21
.end method

.method private checkFile()Z
    .registers 12

    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v1, 0x1

    .line 334
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_10

    .line 335
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Available;->checkFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 396
    :goto_f
    return v0

    .line 337
    :cond_10
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v4

    .line 338
    array-length v5, v4

    move v3, v2

    :goto_16
    if-ge v3, v5, :cond_171

    aget-object v0, v4, v3

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Searching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v10}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 340
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b1

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    .line 345
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    .line 346
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 347
    :cond_4d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    if-nez v0, :cond_67

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 349
    goto :goto_f

    .line 351
    :cond_67
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isDir()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 352
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found directory: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 354
    goto :goto_f

    .line 356
    :cond_89
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isFile()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 357
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 359
    goto/16 :goto_f

    :cond_ae
    move v0, v2

    .line 362
    goto/16 :goto_f

    .line 364
    :cond_b1
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_104

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_104

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 368
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    if-nez v3, :cond_e4

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 370
    goto/16 :goto_f

    .line 372
    :cond_e4
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isDir()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 374
    goto/16 :goto_f

    :cond_101
    move v0, v2

    .line 377
    goto/16 :goto_f

    .line 380
    :cond_104
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_13a

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_13a

    .line 381
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lorg/apache/tools/ant/taskdefs/Available;->checkFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13a

    move v0, v1

    .line 383
    goto/16 :goto_f

    .line 393
    :cond_136
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 388
    :cond_13a
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Available;->searchParents:Z

    if-eqz v6, :cond_16c

    if-eqz v0, :cond_16c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 389
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/apache/tools/ant/taskdefs/Available;->checkFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_136

    move v0, v1

    .line 391
    goto/16 :goto_f

    .line 338
    :cond_16c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_16

    :cond_171
    move v0, v2

    .line 396
    goto/16 :goto_f
.end method

.method private checkFile(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x3

    .line 403
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    if-eqz v0, :cond_51

    .line 404
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isDir()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 405
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 408
    :cond_25
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 420
    :goto_29
    return v0

    .line 410
    :cond_2a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isFile()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 411
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 414
    :cond_4c
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_29

    .line 417
    :cond_51
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 420
    :cond_6b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_29
.end method

.method private checkResource(Ljava/lang/String;)Z
    .registers 4

    .line 427
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_10

    .line 430
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_28

    move-result-object v0

    move-object v1, v0

    .line 439
    :goto_9
    if-eqz v1, :cond_26

    const/4 v0, 0x1

    .line 441
    :goto_c
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 439
    return v0

    .line 432
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_20

    .line 434
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    .line 436
    :cond_20
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_28

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    .line 439
    :cond_26
    const/4 v0, 0x0

    goto :goto_c

    .line 441
    :catchall_28
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 442
    throw v0
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 88
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 90
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createFilepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 120
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filepath:Lorg/apache/tools/ant/types/Path;

    .line 122
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public eval()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 264
    :try_start_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->classname:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->resource:Ljava/lang/String;

    if-eqz v1, :cond_7b

    .line 269
    :cond_e
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    if-eqz v1, :cond_16

    .line 270
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    if-eqz v1, :cond_99

    .line 276
    :cond_16
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_2d

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 278
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_87

    .line 280
    :cond_2d
    const-string v1, ""

    .line 281
    :try_start_2f
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-eqz v2, :cond_a5

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " to set property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    :goto_46
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->classname:Ljava/lang/String;

    if-eqz v2, :cond_ab

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Available;->checkClass(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ab

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->classname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V
    :try_end_6a
    .catchall {:try_start_2f .. :try_end_6a} :catchall_87

    .line 289
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v1, :cond_73

    .line 307
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_73
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v1, :cond_7a

    .line 311
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    .line 314
    :cond_7a
    :goto_7a
    return v0

    .line 265
    :cond_7b
    :try_start_7b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 267
    const-string v1, "At least one of (classname|file|resource) is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_87

    .line 306
    :catchall_87
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v1, :cond_91

    .line 307
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_91
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v1, :cond_98

    .line 311
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    .line 313
    :cond_98
    throw v0

    .line 271
    :cond_99
    :try_start_99
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 273
    const-string v1, "The type attribute is only valid when specifying the file attribute."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 284
    :cond_a5
    const-string v2, "available"

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    goto :goto_46

    .line 291
    :cond_ab
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    if-eqz v2, :cond_e9

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Available;->checkFile()Z

    move-result v2

    if-nez v2, :cond_e9

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    if-eqz v3, :cond_c8

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    :cond_c8
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V
    :try_end_d8
    .catchall {:try_start_99 .. :try_end_d8} :catchall_87

    .line 298
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v1, :cond_e1

    .line 307
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_e1
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v1, :cond_7a

    .line 311
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    goto :goto_7a

    .line 300
    :cond_e9
    :try_start_e9
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->resource:Ljava/lang/String;

    if-eqz v2, :cond_11f

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Available;->checkResource(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11f

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->resource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V
    :try_end_10d
    .catchall {:try_start_e9 .. :try_end_10d} :catchall_87

    .line 303
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v1, :cond_116

    .line 307
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_116
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v1, :cond_7a

    .line 311
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 306
    :cond_11f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_128

    .line 307
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_128
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v0, :cond_12f

    .line 311
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    .line 314
    :cond_12f
    const/4 v0, 0x1

    goto/16 :goto_7a
.end method

.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 231
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 236
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    .line 238
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->eval()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_33

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 242
    const-string v1, "DEPRECATED - <available> used to override an existing property.%n  Build file should not reuse the same property name for different values."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 248
    :cond_33
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->value:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_3e

    .line 251
    :cond_3b
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    .line 252
    return-void

    .line 251
    :catchall_3e
    move-exception v0

    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    .line 252
    throw v0

    .line 232
    :cond_42
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "property attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .registers 3

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 163
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->classname:Ljava/lang/String;

    .line 165
    :cond_8
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 78
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 79
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 100
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 101
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 4

    .line 174
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    .line 175
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Available;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setFilepath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->createFilepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 110
    return-void
.end method

.method public setIgnoresystemclasses(Z)V
    .registers 2

    .line 221
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->ignoreSystemclasses:Z

    .line 222
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->resource:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setSearchParents(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->searchParents:Z

    .line 70
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    const-string v0, "DEPRECATED - The setType(String) method has been deprecated. Use setType(Available.FileDir) instead."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 199
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    .line 200
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->setValue(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setType(Lorg/apache/tools/ant/taskdefs/Available$FileDir;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    .line 212
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->value:Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Available;->setValue(Ljava/lang/Object;)V

    .line 153
    return-void
.end method
